within OpalRT.GenUnits.GENSAL;
class GENSAL_IEEET2_IEEEG1
  parameter Real partType = 1;
  // GENSAL Parameters
  parameter Integer IBUS = 100 "Located system bus";
  parameter String ID = "M1" "Machine Identifier";
  parameter Real P_gen = 1100 "Bus Active Power, MW";
  parameter Real Q_gen = 342.702 "Bus Reactive Power, MVAR";
  parameter Real Vt_abs = 1.03 "Bus Voltage Magnitude, p.u.";
  parameter Real Vt_ang = -10.96 "Bus Voltage Angle, deg.";
  parameter Real SB = 1000 "Machine Base Power, MVA";
  parameter Real fn = 50 "Nominal frequency";
  parameter Real ZSOURCE_RE = 0 "Machine source impedence" annotation(Dialog(tab = "GENSAL"));
  parameter Real Tdo_p = 7 "d-axis transient time constant" annotation(Dialog(tab = "GENSAL"));
  parameter Real Tdo_s = 0.03 "d-axis sub-transient time constant, s" annotation(Dialog(tab = "GENSAL"));
  parameter Real Tqo_s = 0.04 "d-axis sub-transient time constant, s" annotation(Dialog(tab = "GENSAL"));
  parameter Real H = 50 "Inertia constant" annotation(Dialog(tab = "GENSAL"));
  parameter Real D = 0 "Speed damping" annotation(Dialog(tab = "GENSAL"));
  parameter Real Xd = 0.2 "d-axis reactance, p.u." annotation(Dialog(tab = "GENSAL"));
  parameter Real Xq = 0.19 "q-axis reactance, p.u." annotation(Dialog(tab = "GENSAL"));
  parameter Real Xd_p = 0.06 "d-axis transient reactance, p.u." annotation(Dialog(tab = "GENSAL"));
  parameter Real Xd_s = 0.02 "d-axis sub-transient reactance, p.u." annotation(Dialog(tab = "GENSAL"));
  parameter Real Xl = 0.03 "Reactance due to the leakage flux which does not cross the air gap, p.u." annotation(Dialog(tab = "GENSAL"));
  parameter Real S1 = 0.4 "saturation function value for 1 p.u. input" annotation(Dialog(tab = "GENSAL"));
  parameter Real S12 = 0.8 "saturation function value for 1.2 p.u. input" annotation(Dialog(tab = "GENSAL"));
  // IEEET2 Parameters
  parameter Real TR_ex = 0.025 "(sec)" annotation(Dialog(tab = "IEEET2"));
  parameter Real KA_ex = 98 annotation(Dialog(tab = "IEEET2"));
  parameter Real TA_ex = 0.2 "(sec)" annotation(Dialog(tab = "IEEET2"));
  parameter Real VRMAX_ex = 9 "or zero" annotation(Dialog(tab = "IEEET2"));
  parameter Real VRMIN_ex = -5 annotation(Dialog(tab = "IEEET2"));
  parameter Real KE_ex = 0.5 "or zero" annotation(Dialog(tab = "IEEET2"));
  parameter Real TE_ex = 0.35 "(>0) (sec)" annotation(Dialog(tab = "IEEET2"));
  parameter Real KF_ex = 0.03 annotation(Dialog(tab = "IEEET2"));
  parameter Real TF1_ex = 0.4 "(>0) (sec)" annotation(Dialog(tab = "IEEET2"));
  parameter Real TF2_ex = 0.4 "(>0) (sec)" annotation(Dialog(tab = "IEEET2"));
  parameter Real E1_ex = 4 annotation(Dialog(tab = "IEEET2"));
  parameter Real SE_E1_ex = 0.4 annotation(Dialog(tab = "IEEET2"));
  parameter Real E2_ex = 5 annotation(Dialog(tab = "IEEET2"));
  parameter Real SE_E2_ex = 0.5 annotation(Dialog(tab = "IEEET2"));
  // IEEEG1 Parameters
  parameter Real JBUS_tg = 0 "Bus Identifier (NOT USED)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real M_tg = 0 "Machine Identifier (NOT USED)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real K_tg = 20 annotation(Dialog(tab = "IEEEG1"));
  parameter Real T1_tg = 0.5 "(sec)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real T2_tg = 1 "(sec)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real T3_tg = 1 "(>0)(sec)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real Uo_tg = 0.1 "(pu/sec)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real Uc_tg = -0.2 "(<0)(pu/sec)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real PMAX_tg = 1 "(pu on machine MVA rating)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real PMIN_tg = 0 "(pu on machine MVA rating)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real T4_tg = 0.4 "(sec)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real K1_tg = 0.2 annotation(Dialog(tab = "IEEEG1"));
  parameter Real K2_tg = 0 annotation(Dialog(tab = "IEEEG1"));
  parameter Real T5_tg = 7 "(sec)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real K3_tg = 0.1 annotation(Dialog(tab = "IEEEG1"));
  parameter Real K4_tg = 0 annotation(Dialog(tab = "IEEEG1"));
  parameter Real T6_tg = 0.6 "(sec)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real K5_tg = 0.2 annotation(Dialog(tab = "IEEEG1"));
  parameter Real K6_tg = 0 annotation(Dialog(tab = "IEEEG1"));
  parameter Real T7_tg = 0.3 "(sec)" annotation(Dialog(tab = "IEEEG1"));
  parameter Real K7_tg = 0.1 annotation(Dialog(tab = "IEEEG1"));
  parameter Real K8_tg = 0 annotation(Dialog(tab = "IEEEG1"));
  input OpalRT.NonElectrical.Connector.InputInterfacePin TRIP annotation(Placement(visible = true, transformation(origin = {20, 60}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0), iconTransformation(origin = {-196, 74}, extent = {{-13.25, -13.25}, {13.25, 13.25}}, rotation = 0)));
  OpalRT.NonElectrical.Connector.PwPin bus0 annotation(Placement(visible = true, transformation(origin = {20, -60}, extent = {{-9.5, -9.5}, {9.5, 9.5}}, rotation = 0), iconTransformation(origin = {101, -71}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  OpalRT.Electrical.Control.Excitation.IEEET2 ieeet21(TR = TR_ex, KA = KA_ex, TA = TA_ex, VRMAX = VRMAX_ex, VRMIN = VRMIN_ex, KE = KE_ex, TE = TE_ex, KF = KF_ex, TF1 = TF1_ex, TF2 = TF2_ex, E1 = E1_ex, SE_E1 = SE_E1_ex, E2 = E2_ex, SE_E2 = SE_E2_ex) annotation(Placement(visible = true, transformation(origin = {-56, 24}, extent = {{-27.5, -27.5}, {27.5, 27.5}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant constant2(k = 0) annotation(Placement(visible = true, transformation(origin = {-118, 44}, extent = {{-7.75, -7.75}, {7.75, 7.75}}, rotation = 0)));
  OpalRT.Electrical.Machine.SynchronousMachine.GENSAL gensal1(P_gen = P_gen, Q_gen = Q_gen, Vt_abs = Vt_abs, Vt_ang = Vt_ang, SB = SB, fn = fn, ZSOURCE_RE = ZSOURCE_RE, Tdo_p = Tdo_p, Tdo_s = Tdo_s, Tqo_s = Tqo_s, H = H, D = D, Xd = Xd, Xq = Xq, Xd_p = Xd_p, Xd_s = Xd_s, Xl = Xl, S1 = S1, S12 = S12) annotation(Placement(visible = true, transformation(origin = {18, -2}, extent = {{-27, -27}, {27, 27}}, rotation = 0)));
  OpalRT.Electrical.Control.TurbineGovernor.IEEEG1 ieeeg11(JBUS = JBUS_tg, M = M_tg, K = K_tg, T1 = T1_tg, T2 = T2_tg, T3 = T3_tg, Uo = Uo_tg, Uc = Uc_tg, PMAX = PMAX_tg, PMIN = PMIN_tg, T4 = T4_tg, K1 = K1_tg, K2 = K2_tg, T5 = T5_tg, K3 = K3_tg, K4 = K4_tg, T6 = T6_tg, K5 = K5_tg, K6 = K6_tg, T7 = T7_tg, K7 = K7_tg, K8 = K8_tg) annotation(Placement(visible = true, transformation(origin = {-57, -39}, extent = {{-27, -27}, {27, 27}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dGREF annotation(Placement(visible = true, transformation(origin = {-120, -20}, extent = {{-9.5, -9.5}, {9.5, 9.5}}, rotation = 0), iconTransformation(origin = {98, 70}, extent = {{12.5, 12.5}, {-12.5, -12.5}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dVREF annotation(Placement(visible = true, transformation(origin = {-120, 2}, extent = {{-9.25, -9.25}, {9.25, 9.25}}, rotation = 0), iconTransformation(origin = {-196, -72}, extent = {{-13.25, -13.25}, {13.25, 13.25}}, rotation = 0)));
equation
  connect(ieeet21.VI, gensal1.VI) annotation(Line(points = {{-28.5, 40.5}, {71.6738, 40.5}, {71.6738, -3.00429}, {47.2103, -3.00429}, {47.2103, -3.00429}}, color = {0, 0, 127}));
  connect(ieeeg11.MBASE, gensal1.MBASE) annotation(Line(points = {{-84, -49.8}, {-99.5708, -49.8}, {-99.5708, -80.2575}, {65.6652, -80.2575}, {65.6652, -17.1674}, {47.2103, -17.1674}, {47.2103, -17.1674}}, color = {0, 0, 127}));
  connect(ieeeg11.VI, gensal1.VI) annotation(Line(points = {{-84, -39}, {-109.871, -39}, {-109.871, -84.5494}, {71.6738, -84.5494}, {71.6738, -3.00429}, {45.9227, -3.00429}, {45.9227, -3.00429}}, color = {0, 0, 127}));
  connect(dVREF, ieeet21.dVREF) annotation(Line(points = {{-120, 2}, {-93.9914, 2}, {-93.9914, 7.29614}, {-84.1202, 7.29614}, {-84.1202, 7.29614}}));
  connect(dGREF, ieeeg11.dGREF) annotation(Line(points = {{-120, -20}, {-99.1416, -20}, {-99.1416, -18.0258}, {-83.691, -18.0258}, {-83.691, -18.0258}}));
  connect(gensal1.PMECH0, ieeeg11.PMECH0) annotation(Line(points = {{-9, -23.6}, {-28.169, -23.6}, {-28.169, -22.5352}, {-28.169, -22.5352}}, color = {0, 0, 127}));
  connect(gensal1.SLIP, ieeeg11.SLIP) annotation(Line(points = {{45, -23.6}, {58.0531, -23.6}, {58.0531, -74.3363}, {-90.2655, -74.3363}, {-90.2655, -60.885}, {-85.3097, -60.885}, {-85.3097, -60.885}}, color = {0, 0, 127}));
  connect(ieeeg11.PMECH, gensal1.PMECH) annotation(Line(points = {{-30, -17.4}, {-9.9115, -17.4}, {-9.9115, -18.7611}, {-9.9115, -18.7611}}, color = {0, 0, 127}));
  connect(gensal1.p, bus0) annotation(Line(points = {{18, -29}, {19.469, -29}, {19.469, -52.7434}, {19.469, -52.7434}}));
  connect(gensal1.XADIFD, ieeet21.XADIFD) annotation(Line(points = {{45, 11.5}, {75.7522, 11.5}, {75.7522, 82.4779}, {-90.9735, 82.4779}, {-90.9735, 37.1681}, {-84.9558, 37.1681}, {-84.9558, 37.1681}}, color = {0, 0, 127}));
  connect(TRIP, gensal1.TRIP) annotation(Line(points = {{20, 60}, {18.4071, 60}, {18.4071, 26.9027}, {18.4071, 26.9027}}));
  connect(gensal1.EFD0, ieeet21.EFD0) annotation(Line(points = {{-9.54, -2}, {-22.6549, -2}, {-22.6549, 1.76991}, {-26.5487, 1.76991}, {-26.5487, 2.47788}, {-26.5487, 2.47788}}, color = {0, 0, 127}));
  connect(ieeet21.EFD, gensal1.EFD) annotation(Line(points = {{-28.5, 7.5}, {-14.8673, 7.5}, {-14.8673, 5.66372}, {-10.6195, 5.66372}, {-10.6195, 5.66372}}, color = {0, 0, 127}));
  connect(gensal1.ETERM0, ieeet21.ETERM0) annotation(Line(points = {{-9.54, 11.5}, {-26.1947, 11.5}, {-26.1947, 12.3894}, {-26.1947, 12.3894}}, color = {0, 0, 127}));
  connect(gensal1.EX_AUX, ieeet21.EX_AUX) annotation(Line(points = {{-9.54, 19.6}, {-26.1947, 19.6}, {-26.1947, 19.115}, {-26.1947, 19.115}}, color = {0, 0, 127}));
  connect(constant2.y, ieeet21.VUEL) annotation(Line(points = {{-109.475, 44}, {-101.878, 44}, {-101.878, 29.5775}, {-83.5, 29.5}, {-83.5, 29.5}}, color = {0, 0, 127}));
  connect(constant2.y, ieeet21.VOEL) annotation(Line(points = {{-109.475, 44}, {-101.878, 44}, {-101.878, 22.0657}, {-83.5, 21.8}, {-83.5, 21.8}}, color = {0, 0, 127}));
  connect(constant2.y, ieeet21.VOTHSG) annotation(Line(points = {{-109.475, 44}, {-101.878, 44}, {-101.878, 14.0845}, {-83.5, 14.1}, {-83.5, 14.1}}, color = {0, 0, 127}));
  annotation(Diagram(coordinateSystem(extent = {{-200, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 20, Tolerance = 1e-06, Interval = 0.01), Icon(coordinateSystem(extent = {{-200, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Text(origin = {-75.7603, 24.371}, extent = {{-116.79, 25.76}, {165.508, -49.6901}}, textString = "GENSAL_IEEET2_IEEEG1"), Text(origin = {83.258, -83.7962}, extent = {{-39.434, 24.942}, {4.12501, 0.119567}}, textString = "PIN"), Text(origin = {-154.782, 67.94}, extent = {{-32.95, 18.39}, {18.1359, -4.59753}}, textString = "TRIP"), Text(origin = {-152.866, -71.1288}, extent = {{-25.16, 14.43}, {28.7358, -16.7287}}, textString = "dVREF"), Text(origin = {52.1046, 72.2783}, extent = {{-25.8, 17.37}, {30.3975, -19.9242}}, textString = "dGREF"), Rectangle(origin = {-49.8062, 0.383124}, extent = {{-147.631, 97.1859}, {147.631, -97.6967}})}));
end GENSAL_IEEET2_IEEEG1;