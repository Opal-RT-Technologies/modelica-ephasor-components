within OpalRT.GenUnits.GENROU;
class GENROU_ESDC1A_TGOV1
  parameter Real partType = 1;
  // GENROU Parameters
  parameter Integer IBUS = 100 "Located system bus" annotation(Dialog(tab = "General"));
  parameter String M_ID = "M1" "Machine Identifier" annotation(Dialog(tab = "GENROU"));
  parameter Real P_gen = 1100 "Bus Active Power, MW" annotation(Dialog(tab = "General"));
  parameter Real Q_gen = 342.702 "Bus Reactive Power, MVAR" annotation(Dialog(tab = "General"));
  parameter Real Vt_abs = 1.03 "Bus Voltage Magnitude, p.u." annotation(Dialog(tab = "General"));
  parameter Real Vt_ang = -10.96 "Bus Voltage Angle, deg." annotation(Dialog(tab = "General"));
  parameter Real SB = 1000 "Machine Base Power, MVA" annotation(Dialog(tab = "General"));
  parameter Real fn = 50 "Nominal frequency" annotation(Dialog(tab = "General"));
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
  // ESDC1A parameters
  parameter Real TR_ex = 0.1 "(sec)" annotation(Dialog(tab = "ESDC1A"));
  parameter Real KA_ex = 400 annotation(Dialog(tab = "ESDC1A"));
  parameter Real TA_ex = 5 "(sec)" annotation(Dialog(tab = "ESDC1A"));
  parameter Real TB_ex = 12 "(sec)" annotation(Dialog(tab = "ESDC1A"));
  parameter Real TC_ex = 10 "(sec)" annotation(Dialog(tab = "ESDC1A"));
  parameter Real VRMAX_ex = 5 "or zero" annotation(Dialog(tab = "ESDC1A"));
  parameter Real VRMIN_ex = -5 annotation(Dialog(tab = "ESDC1A"));
  parameter Real KE_ex = 0 "or zero" annotation(Dialog(tab = "ESDC1A"));
  parameter Real TE_ex = 0.08 "(sec)" annotation(Dialog(tab = "ESDC1A"));
  parameter Real KF_ex = 0.2 annotation(Dialog(tab = "ESDC1A"));
  parameter Real TF1_ex = 1.2 "(>0) (sec)" annotation(Dialog(tab = "ESDC1A"));
  parameter Real Switch_ex = 0 annotation(Dialog(tab = "ESDC1A"));
  parameter Real E1_ex = 4 annotation(Dialog(tab = "ESDC1A"));
  parameter Real SE_E1_ex = 0.4 annotation(Dialog(tab = "ESDC1A"));
  parameter Real E2_ex = 5 annotation(Dialog(tab = "ESDC1A"));
  parameter Real SE_E2_ex = 0.5 annotation(Dialog(tab = "ESDC1A"));
  // TGOV1 Parameters
  parameter Real R_tg = 1 annotation(Dialog(tab = "TGOV1"));
  parameter Real T1_tg = 1 "(>0) (sec)" annotation(Dialog(tab = "TGOV1"));
  parameter Real VMAX_tg = 1 annotation(Dialog(tab = "TGOV1"));
  parameter Real VMIN_tg = 1 annotation(Dialog(tab = "TGOV1"));
  parameter Real T2_tg = 1 annotation(Dialog(tab = "TGOV1"));
  parameter Real T3_tg = 1 "(>0) (sec)" annotation(Dialog(tab = "TGOV1"));
  parameter Real Dt_tg = 1 annotation(Dialog(tab = "TGOV1"));
  OpalRT.NonElectrical.Connector.PwPin bus0 annotation(Placement(visible = true, transformation(origin = {48, -38}, extent = {{-8, -8}, {8, 8}}, rotation = 0), iconTransformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin TRIP annotation(Placement(visible = true, transformation(origin = {46, 60}, extent = {{-6.25, -6.25}, {6.25, 6.25}}, rotation = 0), iconTransformation(origin = {-94, 76}, extent = {{-11.5, -11.5}, {11.5, 11.5}}, rotation = 0)));
  OpalRT.Electrical.Machine.SynchronousMachine.GENROU genrou1(IBUS = IBUS, ID = M_ID, P_gen = P_gen, Q_gen = Q_gen, Vt_abs = Vt_abs, Vt_ang = Vt_ang, SB = SB, fn = fn, ZSOURCE_RE = ZSOURCE_RE, Tdo_p = Tdo_p, Tdo_s = Tdo_s, Tqo_p = Tqo_p, Tqo_s = Tqo_s, H = H, D = D, Xd = Xd, Xq = Xq, Xd_p = Xd_p, Xq_p = Xq_p, Xd_s = Xd_s, Xl = Xl, S1 = S1, S12 = S12) annotation(Placement(visible = true, transformation(origin = {48, 12}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dVREF annotation(Placement(visible = true, transformation(origin = {-84, 24}, extent = {{-8, -8}, {8, 8}}, rotation = 0), iconTransformation(origin = {-94, -64}, extent = {{-11.125, -11.125}, {11.125, 11.125}}, rotation = 0)));
  OpalRT.Electrical.Control.TurbineGovernor.TGOV1 tgov11(R = R_tg, T1 = T1_tg, VMAX = VMAX_tg, VMIN = VMIN_tg, T2 = T2_tg, T3 = T3_tg, Dt = Dt_tg) annotation(Placement(visible = true, transformation(origin = {-12, -18}, extent = {{-20.75, -20.75}, {20.75, 20.75}}, rotation = 0)));
  OpalRT.Electrical.Control.Excitation.ESDC1A esdc1a1(TR = TR_ex, KA = KA_ex, TA = TA_ex, TB = TB_ex, TC = TC_ex, VRMAX = VRMAX_ex, VRMIN = VRMIN_ex, KE = KE_ex, TE = TE_ex, KF = KF_ex, TF1 = TF1_ex, Switch = Switch_ex, E1 = E1_ex, SE_E1 = SE_E1_ex, E2 = E2_ex, SE_E2 = SE_E2_ex) annotation(Placement(visible = true, transformation(origin = {-10, 30}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dGREF annotation(Placement(visible = true, transformation(origin = {-88, 2}, extent = {{-7, -7}, {7, 7}}, rotation = 0), iconTransformation(origin = {96, 76}, extent = {{11.8125, -11.8125}, {-11.8125, 11.8125}}, rotation = 0)));
  parameter Real noVOEL(fixed = false, start = 1);
  parameter Real noVUEL(fixed = false, start = 1);
  Modelica.Blocks.Sources.Constant const(k = noVUEL) annotation(Placement(visible = true, transformation(origin = {-62, 58}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant constant1(k = noVOEL) annotation(Placement(visible = true, transformation(origin = {-62, 46}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant constant2(k = 0) annotation(Placement(visible = true, transformation(origin = {-62, 32}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
initial equation
  noVOEL = 0;
  noVUEL = -Modelica.Constants.inf;
equation
  connect(esdc1a1.VI, genrou1.VI) annotation(Line(points = {{12, 43.2}, {81.491, 43.2}, {81.491, 11.8252}, {69.4087, 11.8252}, {69.4087, 11.8252}}, color = {0, 0, 127}));
  connect(genrou1.SLIP, tgov11.SLIP) annotation(Line(points = {{69, -4.8}, {74.8072, -4.8}, {74.8072, -63.7532}, {-43.7018, -63.7532}, {-43.7018, -35.4756}, {-34.1902, -35.4756}, {-34.1902, -35.4756}}, color = {0, 0, 127}));
  connect(genrou1.MBASE, tgov11.MBASE) annotation(Line(points = {{69, 0.66}, {78.4062, 0.66}, {78.4062, -68.1234}, {-48.072, -68.1234}, {-48.072, -26.2211}, {-34.1902, -26.2211}, {-34.1902, -26.2211}}, color = {0, 0, 127}));
  connect(genrou1.VI, tgov11.VI) annotation(Line(points = {{69, 12}, {81.491, 12}, {81.491, -73.2648}, {-53.2134, -73.2648}, {-53.2134, -17.9949}, {-34.1902, -17.9949}, {-34.1902, -17.9949}}, color = {0, 0, 127}));
  connect(dGREF, tgov11.dGREF) annotation(Line(points = {{-88, 2}, {-73.2648, 2}, {-73.2648, -1.54242}, {-31.3625, -1.54242}, {-31.3625, -1.54242}}));
  connect(dVREF, esdc1a1.dVREF) annotation(Line(points = {{-84, 24}, {-69.9229, 24}, {-69.9229, 17.4807}, {-33.419, 17.4807}, {-33.419, 17.4807}}));
  connect(constant2.y, esdc1a1.VOTHSG) annotation(Line(points = {{-56.5, 32}, {-47.8873, 32}, {-47.8873, 22.0657}, {-32.8638, 22.0657}, {-32.8638, 22.0657}}, color = {0, 0, 127}));
  connect(constant1.y, esdc1a1.VOEL) annotation(Line(points = {{-56.5, 46}, {-46.0094, 46}, {-46.0094, 28.169}, {-32.8638, 28.169}, {-32.8638, 28.169}}, color = {0, 0, 127}));
  connect(const.y, esdc1a1.VUEL) annotation(Line(points = {{-56.5, 58}, {-43.1858, 58}, {-43.1858, 34.6903}, {-32, 34.6903}, {-32, 34.4}}, color = {0, 0, 127}));
  connect(genrou1.XADIFD, esdc1a1.XADIFD) annotation(Line(points = {{69, 22.5}, {79.292, 22.5}, {79.292, 70.7965}, {-40.354, 70.7965}, {-40.354, 41.4159}, {-32.5664, 41.4159}, {-32.5664, 41.4159}}, color = {0, 0, 127}));
  connect(genrou1.EX_AUX, esdc1a1.EX_AUX) annotation(Line(points = {{26.58, 28.8}, {13.4513, 28.8}, {13.4513, 26.9027}, {13.4513, 26.9027}}, color = {0, 0, 127}));
  connect(genrou1.ETERM0, esdc1a1.ETERM0) annotation(Line(points = {{26.58, 22.5}, {13.0973, 22.5}, {13.0973, 20.885}, {13.0973, 20.885}}, color = {0, 0, 127}));
  connect(esdc1a1.EFD, genrou1.EFD) annotation(Line(points = {{12, 16.8}, {25.8407, 16.8}, {25.8407, 17.3451}, {25.8407, 17.3451}}, color = {0, 0, 127}));
  connect(genrou1.EFD0, esdc1a1.EFD0) annotation(Line(points = {{26.58, 12}, {12.3894, 12}, {12.3894, 11.3274}, {12.3894, 11.3274}}, color = {0, 0, 127}));
  connect(genrou1.PMECH0, tgov11.PMECH0) annotation(Line(points = {{27, -4.8}, {6.0177, -4.8}, {8.75, -5.30973}, {8.75, -3.55}}, color = {0, 0, 127}));
  connect(tgov11.PMECH, genrou1.PMECH) annotation(Line(points = {{8.75, 0.6}, {25.1327, 0.6}, {25.1327, -1.06195}, {25.1327, -1.06195}}, color = {0, 0, 127}));
  connect(TRIP, genrou1.TRIP) annotation(Line(points = {{46, 60}, {47.4336, 60}, {48, 31}, {48, 33}}));
  connect(genrou1.p, bus0) annotation(Line(points = {{48, -9}, {47.7876, -9}, {48, -36}, {48, -38}}));
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Rectangle(origin = {0.13895, -0.455581}, extent = {{-98.1777, 99.0118}, {98.1777, -97.9499}}), Text(origin = {71.5733, -63.6617}, extent = {{14.5226, -4.81894}, {-16.9742, 13.9962}}, textString = "bus0"), Text(origin = {-21.5317, 36.0002}, extent = {{-73.46, 18.79}, {117.953, -62.4971}}, textString = "GENROU_ESDC1A_TGOV1"), Text(origin = {-60.1775, 73.1001}, extent = {{-25.84, 13.27}, {16.9904, -7.2523}}, textString = "TRIP"), Text(origin = {-64.6019, -60}, extent = {{-16.11, 10.44}, {28.4994, -16.8117}}, textString = "dVREF"), Text(origin = {64.0696, 71.6821}, extent = {{-32.21, 12.92}, {24.0684, -4.77841}}, textString = "dGREF")}));
end GENROU_ESDC1A_TGOV1;