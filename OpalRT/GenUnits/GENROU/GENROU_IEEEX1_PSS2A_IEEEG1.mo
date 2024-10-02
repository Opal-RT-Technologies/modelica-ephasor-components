within OpalRT.GenUnits.GENROU;
class GENROU_IEEEX1_PSS2A_IEEEG1
  parameter Real partType = 1;
  constant Real pi = Modelica.Constants.pi;
  // GENROU Parameters
  parameter Integer IBUS = 100 "Located system bus" annotation(Dialog(tab = "General"));
  parameter String M_ID = "M1" "Machine Identifier" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real P_gen = 1000 "Bus Active Power, MW" annotation(Dialog(tab = "General"));
  parameter Real Q_gen = 100 "Bus Reactive Power, MVAR" annotation(Dialog(tab = "General"));
  parameter Real Vt_abs = 0.95 "Bus Voltage Magnitude, p.u." annotation(Dialog(tab = "General"));
  parameter Real Vt_ang = -2 "Bus Voltage Angle, deg." annotation(Dialog(tab = "General"));
  parameter Real SB = 1200 "Machine Base Power, MVA" annotation(Dialog(tab = "General"));
  parameter Real fn = 60 "Nominal frequency" annotation(Dialog(tab = "General"));
  parameter Real ZSOURCE_RE = 0 "Machine source impedence" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Tdo_p = 10.2 "d-axis transient time constant" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Tdo_s = 0.5 "d-axis sub-transient time constant, s" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Tqo_p = 1.02 "q-axis transient time constant, s" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Tqo_s = 0.01 "d-axis sub-transient time constant, s" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real H = 8.2 "Inertia constant" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real D = 0 "Speed damping" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Xd = 3 "d-axis reactance, p.u." annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Xq = 0.5 "q-axis reactance, p.u." annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Xd_p = 0.5231 "d-axis transient reactance, p.u." annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Xq_p = 0.361 "q-axis transient reactance, p.u." annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Xd_s = 0.41 "d-axis sub-transient reactance, p.u." annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real Xl = 0.2 "Reactance due to the leakage flux which does not cross the air gap, p.u." annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real S1 = 0.5 "saturation function value for 1 p.u. input" annotation(Dialog(tab = "GENROU Parameters"));
  parameter Real S12 = 0.6 "saturation function value for 1.2 p.u. input" annotation(Dialog(tab = "GENROU Parameters"));
  // IEEEX1 Parameters
  parameter Real TR_ex = 0.025 "(sec)" annotation(Dialog(tab = "IEEEX1"));
  parameter Real KA_ex = 98 annotation(Dialog(tab = "IEEEX1"));
  parameter Real TA_ex = 0.2 "(sec)" annotation(Dialog(tab = "IEEEX1"));
  parameter Real TB_ex = 0.5 "(sec)" annotation(Dialog(tab = "IEEEX1"));
  parameter Real TC_ex = 1 "(sec)" annotation(Dialog(tab = "IEEEX1"));
  parameter Real VRMAX_ex = 9 "or zero" annotation(Dialog(tab = "IEEEX1"));
  parameter Real VRMIN_ex = -5 annotation(Dialog(tab = "IEEEX1"));
  parameter Real KE_ex = 0.5 "or zero" annotation(Dialog(tab = "IEEEX1"));
  parameter Real TE_ex = 0.35 "(>0) (sec)" annotation(Dialog(tab = "IEEEX1"));
  parameter Real KF_ex = 0.03 annotation(Dialog(tab = "IEEEX1"));
  parameter Real TF1_ex = 0.4 "(>0) (sec)" annotation(Dialog(tab = "IEEEX1"));
  parameter Real Switch_ex = 0 annotation(Dialog(tab = "IEEEX1"));
  parameter Real E1_ex = 4 annotation(Dialog(tab = "IEEEX1"));
  parameter Real SE_E1_ex = 0.4 annotation(Dialog(tab = "IEEEX1"));
  parameter Real E2_ex = 5 annotation(Dialog(tab = "IEEEX1"));
  parameter Real SE_E2_ex = 0.5 annotation(Dialog(tab = "IEEEX1"));
  //
  // PSS2A Parameters
  parameter String PSS_ID = M_ID "Machine Identifier" annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real TW1_pss = 10 ">0" annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real TW2_pss = 10 "To bypass second washout, first signal: set Tw2 = 0" annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real T6_pss = 0 "To bypass first signal transducer: set T6 = 0" annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real TW3_pss = 10 ">0" annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real TW4_pss = 0 "To bypass second washout, second signal: set Tw4 = 0" annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real T7_pss = 10 "To bypass second signal transducer: set T7 = 0" annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real KS2_pss = 1.13 "T7/(2*H)" annotation(Dialog(tab = "PSS2A Parameters"));
  //T7/(2*H);
  parameter Real KS3_pss = 1 annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real T8_pss = 0.3 annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real T9_pss = 0.15 ">0" annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real KS1_pss = 20 annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real T1_pss = 0.16 "To bypass first lead-lag: set T1 = T2 = 0" annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real T2_pss = 0.02 annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real T3_pss = 0.16 "To bypass first lead-lag: set T1 = T2 = 0" annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real T4_pss = 0.02 annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real VSTMAX_pss = 0.2 annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real VSTMIN_pss = -0.066 annotation(Dialog(tab = "PSS2A Parameters"));
  // PSS2A ICONs
  parameter Real M0_pss = 1 "ICS1, first stabilizer input code" annotation(Dialog(tab = "PSS2A Parameters", group = "ICONs"));
  parameter Real M1_pss = 0 "REMBUS1, first remote bus number" annotation(Dialog(tab = "PSS2A Parameters", group = "ICONs"));
  parameter Real M2_pss = 0 "ICS2, second stabilizer input code" annotation(Dialog(tab = "PSS2A Parameters", group = "ICONs"));
  parameter Real M3_pss = 0 "REMBUS2, second remote bus number" annotation(Dialog(tab = "PSS2A Parameters", group = "ICONs"));
  parameter Real M4_pss = 4 "M, ramp tracking filter" annotation(Dialog(tab = "PSS2A Parameters", group = "ICONs"));
  parameter Real M5_pss = 2 "N, ramp tracking filter" annotation(Dialog(tab = "PSS2A Parameters", group = "ICONs"));
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
  OpalRT.Electrical.Control.TurbineGovernor.IEEEG1 ieeeg11(IBUS = 100, ID = M_ID, K = K_tg, T1 = T1_tg, T2 = T2_tg, T3 = T3_tg, Uo = Uo_tg, Uc = Uc_tg, PMAX = PMAX_tg, PMIN = PMIN_tg, T4 = T4_tg, K1 = K1_tg, K2 = K2_tg, T5 = T5_tg, K3 = K3_tg, K4 = K4_tg, T6 = T6_tg, K5 = K5_tg, K6 = K6_tg, T7 = T7_tg, K7 = K7_tg, K8 = K8_tg) annotation(Placement(visible = true, transformation(origin = {7, -46}, extent = {{-20, -20}, {10, 10}}, rotation = 0)));
  OpalRT.Electrical.Control.Stabilizer.PSS2A pSS2A1(M2 = M2_pss, TW1 = TW1_pss, TW2 = TW2_pss, T6 = T6_pss, TW3 = TW3_pss, TW4 = TW4_pss, T7 = T7_pss, KS2 = KS2_pss, KS3 = KS3_pss, T8 = T8_pss, T9 = T9_pss, KS1 = KS1_pss, T1 = T1_pss, T2 = T2_pss, T3 = T3_pss, T4 = T4_pss, VSTMAX = VSTMAX_pss, VSTMIN = VSTMIN_pss, M0 = M0_pss, M1 = M1_pss, M3 = M3_pss, M4 = M4_pss, M5 = M5_pss, initType = Modelica.Blocks.Types.Init.InitialOutput, ID = PSS_ID) annotation(Placement(visible = true, transformation(origin = {-54, -20}, extent = {{-15, -10}, {15, 10}}, rotation = 0)));
  OpalRT.NonElectrical.Connector.PwPin bus0 annotation(Placement(visible = true, transformation(origin = {96, -68}, extent = {{-5, -5}, {5, 5}}, rotation = 0), iconTransformation(origin = {100, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpalRT.Electrical.Control.Excitation.IEEEX1 ieeex11(TR = TR_ex, KA = KA_ex, TA = TA_ex, TB = TB_ex, TC = TC_ex, VRMAX = VRMAX_ex, VRMIN = VRMIN_ex, KE = KE_ex, TE = TE_ex, KF = KF_ex, TF1 = TF1_ex, Switch = Switch_ex, E1 = E1_ex, SE_E1 = SE_E1_ex, E2 = E2_ex, SE_E2 = SE_E2_ex) annotation(Placement(visible = true, transformation(origin = {-4, -12}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const1(k = 0) annotation(Placement(visible = true, transformation(origin = {-46, 6}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  OpalRT.Electrical.Machine.SynchronousMachine.GENROU genrou1(IBUS = IBUS, ID = M_ID, P_gen = P_gen, Q_gen = Q_gen, Vt_abs = Vt_abs, Vt_ang = Vt_ang, SB = SB, fn = fn, ZSOURCE_RE = ZSOURCE_RE, Tdo_p = Tdo_p, Tdo_s = Tdo_s, Tqo_p = Tqo_p, Tqo_s = Tqo_s, H = H, D = D, Xd = Xd, Xq = Xq, Xd_p = Xd_p, Xq_p = Xq_p, Xd_s = Xd_s, Xl = Xl, S1 = S1, S12 = S12) annotation(Placement(visible = true, transformation(origin = {47, -29}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin TRIP annotation(Placement(visible = true, transformation(origin = {42, 34}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-93, 69}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dVREF annotation(Placement(visible = true, transformation(origin = {-58, -42}, extent = {{-9, -9}, {9, 9}}, rotation = 0), iconTransformation(origin = {-65, -41}, extent = {{-9, -9}, {9, 9}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dGREF annotation(Placement(visible = true, transformation(origin = {-58, -62}, extent = {{-9, -9}, {9, 9}}, rotation = 0), iconTransformation(origin = {-100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(ieeeg11.PMECH0, genrou1.PMECH0) annotation(Line(points = {{17, -42}, {20.4566, -42}, {20.4566, -45.8228}, {24.2752, -45.8228}, {24.2752, -45.8228}}, color = {0, 0, 127}));
  connect(dGREF, ieeeg11.dGREF) annotation(Line(points = {{-58, -62}, {-36.9099, -62}, {-36.9099, -44.6352}, {-23.176, -44.6352}, {-23.176, -39.485}, {-12.8755, -39.485}, {-12.8755, -39.485}}));
  connect(dVREF, ieeex11.dVREF) annotation(Line(points = {{-58, -42}, {-28.7554, -42}, {-28.7554, -25.3219}, {-24.8927, -25.3219}, {-24.8927, -25.3219}}));
  connect(pSS2A1.PSS_AUX2[2], genrou1.AccPower) annotation(Line(points = {{-69, -26}, {-71.4617, -26}, {-71.4617, -76.0985}, {73.9165, -76.0985}, {73.9165, -34.6398}, {69.5524, -34.6398}, {69.5524, -34.6398}}, color = {0, 0, 127}));
  connect(pSS2A1.PSS_AUX2[1], genrou1.SLIP) annotation(Line(points = {{-69, -26}, {-71.7344, -26}, {-71.7344, -76.0985}, {73.9165, -76.0985}, {73.9165, -45.8228}, {69.5524, -45.8228}, {69.5524, -45.8228}}, color = {0, 0, 127}));
  connect(pSS2A1.VI2, genrou1.VI) annotation(Line(points = {{-69, -24}, {-74.7347, -24}, {-74.7347, -84.5539}, {81.0081, -84.5539}, {81.0081, -29.1847}, {69.8252, -29.1847}, {69.8252, -29.1847}}, color = {0, 0, 127}));
  connect(pSS2A1.VI2, pSS2A1.VI) annotation(Line(points = {{-69, -24}, {-74.7347, -24}, {-74.7347, -17.729}, {-69.2797, -17.729}, {-69.2797, -17.729}}, color = {0, 0, 127}));
  connect(ieeex11.VI, genrou1.VI) annotation(Line(points = {{16, 6.66134e-16}, {81.1159, 6.66134e-16}, {81.1159, -29.1845}, {69.0987, -29.1845}, {69.0987, -29.1845}}, color = {0, 0, 127}));
  connect(ieeeg11.MBASE, genrou1.MBASE) annotation(Line(points = {{-13, -57}, {-27.897, -57}, {-27.897, -80.6867}, {78.5408, -80.6867}, {78.5408, -40.7725}, {69.0987, -40.7725}, {69.0987, -40.7725}}, color = {0, 0, 127}));
  connect(ieeeg11.VI, genrou1.VI) annotation(Line(points = {{-13, -51}, {-33.0472, -51}, {-33.0472, -84.5494}, {81.1159, -84.5494}, {81.1159, -29.1845}, {69.0987, -29.1845}, {69.0987, -29.1845}}, color = {0, 0, 127}));
  connect(TRIP, genrou1.TRIP) annotation(Line(points = {{42, 34}, {47, 34}, {47, -8}}));
  connect(genrou1.p, bus0) annotation(Line(points = {{47, -50}, {46, -50}, {46, -68}, {96, -68}}));
  connect(ieeex11.EFD0, genrou1.EFD0) annotation(Line(points = {{16, -28}, {20, -28}, {20, -29}, {25.58, -29}}, color = {0, 0, 127}));
  connect(ieeex11.EFD, genrou1.EFD) annotation(Line(points = {{16, -24}, {22, -24}, {22, -23.12}, {26, -23.12}}, color = {0, 0, 127}));
  connect(ieeex11.ETERM0, genrou1.ETERM0) annotation(Line(points = {{16, -20}, {24, -20}, {24, -18.5}, {25.58, -18.5}}, color = {0, 0, 127}));
  connect(ieeex11.EX_AUX, genrou1.EX_AUX) annotation(Line(points = {{16, -14.8}, {22, -14.8}, {22, -12.2}, {25.58, -12.2}}, color = {0, 0, 127}));
  connect(ieeex11.XADIFD, genrou1.XADIFD) annotation(Line(points = {{-24, -2}, {-30, -2}, {-30, 16}, {74, 16}, {74, -18.5}, {68, -18.5}}, color = {0, 0, 127}));
  connect(const1.y, ieeex11.VUEL) annotation(Line(points = {{-40.5, 6}, {-32, 6}, {-32, -8}, {-24, -8}}, color = {0, 0, 127}));
  connect(ieeex11.VOEL, ieeex11.VUEL) annotation(Line(points = {{-24, -13.6}, {-32, -13.6}, {-32, -8}, {-24, -8}}, color = {0, 0, 127}));
  connect(pSS2A1.VOTHSG, ieeex11.VOTHSG) annotation(Line(points = {{-39, -26}, {-32, -26}, {-32, -19.2}, {-24, -19.2}}, color = {0, 0, 127}));
  connect(pSS2A1.PSS_AUX2, pSS2A1.PSS_AUX) annotation(Line(points = {{-68.7, -26}, {-72, -26}, {-72, -20}, {-69, -20}}, color = {0, 0, 127}));
  connect(ieeeg11.PMECH, genrou1.PMECH) annotation(Line(points = {{17, -39}, {22, -39}, {22, -41.6}, {26, -41.6}}, color = {0, 0, 127}));
  connect(ieeeg11.SLIP, genrou1.SLIP) annotation(Line(points = {{-13, -63}, {-22, -63}, {-22, -76}, {74, -76}, {74, -45.8}, {68, -45.8}}, color = {0, 0, 127}));
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Text(origin = {-51.82, 7.29}, extent = {{-38.61, 12.3}, {138.15, -25.51}}, textString = "GENROU_IEEEX1_PSS2A_IEEEG1"), Rectangle(origin = {-0.683371, -0.569476}, extent = {{-99.5444, 98.7472}, {99.5444, -98.7472}}), Text(origin = {77.2165, -60.4778}, extent = {{-15.7169, 9.23023}, {4.55513, -5.58558}}, textString = "PIN"), Text(origin = {-68.1086, 61.7315}, extent = {{-28.7, 7.52}, {28.7, -7.52}}, textString = "dGREF"), Text(origin = {-73.8448, -60.1801}, extent = {{-28.7, 7.52}, {28.7, -7.52}}, textString = "TRIP")}));
end GENROU_IEEEX1_PSS2A_IEEEG1;