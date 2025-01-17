within OpalRT.GenUnits.GENROU;
class GENROU_IEEET3_GAST
  parameter Real partType = 1;
  // GENROU Parameters
  parameter Integer IBUS = 100 "Located system bus";
  parameter String ID = "M1" "Machine Identifier" annotation(Dialog(tab = "GENROU"));
  parameter Real P_gen = 1100 "Bus Active Power, MW";
  parameter Real Q_gen = 342.702 "Bus Reactive Power, MVAR";
  parameter Real Vt_abs = 1.03 "Bus Voltage Magnitude, p.u.";
  parameter Real Vt_ang = -10.96 "Bus Voltage Angle, deg.";
  parameter Real SB = 1000 "Machine Base Power, MVA";
  parameter Real fn = 50 "Nominal frequency";
  parameter Real ZSOURCE_RE = 0 "Machine source impedence" annotation(Dialog(tab = "GENROU"));
  parameter Real Tdo_p = 7 "d-axis transient time constant" annotation(Dialog(tab = "GENROU"));
  parameter Real Tdo_s = 0.03 "d-axis sub-transient time constant, s" annotation(Dialog(tab = "GENROU"));
  parameter Real Tqo_p = 0.7 "q-axis transient time constant, s" annotation(Dialog(tab = "GENROU"));
  parameter Real Tqo_s = 0.04 "d-axis sub-transient time constant, s" annotation(Dialog(tab = "GENROU"));
  parameter Real H = 50 "Inertia constant" annotation(Dialog(tab = "GENROU"));
  parameter Real D = 0 "Speed damping" annotation(Dialog(tab = "GENROU"));
  parameter Real Xd = 0.2 "d-axis reactance, p.u." annotation(Dialog(tab = "GENROU"));
  parameter Real Xq = 0.19 "q-axis reactance, p.u." annotation(Dialog(tab = "GENROU"));
  parameter Real Xd_p = 0.06 "d-axis transient reactance, p.u." annotation(Dialog(tab = "GENROU"));
  parameter Real Xq_p = 0.06 "q-axis transient reactance, p.u." annotation(Dialog(tab = "GENROU"));
  parameter Real Xd_s = 0.02 "d-axis sub-transient reactance, p.u." annotation(Dialog(tab = "GENROU"));
  parameter Real Xl = 0.03 "Reactance due to the leakage flux which does not cross the air gap, p.u." annotation(Dialog(tab = "GENROU"));
  parameter Real S1 = 0.4 "saturation function value for 1 p.u. input" annotation(Dialog(tab = "GENROU"));
  parameter Real S12 = 0.8 "saturation function value for 1.2 p.u. input" annotation(Dialog(tab = "GENROU"));
  // IEEET3 Parameters
  parameter Real TR_ex = 0.025 "(sec) regulator input filter time constant" annotation(Dialog(tab = "IEEET3"));
  parameter Real KA_ex = 10 "(pu) voltage regulator gain" annotation(Dialog(tab = "IEEET3"));
  parameter Real TA_ex = 0.02 "(sec) regulator time constant" annotation(Dialog(tab = "IEEET3"));
  parameter Real VRMAX_ex = 10 "(pu) Voltage regulator output maximum limit" annotation(Dialog(tab = "IEEET3"));
  parameter Real VRMIN_ex = -10 "(pu) Voltage regulator output minimum limit" annotation(Dialog(tab = "IEEET3"));
  parameter Real TE_ex = 0.35 "Exciter time constant, integration rate associated with exciter control (>0) (sec)" annotation(Dialog(tab = "IEEET3"));
  parameter Real KF_ex = 0.03 "Excitation control system stabilizer gains" annotation(Dialog(tab = "IEEET3"));
  parameter Real TF_ex = 0.4 "Excitation control system stabilizer time constant (sec)" annotation(Dialog(tab = "IEEET3"));
  parameter Real KP_ex = 1 "Potential circuit gain coefficient" annotation(Dialog(tab = "IEEET3"));
  parameter Real KI_ex = 0.02 "Potential circuit gain coefficient" annotation(Dialog(tab = "IEEET3"));
  parameter Real VBMAX_ex = 10 "(pu) regulator output maximum limit" annotation(Dialog(tab = "IEEET3"));
  parameter Real KE_ex = 0.5 "Exciter constant related to self-excited field" annotation(Dialog(tab = "IEEET3"));
  // GAST Parameters
  parameter Real R_tg = 0.047 "Speed droop" annotation(Dialog(tab = "GAST"));
  parameter Real T1_tg = 0.4 "(>0) (sec)" annotation(Dialog(tab = "GAST"));
  parameter Real T2_tg = 0.1 "(>0) (sec)" annotation(Dialog(tab = "GAST"));
  parameter Real T3_tg = 3 "(>0) (sec)" annotation(Dialog(tab = "GAST"));
  parameter Real AT_tg = 0.85 "Ambient temperature load limit" annotation(Dialog(tab = "GAST"));
  parameter Real KT_tg = 2 annotation(Dialog(tab = "GAST"));
  parameter Real VMAX_tg = 0.85 annotation(Dialog(tab = "GAST"));
  parameter Real VMIN_tg = 0 annotation(Dialog(tab = "GAST"));
  parameter Real DTURB_tg = 0 annotation(Dialog(tab = "GAST"));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dGREF annotation(Placement(visible = true, transformation(origin = {-160, -8}, extent = {{-9.5, -9.5}, {9.5, 9.5}}, rotation = 0), iconTransformation(origin = {98, 70}, extent = {{12.5, 12.5}, {-12.5, -12.5}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dVREF annotation(Placement(visible = true, transformation(origin = {-158, 20}, extent = {{-9.25, -9.25}, {9.25, 9.25}}, rotation = 0), iconTransformation(origin = {-196, -72}, extent = {{-13.25, -13.25}, {13.25, 13.25}}, rotation = 0)));
  OpalRT.Electrical.Machine.SynchronousMachine.GENROU genrou1(P_gen = P_gen, Q_gen = Q_gen, Vt_abs = Vt_abs, Vt_ang = Vt_ang, SB = SB, fn = fn, ZSOURCE_RE = ZSOURCE_RE, Tdo_p = Tdo_p, Tdo_s = Tdo_s, Tqo_p = Tqo_p, Tqo_s = Tqo_s, H = H, D = D, Xd = Xd, Xq = Xq, Xd_p = Xd_p, Xq_p = Xq_p, Xd_s = Xd_s, Xl = Xl, S1 = S1, S12 = S12) annotation(Placement(visible = true, transformation(origin = {15.25, -0.75}, extent = {{-26.75, -26.75}, {26.75, 26.75}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin TRIP annotation(Placement(visible = true, transformation(origin = {14, 62}, extent = {{-11.25, -11.25}, {11.25, 11.25}}, rotation = 0), iconTransformation(origin = {-196, 74}, extent = {{-13.25, -13.25}, {13.25, 13.25}}, rotation = 0)));
  OpalRT.NonElectrical.Connector.PwPin bus0 annotation(Placement(visible = true, transformation(origin = {16, -55}, extent = {{-11.75, -11.75}, {11.75, 11.75}}, rotation = 0), iconTransformation(origin = {101, -71}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  OpalRT.Electrical.Control.Excitation.IEEET3 ieeet31(TR = TR_ex, KA = KA_ex, TA = TA_ex, VRMAX = VRMAX_ex, VRMIN = VRMIN_ex, TE = TE_ex, KF = KF_ex, TF = TF_ex, KP = KP_ex, KI = KI_ex, VBMAX = VBMAX_ex, KE = KE_ex) annotation(Placement(visible = true, transformation(origin = {-58, 22}, extent = {{-27.25, -27.25}, {27.25, 27.25}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant constant2(k = 0) annotation(Placement(visible = true, transformation(origin = {-114, 40}, extent = {{-7.75, -7.75}, {7.75, 7.75}}, rotation = 0)));
  OpalRT.Electrical.Control.TurbineGovernor.GAST gast1(R = R_tg, T1 = T1_tg, T2 = T2_tg, T3 = T3_tg, AT = AT_tg, KT = KT_tg, VMAX = VMAX_tg, VMIN = VMIN_tg, DTURB = DTURB_tg) annotation(Placement(visible = true, transformation(origin = {-60, -40}, extent = {{-27.375, -27.375}, {27.375, 27.375}}, rotation = 0)));
equation
  connect(ieeet31.VI, genrou1.VI) annotation(Line(points = {{-30.75, 38.35}, {71.2446, 38.35}, {71.2446, -0.429185}, {42.0601, -0.429185}, {42.0601, -0.429185}}, color = {0, 0, 127}));
  connect(genrou1.MBASE, gast1.MBASE) annotation(Line(points = {{42, -15.195}, {60.9442, -15.195}, {60.9442, -81.5451}, {-100.858, -81.5451}, {-100.858, -51.073}, {-87.5536, -51.073}, {-87.5536, -51.073}}, color = {0, 0, 127}));
  connect(gast1.VI, genrou1.VI) annotation(Line(points = {{-87.375, -40}, {-107.725, -40}, {-107.725, -86.2661}, {71.2446, -86.2661}, {71.2446, -0.429185}, {42.9185, -0.429185}, {42.9185, -0.429185}}, color = {0, 0, 127}));
  connect(dGREF, gast1.dGREF) annotation(Line(points = {{-160, -8}, {-120.172, -8}, {-120.172, -18.0258}, {-87.1245, -18.0258}, {-87.1245, -18.0258}}));
  connect(dVREF, ieeet31.dVREF) annotation(Line(points = {{-158, 20}, {-127.468, 20}, {-127.468, 4.72103}, {-86.6953, 4.72103}, {-86.6953, 4.72103}}));
  connect(genrou1.SLIP, gast1.SLIP) annotation(Line(points = {{42, -22.15}, {50.7042, -22.15}, {50.7042, -75.5869}, {-96.2441, -75.5869}, {-96.2441, -61.9718}, {-88.7324, -61.9718}, {-88.7324, -61.9718}}, color = {0, 0, 127}));
  connect(genrou1.PMECH0, gast1.PMECH0) annotation(Line(points = {{-11.5, -22.15}, {-22.0657, -22.15}, {-22.0657, -23.9437}, {-30.5164, -23.9437}, {-30.5164, -23.9437}}, color = {0, 0, 127}));
  connect(gast1.PMECH, genrou1.PMECH) annotation(Line(points = {{-32.625, -18.1}, {-18.3099, -18.1}, {-18.3099, -16.9014}, {-12.6761, -16.9014}, {-12.6761, -16.9014}}, color = {0, 0, 127}));
  connect(constant2.y, ieeet31.VUEL) annotation(Line(points = {{-105.475, 40}, {-94.5133, 40}, {-94.5133, 27.2566}, {-87.0796, 27.2566}, {-87.0796, 27.2566}}, color = {0, 0, 127}));
  connect(constant2.y, ieeet31.VOEL) annotation(Line(points = {{-105.475, 40}, {-94.5133, 40}, {-94.5133, 19.469}, {-86.3717, 19.469}, {-86.3717, 19.469}}, color = {0, 0, 127}));
  connect(constant2.y, ieeet31.VOTHSG) annotation(Line(points = {{-105.475, 40}, {-94.5133, 40}, {-94.5133, 11.6814}, {-86.3717, 11.6814}, {-86.3717, 11.6814}}, color = {0, 0, 127}));
  connect(genrou1.XADIFD, ieeet31.XADIFD) annotation(Line(points = {{42, 12.625}, {54.1593, 12.625}, {54.1593, 78.2301}, {-93.0973, 78.2301}, {-93.0973, 35.3982}, {-86.3717, 35.3982}, {-86.3717, 35.3982}}, color = {0, 0, 127}));
  connect(genrou1.EX_AUX, ieeet31.EX_AUX) annotation(Line(points = {{-12.035, 20.65}, {-16.9912, 20.65}, {-16.9912, 17.6991}, {-28.3186, 17.6991}, {-28.3186, 17.6991}}, color = {0, 0, 127}));
  connect(genrou1.ETERM0, ieeet31.ETERM0) annotation(Line(points = {{-12.035, 12.625}, {-20.531, 12.625}, {-20.531, 10.2655}, {-28.6726, 10.2655}, {-28.6726, 10.2655}}, color = {0, 0, 127}));
  connect(ieeet31.EFD, genrou1.EFD) annotation(Line(points = {{-30.75, 5.65}, {-12.7434, 5.65}, {-12.7434, 6.72566}, {-12.7434, 6.72566}}, color = {0, 0, 127}));
  connect(genrou1.EFD0, ieeet31.EFD0) annotation(Line(points = {{-12.035, -0.75}, {-29.7345, -0.75}, {-29.7345, 0}, {-29.7345, 0}}, color = {0, 0, 127}));
  connect(TRIP, genrou1.TRIP) annotation(Line(points = {{14, 62}, {15.493, 62}, {15.493, 26.7606}, {15.493, 26.7606}}));
  connect(genrou1.p, bus0) annotation(Line(points = {{15.25, -27.5}, {15.9624, -27.5}, {16, -54}, {16, -55}}));
  annotation(Diagram(coordinateSystem(extent = {{-200, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 20, Tolerance = 1e-06, Interval = 0.01), Icon(coordinateSystem(extent = {{-200, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Text(origin = {-75.7603, 24.371}, extent = {{-116.79, 25.76}, {165.508, -49.6901}}, textString = "GENROU_IEEET3_GAST"), Text(origin = {83.258, -83.7962}, extent = {{-39.434, 24.942}, {4.12501, 0.119567}}, textString = "PIN"), Text(origin = {-154.782, 67.94}, extent = {{-32.95, 18.39}, {18.1359, -4.59753}}, textString = "TRIP"), Text(origin = {-152.866, -71.1288}, extent = {{-25.16, 14.43}, {28.7358, -16.7287}}, textString = "dVREF"), Text(origin = {52.1046, 72.2783}, extent = {{-25.8, 17.37}, {30.3975, -19.9242}}, textString = "dGREF"), Rectangle(origin = {-49.8062, 0.383124}, extent = {{-147.631, 97.1859}, {147.631, -97.6967}})}));
end GENROU_IEEET3_GAST;
