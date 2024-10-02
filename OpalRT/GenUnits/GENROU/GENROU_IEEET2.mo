within OpalRT.GenUnits.GENROU;
class GENROU_IEEET2
  parameter Real partType = 1;
  //Generator Parameters:
  parameter Integer IBUS = 100 "Located system bus" annotation(Dialog(tab = "General"));
  parameter String M_ID = "M1" "Machine Identifier" annotation(Dialog(tab = "GENROU Parameters"));
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
  //Exciter IEEET2 Parameters:
  parameter Real TR_ex = 0.025 "(sec)";
  parameter Real KA_ex = 98;
  parameter Real TA_ex = 0.2 "(sec)";
  parameter Real VRMAX_ex = 9 "or zero";
  parameter Real VRMIN_ex = -5;
  parameter Real KE_ex = 0.5 "or zero";
  parameter Real TE_ex = 0.35 "(>0) (sec)";
  parameter Real KF_ex = 0.03;
  parameter Real TF1_ex = 0.4 "(>0) (sec)";
  parameter Real TF2_ex = 0.4 "(>0) (sec)";
  parameter Real E1_ex = 4;
  parameter Real SE_E1_ex = 0.4;
  parameter Real E2_ex = 5;
  parameter Real SE_E2_ex = 0.5;
  OpalRT.Electrical.Machine.SynchronousMachine.GENROU genrou1(ID = M_ID, P_gen = P_gen, Q_gen = Q_gen, Vt_abs = Vt_abs, Vt_ang = Vt_ang, SB = SB, fn = fn, ZSOURCE_RE = ZSOURCE_RE, Tdo_p = Tdo_p, Tdo_s = Tdo_s, Tqo_p = Tqo_p, Tqo_s = Tqo_s, H = H, D = D, Xd = Xd, Xq = Xq, Xd_p = Xd_p, Xq_p = Xq_p, Xd_s = Xd_s, Xl = Xl, S1 = S1, S12 = S12) annotation(Placement(visible = true, transformation(origin = {40, 0}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
  OpalRT.Electrical.Control.Excitation.IEEET2 ieeet21(ID = M_ID, TR = TR_ex, KA = KA_ex, TA = TA_ex, VRMAX = VRMAX_ex, VRMIN = VRMIN_ex, KE = KE_ex, TE = TE_ex, KF = KF_ex, TF1 = TF1_ex, TF2 = TF2_ex, E1 = E1_ex, SE_E1 = SE_E1_ex, E2 = E2_ex, SE_E2 = SE_E2_ex) annotation(Placement(visible = true, transformation(origin = {-40, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-80, 40}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  OpalRT.NonElectrical.Connector.PwPin bus0 annotation(Placement(visible = true, transformation(origin = {60, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dVREF annotation(Placement(visible = true, transformation(origin = {-80, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin TRIP annotation(Placement(visible = true, transformation(origin = {40, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(ieeet21.dVREF, dVREF) annotation(Line(points = {{-60, 28}, {-79.4344, 28}, {-79.4344, -18.7661}, {-79.4344, -18.7661}}, color = {0, 0, 127}));
  connect(genrou1.XADIFD, ieeet21.XADIFD) annotation(Line(points = {{65, 12.5}, {85.3659, 12.5}, {85.3659, 76.4228}, {-76.1518, 76.4228}, {-76.1518, 49.5935}, {-60.9756, 49.5935}, {-60.9756, 49.5935}}, color = {0, 0, 127}));
  connect(ieeet21.VOTHSG, const.y) annotation(Line(points = {{-60, 32.8}, {-71.2737, 32.8}, {-71.2737, 40.1084}, {-74.7967, 40.1084}, {-74.7967, 40.1084}}, color = {0, 0, 127}));
  connect(ieeet21.VOEL, const.y) annotation(Line(points = {{-60, 38.4}, {-70.7317, 38.4}, {-70.7317, 39.8374}, {-74.7967, 39.8374}, {-74.7967, 39.8374}}, color = {0, 0, 127}));
  connect(ieeet21.VUEL, const.y) annotation(Line(points = {{-60, 44}, {-69.6477, 44}, {-69.6477, 40.1084}, {-74.2547, 40.1084}, {-74.2547, 40.1084}}, color = {0, 0, 127}));
  connect(genrou1.TRIP, TRIP) annotation(Line(points = {{40, 25}, {40.9214, 25}, {40.9214, 49.8645}, {40.9214, 49.8645}}, color = {0, 0, 127}));
  connect(ieeet21.EX_AUX, genrou1.EX_AUX) annotation(Line(points = {{14.5, 20}, {10.0271, 20}, {10.0271, 37.1274}, {-18.4282, 37.1274}, {-18.4282, 37.1274}}, color = {0, 0, 127}));
  connect(genrou1.PMECH0, genrou1.PMECH) annotation(Line(points = {{15, -20}, {4.33604, -20}, {4.33604, -15.1762}, {11.9241, -15.1762}, {11.9241, -15.1762}}, color = {0, 0, 127}));
  connect(genrou1.VI, ieeet21.VI) annotation(Line(points = {{65, 0}, {94.8586, 0}, {94.8586, 52.1851}, {-19.7943, 52.1851}, {-19.7943, 52.1851}}, color = {0, 0, 127}));
  connect(ieeet21.ETERM0, genrou1.ETERM0) annotation(Line(points = {{-20, 32}, {3.79404, 32}, {3.79404, 12.4661}, {12.7371, 12.4661}, {12.7371, 12.4661}}, color = {0, 0, 127}));
  connect(genrou1.EFD, ieeet21.EFD) annotation(Line(points = {{15, 7}, {-4.87805, 7}, {-4.87805, 28.7263}, {-18.1572, 28.7263}, {-18.1572, 28.7263}}, color = {0, 0, 127}));
  connect(ieeet21.EFD0, genrou1.EFD0) annotation(Line(points = {{-20, 24}, {-11.6531, 24}, {-11.6531, -0.542005}, {13.0081, -0.542005}, {13.0081, -0.542005}}, color = {0, 0, 127}));
  connect(bus0, genrou1.p) annotation(Line(points = {{60, -40}, {39.5664, -40}, {39.5664, -27.1003}, {39.5664, -27.1003}}));
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {1, 1}), graphics={  Rectangle(origin = {-1.36674, 26.4237}, extent = {{-88.3827, 36.4465}, {94.3052, -90.4328}}), Text(origin = {-31.89, -1.02}, extent = {{-48.06, 27.45}, {116.4, -21.07}}, textString = "GENROU_IEEET2"), Text(origin = {-158.72, 54.1336}, extent = {{81.2444, -2.65262}, {116.4, -21.07}}, textString = "TRIP"), Text(origin = {-157.383, -27.0881}, extent = {{81.24, -2.65}, {123.242, -21.5261}}, textString = "dVREF"), Text(origin = {-39.06, -25.9778}, extent = {{100.396, -2.1939}, {123.24, -21.53}}, textString = "Pin")}));
end GENROU_IEEET2;