within OpalRT.GenUnits.GENROU;
class GENROU_ESST4B_IEEEG1
  parameter Real partType = 1;
  // GENROU Parameters
  parameter Integer IBUS = 100 "Located system bus" annotation(Dialog(tab = "General"));
  parameter String M_ID = "M1" "Machine Identifier" annotation(Dialog(tab = "General"));
  parameter Real P_gen = 1100 "Bus Active Power, MW" annotation(Dialog(tab = "General"));
  parameter Real Q_gen = 342.702 "Bus Reactive Power, MVAR" annotation(Dialog(tab = "General"));
  parameter Real Vt_abs = 1.03 "Bus Voltage Magnitude, p.u." annotation(Dialog(tab = "General"));
  parameter Real Vt_ang = -10.96 "Bus Voltage Angle, deg." annotation(Dialog(tab = "General"));
  parameter Real SB = 1000 "Machine Base Power, MVA" annotation(Dialog(tab = "General"));
  parameter Real fn = 50 "Nominal frequency" annotation(Dialog(tab = "General"));
  parameter Real ZSOURCE_RE = 0 "Machine source impedence" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Tdo_p = 7 "d-axis transient time constant" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Tdo_s = 0.03 "d-axis sub-transient time constant, s" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Tqo_p = 0.7 "q-axis transient time constant, s" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Tqo_s = 0.04 "d-axis sub-transient time constant, s" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real H = 50 "Inertia constant" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real D = 0 "Speed damping" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Xd = 0.2 "d-axis reactance, p.u." annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Xq = 0.19 "q-axis reactance, p.u." annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Xd_p = 0.06 "d-axis transient reactance, p.u." annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Xq_p = 0.06 "q-axis transient reactance, p.u." annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Xd_s = 0.02 "d-axis sub-transient reactance, p.u." annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Xl = 0.03 "Reactance due to the leakage flux which does not cross the air gap, p.u." annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real S1 = 0.4 "saturation function value for 1 p.u. input" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real S12 = 0.8 "saturation function value for 1.2 p.u. input" annotation(Dialog(tab = "GENROU Parameters"));
  // ESST4B Parameters
  parameter Real TR_ex = 0.02 annotation(Dialog(tab = "ESST4B Parameters"));
  parameter Real KPR_ex = 1 annotation(Dialog(tab = "ESST4B Parameters"));
  parameter Real KIR_ex = 0.03 annotation(Dialog(tab = "ESST4B Parameters"));
  parameter Real VRMAX_ex = 10 annotation(Dialog(tab = "ESST4B Parameters"));
  parameter Real VRMIN_ex = -10 annotation(Dialog(tab = "ESST4B Parameters"));
  parameter Real TA_ex = 0.2 annotation(Dialog(tab = "ESST4B Parameters"));
  parameter Real KPM_ex = 0.02 annotation(Dialog(tab = "ESST4B Parameters"));
  parameter Real KIM_ex = 0.02 annotation(Dialog(tab = "ESST4B Parameters"));
  parameter Real VMMAX_ex = 0.02 annotation(Dialog(tab = "ESST4B Parameters"));
  parameter Real VMMIN_ex = 0.02 annotation(Dialog(tab = "ESST4B Parameters"));
  parameter Real KG_ex = 0.02 annotation(Dialog(tab = "ESST4B Parameters"));
  parameter Real KP_ex = 0.02 annotation(Dialog(tab = "ESST4B Parameters"));
  parameter Real KI_ex = 0.02 annotation(Dialog(tab = "ESST4B Parameters"));
  parameter Real VBMAX_ex = 0.02 annotation(Dialog(tab = "ESST4B Parameters"));
  parameter Real KC_ex = 0.02 annotation(Dialog(tab = "ESST4B Parameters"));
  parameter Real XL_ex = 0.02 annotation(Dialog(tab = "ESST4B Parameters"));
  parameter Real THETAP_ex = 0.52 annotation(Dialog(tab = "ESST4B Parameters"));
  //
  // IEEEG1 Parameters
  parameter Real JBUS_tg = 0 "Bus Identifier (NOT USED)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real M_tg = 0 "Machine Identifier (NOT USED)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real K_tg = 15 annotation(Dialog(tab = "IEEEG1"));
  parameter Real T1_tg = 1.5 "(sec)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real T2_tg = 0.3 "(sec)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real T3_tg = 0.02 "(>0)(sec)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real Uo_tg = 0.1 "(pu/sec)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real Uc_tg = -0.5 "(<0)(pu/sec)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real PMAX_tg = 0.5 "(pu on machine MVA rating)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real PMIN_tg = 0 "(pu on machine MVA rating)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real T4_tg = 0.1 "(sec)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real K1_tg = 0.1 annotation(Dialog(tab = "IEEEG1"));
  parameter Real K2_tg = 0.1 annotation(Dialog(tab = "IEEEG1"));
  parameter Real T5_tg = 0.2 "(sec)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real K3_tg = 0.5 annotation(Dialog(tab = "IEEEG1"));
  parameter Real K4_tg = 0.1 annotation(Dialog(tab = "IEEEG1"));
  parameter Real T6_tg = 0.1 "(sec)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real K5_tg = 0.6 annotation(Dialog(tab = "IEEEG1"));
  parameter Real K6_tg = 0.2 annotation(Dialog(tab = "IEEEG1"));
  parameter Real T7_tg = 0.3 "(sec)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real K7_tg = 0.2 annotation(Dialog(tab = "IEEEG1"));
  parameter Real K8_tg = 0.6 annotation(Dialog(tab = "IEEEG1"));
  //
  OpalRT.Electrical.Machine.SynchronousMachine.GENROU genrou1(IBUS = IBUS, ID = M_ID, P_gen = P_gen, Q_gen = Q_gen, Vt_abs = Vt_abs, Vt_ang = Vt_ang, SB = SB, fn = fn, ZSOURCE_RE = ZSOURCE_RE, Tdo_p = Tdo_p, Tdo_s = Tdo_s, Tqo_p = Tqo_p, Tqo_s = Tqo_s, H = H, D = D, Xd = Xd, Xq = Xq, Xd_p = Xd_p, Xq_p = Xq_p, Xd_s = Xd_s, Xl = Xl, S1 = S1, S12 = S12) annotation(Placement(visible = true, transformation(origin = {-60, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpalRT.NonElectrical.Connector.PwPin bus0 annotation(Placement(visible = true, transformation(origin = {-54, 22}, extent = {{-5, -5}, {5, 5}}, rotation = 0), iconTransformation(origin = {100, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin TRIP annotation(Placement(visible = true, transformation(origin = {-60, 80}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dGREF annotation(Placement(visible = true, transformation(origin = {-131, 29}, extent = {{-5, -5}, {5, 5}}, rotation = 0), iconTransformation(origin = {-140, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dVREF annotation(Placement(visible = true, transformation(origin = {-150, 44}, extent = {{-5, -5}, {5, 5}}, rotation = 0), iconTransformation(origin = {-140, 100}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  OpalRT.Electrical.Control.Excitation.ESST4B esst4b1(TR = TR_ex, KPR = KPR_ex, KIR = KIR_ex, VRMAX = VRMAX_ex, VRMIN = VRMIN_ex, TA = TA_ex, KPM = KPM_ex, KIM = KIM_ex, VMMAX = VMMAX_ex, VMMIN = VMMIN_ex, KG = KG_ex, KP = KP_ex, KI = KI_ex, VBMAX = VBMAX_ex, KC = KC_ex, XL = XL_ex, THETAP = THETAP_ex) annotation(Placement(visible = true, transformation(origin = {-92, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpalRT.Electrical.Control.TurbineGovernor.IEEEG1 ieeeg11(ID = M_ID, K = K_tg, T1 = T1_tg, T2 = T2_tg, T3 = T3_tg, Uo = Uo_tg, Uc = Uc_tg, PMAX = PMAX_tg, PMIN = PMIN_tg, T4 = T4_tg, K1 = K1_tg, K2 = K2_tg, T5 = T5_tg, K3 = K3_tg, K4 = K4_tg, T6 = T6_tg, K5 = K5_tg, K6 = K6_tg, T7 = T7_tg, K7 = K7_tg, K8 = K8_tg, JBUS = 0) annotation(Placement(visible = true, transformation(origin = {-90, 28}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = 0)));
  parameter Real noVOEL(fixed = false, start = 1);
  parameter Real noVUEL(fixed = false, start = 1);
  Modelica.Blocks.Sources.Constant constant1(k = noVOEL) annotation(Placement(visible = true, transformation(origin = {-128, 76}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-128, 60}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant constant2(k = noVUEL) annotation(Placement(visible = true, transformation(origin = {-128, 92}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
initial equation
  noVOEL = Modelica.Constants.inf;
  noVUEL = 0;
equation
  connect(genrou1.PMECH0, ieeeg11.PMECH0) annotation(Line(points = {{-70, 32}, {-82.1154, 32}, {-82.1154, 31.5034}, {-82.1154, 31.5034}}, color = {0, 0, 127}));
  connect(ieeeg11.PMECH, genrou1.PMECH) annotation(Line(points = {{-82.5, 34}, {-70.4953, 34}, {-70.4953, 34.0856}, {-70.4953, 34.0856}}, color = {0, 0, 127}));
  connect(esst4b1.VI, genrou1.VI) annotation(Line(points = {{-82, 54}, {-42.5613, 54}, {-42.5613, 39.7976}, {-49.3324, 39.7976}, {-49.3324, 39.7976}}, color = {0, 0, 127}));
  connect(genrou1.VI, ieeeg11.VI) annotation(Line(points = {{-50, 40}, {-42.4231, 40}, {-42.4231, 5.80381}, {-104.607, 5.80381}, {-104.607, 27.9136}, {-97.2829, 27.9136}, {-97.2829, 27.9136}}, color = {0, 0, 127}));
  connect(genrou1.MBASE, ieeeg11.MBASE) annotation(Line(points = {{-50, 34.6}, {-44.4959, 34.6}, {-44.4959, 8.8439}, {-101.843, 8.8439}, {-101.843, 24.5971}, {-97.4211, 24.5971}, {-97.4211, 24.5971}}, color = {0, 0, 127}));
  connect(dVREF, esst4b1.dVREF) annotation(Line(points = {{-150, 44}, {-140.259, 44}, {-140.259, 42.1467}, {-101.981, 42.1467}, {-101.981, 42.1467}}));
  connect(dGREF, ieeeg11.dGREF) annotation(Line(points = {{-131, 29}, {-109.029, 29}, {-109.029, 33.8556}, {-97.9738, 33.8556}, {-97.9738, 33.8556}}));
  connect(TRIP, genrou1.TRIP) annotation(Line(points = {{-60, 80}, {-59.9089, 80}, {-59.9089, 50}, {-60, 50}}));
  connect(bus0, genrou1.p) annotation(Line(points = {{-54, 22}, {-60, 22}, {-60, 30}}));
  connect(esst4b1.EFD0, genrou1.EFD0) annotation(Line(points = {{-82, 40}, {-70.2, 40}}, color = {0, 0, 127}));
  connect(esst4b1.EFD, genrou1.EFD) annotation(Line(points = {{-82, 42}, {-76, 42}, {-76, 42.8}, {-70, 42.8}}, color = {0, 0, 127}));
  connect(esst4b1.ETERM0, genrou1.ETERM0) annotation(Line(points = {{-82, 44}, {-76, 44}, {-76, 45}, {-70.2, 45}}, color = {0, 0, 127}));
  connect(esst4b1.EX_AUX, genrou1.EX_AUX) annotation(Line(points = {{-82, 46.6}, {-76, 46.6}, {-76, 48}, {-70.2, 48}}, color = {0, 0, 127}));
  connect(genrou1.SLIP, ieeeg11.SLIP) annotation(Line(points = {{-50, 32}, {-46, 32}, {-46, 12}, {-100, 12}, {-100, 22}, {-97.5, 22}}, color = {0, 0, 127}));
  connect(esst4b1.XADIFD, genrou1.XADIFD) annotation(Line(points = {{-102, 53}, {-104, 53}, {-104, 62}, {-46, 62}, {-46, 45}, {-50, 45}}, color = {0, 0, 127}));
  connect(esst4b1.VOTHSG, const.y) annotation(Line(points = {{-102, 44.4}, {-120, 44.4}, {-120, 60}, {-122.5, 60}}, color = {0, 0, 127}));
  connect(esst4b1.VOEL, constant1.y) annotation(Line(points = {{-102, 47.2}, {-108, 47.2}, {-108, 48}, {-118, 48}, {-118, 76}, {-122.5, 76}}, color = {0, 0, 127}));
  connect(constant2.y, esst4b1.VUEL) annotation(Line(points = {{-122.5, 92}, {-112, 92}, {-112, 50}, {-102, 50}}, color = {0, 0, 127}));
  annotation(Diagram(coordinateSystem(extent = {{-200, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 20, Tolerance = 1e-06, Interval = 0.01), Icon(coordinateSystem(extent = {{-200, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Rectangle(origin = {-50, 0}, extent = {{-149.774, 100}, {149.774, -100}}), Text(origin = {-60.16, 5.76}, extent = {{-116.79, 25.76}, {128.56, -28.59}}, textString = "GENROU_ESST4B_IEEEG1"), Text(origin = {77.128, -86.6058}, extent = {{-39.434, 24.942}, {7.19, -8.82}}, textString = "PIN")}));
end GENROU_ESST4B_IEEEG1;