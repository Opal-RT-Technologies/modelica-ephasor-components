within OpalRT.GenUnits.GENROU;
class GENROU_EXST1
  parameter Real partType = 1;
  // GENROU Parameters
  parameter Integer IBUS = 100 "Located system bus" annotation(Dialog(tab = "General"));
  parameter String M_ID = "M1" "Machine Identifier" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real P_gen = 900 "Bus Active Power, MW" annotation(Dialog(tab = "General"));
  parameter Real Q_gen = 200 "Bus Reactive Power, MVAR" annotation(Dialog(tab = "General"));
  parameter Real Vt_abs = 1.03 "Bus Voltage Magnitude, p.u." annotation(Dialog(tab = "General"));
  parameter Real Vt_ang = -10.96 "Bus Voltage Angle, deg." annotation(Dialog(tab = "General"));
  parameter Real SB = 1000 "Machine Base Power, MVA" annotation(Dialog(tab = "General"));
  parameter Real fn = 50 "Nominal frequency" annotation(Dialog(tab = "General"));
  parameter Real ZSOURCE_RE = 0 "Machine source impedence" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Tdo_p = 7 "d-axis transient time constant" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Tdo_s = 0.3 "d-axis sub-transient time constant, s" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Tqo_p = 0.04 "q-axis transient time constant, s" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Tqo_s = 0.4 "d-axis sub-transient time constant, s" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real H = 2.6 "Inertia constant" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real D = 0 "Speed damping" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Xd = 0.67 "d-axis reactance, p.u." annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Xq = 0.62 "q-axis reactance, p.u." annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Xd_p = 0.3 "d-axis transient reactance, p.u." annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Xq_p = 0.3 "q-axis transient reactance, p.u." annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Xd_s = 0.01 "d-axis sub-transient reactance, p.u." annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Xl = 0.04 "Reactance due to the leakage flux which does not cross the air gap, p.u." annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real S1 = 0.1 "saturation function value for 1 p.u. input" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real S12 = 0.2 "saturation function value for 1.2 p.u. input" annotation(Dialog(tab = "GENROU Parameters"));
  // EXST1 Parameters
  parameter String EX_ID = M_ID "Machine Identifier" annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real TR_ex = 0.02 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real VIMAX_ex = 1 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real VIMIN_ex = -1 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real TC_ex = 1 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real TB_ex = 1 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real KA_ex = 100 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real TA_ex = 0.2 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real VRMAX_ex = 9 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real VRMIN_ex = -9 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real KC_ex = 0.01 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real KF_ex = 0.3 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real TF_ex = 0.1 annotation(Dialog(tab = "EXST1 Parameters"));
  Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin={-138,30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpalRT.Electrical.Machine.SynchronousMachine.GENROU genrou1(IBUS = IBUS, ID = M_ID, P_gen = P_gen, Q_gen = Q_gen, Vt_abs = Vt_abs, Vt_ang = Vt_ang, SB = SB, fn = fn, ZSOURCE_RE = ZSOURCE_RE, Tdo_p = Tdo_p, Tdo_s = Tdo_s, Tqo_p = Tqo_p, Tqo_s = Tqo_s, H = H, D = D, Xd = Xd, Xq = Xq, Xd_p = Xd_p, Xq_p = Xq_p, Xd_s = Xd_s, Xl = Xl, S1 = S1, S12 = S12) annotation(Placement(visible = true, transformation(origin={-58,32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpalRT.Electrical.Control.Excitation.EXST1 exst11(ID = EX_ID, TR = TR_ex, VIMIN = VIMIN_ex, VIMAX = VIMAX_ex, TC = TC_ex, TB = TB_ex, KA = KA_ex, TA = TA_ex, VRMAX = VRMAX_ex, VRMIN = VRMIN_ex, KC = KC_ex, KF = KF_ex, TF = TF_ex) annotation(Placement(visible = true, transformation(origin = {-100, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpalRT.NonElectrical.Connector.PwPin bus0 annotation(Placement(visible = true, transformation(origin = {0, 20}, extent = {{-5, -5}, {5, 5}}, rotation = 0), iconTransformation(origin = {100, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin TRIP annotation(Placement(visible = true, transformation(origin={-198,80}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin={-198,80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dVREF annotation(Placement(visible = true, transformation(origin = {-140, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-180, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(genrou1.PMECH0, genrou1.PMECH) annotation (Line(points = {{-68,24},{
          -71.5262,24},{-71.5262,26},{-68,26}}, color = {0,0,127}));
  connect(TRIP, genrou1.TRIP) annotation(Line(points = {{-198,80},{-59.4533,80},
          {-59.4533,42},{-58,42}}));
  connect(exst11.dVREF, dVREF) annotation(Line(points = {{-110, 34}, {-113.413, 34},
          {-113.413, 0.218103}, {-138.059, 0.218103}, {-138.059, 0.218103}}, color = {0, 0, 127}));
  connect(const.y, exst11.VUEL) annotation (Line(points = {{-127,30},{-118,30},
          {-118,42},{-110,42}}, color = {0,0,127}));
  connect(exst11.VOEL, exst11.VUEL) annotation (Line(points = {{-110,39.2},{
          -114,39.2},{-114,40},{-118,40},{-118,42},{-110,42}}, color = {0,0,127}));
  connect(exst11.VOTHSG, exst11.VUEL) annotation (Line(points = {{-110,36.4},{
          -114,36.4},{-114,36},{-118,36},{-118,42},{-110,42}}, color = {0,0,127}));
  connect(exst11.EX_AUX, genrou1.EX_AUX) annotation (Line(points = {{-90,38.6},
          {-80,38.6},{-80,40},{-68.2,40}}, color = {0,0,127}));
  connect(exst11.ETERM0, genrou1.ETERM0) annotation (Line(points = {{-90,36},{
          -80,36},{-80,37},{-68.2,37}}, color = {0,0,127}));
  connect(exst11.EFD, genrou1.EFD) annotation (Line(points = {{-90,34},{-80,34},
          {-80,34.8},{-68,34.8}}, color = {0,0,127}));
  connect(exst11.EFD0, genrou1.EFD0)
    annotation (Line(points = {{-90,32},{-68.2,32}}, color={0,0,127}));
  connect(bus0, genrou1.p)
    annotation (Line(points = {{0,20},{-58,20},{-58,22}}, color={0,0,0}));
  connect(genrou1.VI, exst11.VI) annotation(Line(points = {{-48, 32}, {-37.7892, 32},
        {-37.7892, 45.7584}, {-89.2031, 45.7584}, {-89.2031, 45.7584}}, color = {0, 0, 127}));
  connect(exst11.XADIFD, genrou1.XADIFD) annotation (Line(points = {{-110,45},{
          -114,45},{-114,56},{-44,56},{-44,37},{-48,37}}, color = {0,0,127}));
  annotation(Diagram(coordinateSystem(extent = {{-200, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-200, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={ Rectangle(origin = {-50, 0}, extent = {{-149.774, 100}, {149.774, -100}}), Text(origin = {-60.1613, 5.75641}, extent = {{-72.35, 23.36}, {72.35, -23.36}}, textString = "GENROU_EXST1"), Text(origin = {77.128, -86.6058}, extent = {{-39.434, 24.942}, {7.19, -8.82}}, textString = "PIN")}), experiment(StartTime = 0, StopTime = 20, Tolerance = 1e-06, Interval = 0.01));
end GENROU_EXST1;
