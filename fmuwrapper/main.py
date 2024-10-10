import argparse
from fmu_builder import FmuBuilder
from modelica_parser import ModelicaParser
import os
import pathlib


moscript_load_dependencies = '''echo(false);
exit_on_error := {exit_on_error};
print("[OpenModelica] MODELICAPATH: " + getModelicaPath() + "\\n");

print("[OpenModelica] Loading Modelica library" + "\\n");
success := loadModel(Modelica);
if not success then
    print("[OpenModelica] " + getErrorString() + "\\n");
    if exit_on_error then
        exit(1);
    end if;
end if;

print("[OpenModelica] Loading OpalRT.NonElectrical.PwPin model" + "\\n");
success := loadModel(OpalRT.NonElectrical.PwPin); // workaround: with older OM versions, the PwPin is not automatically loaded for some reason
if not success then
    print("[OpenModelica] " + getErrorString() + "\\n");
    if exit_on_error then
        exit(1);
    end if;
end if;

component_list := {component_list}
nb_components := size(component_list, 1);

'''

moscript_format_build = '''// buildModelFMU for each components
for i in 1:nb_components loop
    print("[OpenModelica] Building " + component_list[i] + ".fmu" + "\\n");
    resultingFile := buildModelFMU(stringTypeName(component_list[i]), version="1.0", fmuType = "me", fileNamePrefix = component_list[i]);

    if Modelica.Utilities.Strings.isEmpty(resultingFile) then
        print("[OpenModelica] " + getErrorString() + "\\n");
        print("[OpenModelica] Build failed for " + component_list[i] + "\\n");
        if exit_on_error then
            print("[OpenModelica] Exiting..." + "\\n");
            exit(1);
        end if;
    else
       print("[OpenModelica] Successfully generated " + resultingFile + "\\n");
    end if;
end for;

'''

moscript_format_load_model = '''// checkModel for each components
for i in 1:nb_components loop
    results := checkModel(stringTypeName(component_list[i]));
    if not Modelica.Utilities.Strings.isEmpty(results) then
        print("[OpenModelica] checkModel for " + component_list[i] + " results:\\n" + results + "\\n");
    else
        print("[OpenModelica] checkModel for " + component_list[i] + " results: Failed" + "\\n");
    end if;

    print("\\n");
end for;
'''


def build_modelica_path(path):
    if ';' in path:
        windows_path = path.split(';')
        path = ';'.join([pathlib.PureWindowsPath(entry).as_posix() for entry in windows_path])
    elif ':' in path:
        linux_path = path.split(':')
        path = ':'.join([pathlib.PureWindowsPath(entry).as_posix() for entry in linux_path])
    else:
        path = pathlib.PureWindowsPath(path).as_posix()

    return f'"{path}"'


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('--no-build-fmu', action='store_true', help='skip build fmu section')
    parser.add_argument('--whitelist', type=str, help='coma separated component list', default="")
    parser.add_argument('--blacklist', type=str, help='coma separated component list', default="")
    parser.add_argument('--no-exit-on-error', action='store_true', help='output directory')
    parser.add_argument('--force', action='store_true', help='output directory')
    parser.add_argument('build_dir', help='output directory')

    args = parser.parse_args()

    if not os.path.exists(args.build_dir):
        os.makedirs(args.build_dir)

    component_dir = pathlib.Path(os.path.join(os.path.dirname(__file__), '..', 'OpalRT', 'GenUnits'))
    blacklist = []
    for element in args.blacklist:
        blacklist += list(filter(None, element.split(',')))

    component_list = list(filter(None, args.whitelist.split(',')))
    build_dir = pathlib.Path(os.path.join(args.build_dir))

    for mo_file in build_dir.rglob("*.mo"):
        os.remove(mo_file)

    filtered_components = list()

    for component_file in component_dir.rglob("*.mo"):
        component_name = os.path.basename(component_file).strip(".mo")
        if component_name == "package":
            continue

        if len(component_list) and component_name not in component_list:
            continue

        if not len(component_list) and component_name in blacklist:
            continue

        genunit_lines = ModelicaParser.extract_class(component_file, component_name)
        builder = FmuBuilder(genunit_lines)

        with open(os.path.join(args.build_dir, f'{component_name}.mo'), 'w') as component_mo:
            component_mo.writelines(builder.build())

        filtered_components.append(component_name)

    mos_component_list = "{\n"
    for component in filtered_components:
        mos_component_list += f'    "{component}",\n'
    mos_component_list = mos_component_list[:-2]
    mos_component_list += "\n};"

    with open(os.path.join(args.build_dir, 'build.mos'), 'w') as mos_script:
        mos_script.write(moscript_load_dependencies.format(**{
            'exit_on_error': "false" if args.no_exit_on_error else "true",
            'component_list': mos_component_list
        }))

        if args.no_build_fmu:
            mos_script.write(moscript_format_load_model)
        else:
            mos_script.write(moscript_format_build)
