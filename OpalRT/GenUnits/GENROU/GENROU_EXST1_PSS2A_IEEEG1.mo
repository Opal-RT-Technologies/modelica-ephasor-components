within OpalRT.GenUnits.GENROU;
class GENROU_EXST1_PSS2A_IEEEG1
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
  // EXST1 Parameters
  parameter String EX_ID = M_ID "Machine Identifier" annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real TR_ex = 0.02 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real VIMAX_ex = 0.2 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real VIMIN_ex = 0 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real TC_ex = 1 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real TB_ex = 1 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real KA_ex = 500 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real TA_ex = 0.05 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real VRMAX_ex = 8 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real VRMIN_ex = -3 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real KC_ex = 0.2 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real KF_ex = 0.1 annotation(Dialog(tab = "EXST1 Parameters"));
  parameter Real TF_ex = 1 annotation(Dialog(tab = "EXST1 Parameters"));
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
  OpalRT.Electrical.Control.Stabilizer.PSS2A pSS2A1(M2 = M2_pss, TW1 = TW1_pss, TW2 = TW2_pss, T6 = T6_pss, TW3 = TW3_pss, TW4 = TW4_pss, T7 = T7_pss, KS2 = KS2_pss, KS3 = KS3_pss, T8 = T8_pss, T9 = T9_pss, KS1 = KS1_pss, T1 = T1_pss, T2 = T2_pss, T3 = T3_pss, T4 = T4_pss, VSTMAX = VSTMAX_pss, VSTMIN = VSTMIN_pss, M0 = M0_pss, M1 = M1_pss, M3 = M3_pss, M4 = M4_pss, M5 = M5_pss, initType = Modelica.Blocks.Types.Init.InitialOutput, ID = PSS_ID) annotation(Placement(visible = true, transformation(origin = {-74, 18}, extent = {{-15, -10}, {15, 10}}, rotation = 0)));
  OpalRT.Electrical.Machine.SynchronousMachine.GENROU genrou1(IBUS = IBUS, ID = M_ID, P_gen = P_gen, Q_gen = Q_gen, Vt_abs = Vt_abs, Vt_ang = Vt_ang, SB = SB, fn = fn, ZSOURCE_RE = ZSOURCE_RE, Tdo_p = Tdo_p, Tdo_s = Tdo_s, Tqo_p = Tqo_p, Tqo_s = Tqo_s, H = H, D = D, Xd = Xd, Xq = Xq, Xd_p = Xd_p, Xq_p = Xq_p, Xd_s = Xd_s, Xl = Xl, S1 = S1, S12 = S12) annotation(Placement(visible = true, transformation(origin = {31, 11}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-46, 26}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  OpalRT.NonElectrical.Connector.PwPin bus0 annotation(Placement(visible = true, transformation(origin = {76, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {76, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin TRIP annotation(Placement(visible = true, transformation(origin = {36, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpalRT.Electrical.Control.Excitation.EXST1 exst11(ID = EX_ID, TR = TR_ex, VIMIN = VIMIN_ex, VIMAX = VIMAX_ex, TC = TC_ex, TB = TB_ex, KA = KA_ex, TA = TA_ex, VRMAX = VRMAX_ex, VRMIN = VRMIN_ex, KC = KC_ex, KF = KF_ex, TF = TF_ex) annotation(Placement(visible = true, transformation(origin = {-5, 28}, extent = {{-20, -20}, {10, 10}}, rotation = 0)));
  OpalRT.Electrical.Control.TurbineGovernor.IEEEG1 ieeeg11(IBUS = 100, ID = M_ID, K = K_tg, T1 = T1_tg, T2 = T2_tg, T3 = T3_tg, Uo = Uo_tg, Uc = Uc_tg, PMAX = PMAX_tg, PMIN = PMIN_tg, T4 = T4_tg, K1 = K1_tg, K2 = K2_tg, T5 = T5_tg, K3 = K3_tg, K4 = K4_tg, T6 = T6_tg, K5 = K5_tg, K6 = K6_tg, T7 = T7_tg, K7 = K7_tg, K8 = K8_tg) annotation(Placement(visible = true, transformation(origin = {-5, -6}, extent = {{-20, -20}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dGREF annotation(Placement(visible = true, transformation(origin = {-80, -18}, extent = {{-6.5, -6.5}, {6.5, 6.5}}, rotation = 0), iconTransformation(origin = {-100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dVREF annotation(Placement(visible = true, transformation(origin = {-82, 0}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
equation
  connect(genrou1.AccPower, pSS2A1.PSS_AUX2[2]) annotation(Line(points = {{46, 7.1}, {60.006, 7.1}, {60.006, -38.1856}, {-91.9183, -38.1856}, {-91.9183, 11.1829}, {-90.009, 11.1829}, {-90.009, 11.1829}}, color = {0, 0, 127}));
  connect(genrou1.SLIP, pSS2A1.PSS_AUX2[1]) annotation(Line(points = {{46, -1}, {49.6413, -1}, {49.6413, -38.1856}, {-91.9183, -38.1856}, {-91.9183, 11.4557}, {-90.009, 11.4557}, {-90.009, 11.4557}}, color = {0, 0, 127}));
  connect(genrou1.VI, pSS2A1.VI2) annotation(Line(points = {{46, 11}, {63.2791, 11}, {63.2791, -45.8228}, {-94.9186, -45.8228}, {-94.9186, 13.9105}, {-89.4635, 13.9105}, {-89.4635, 13.9105}}, color = {0, 0, 127}));
  connect(pSS2A1.VI2, pSS2A1.VI) annotation(Line(points = {{-89, 14}, {-94.9186, 14}, {-94.9186, 20.1838}, {-90.2818, 20.1838}, {-90.2818, 20.1838}}, color = {0, 0, 127}));
  connect(ieeeg11.PMECH0, genrou1.PMECH0) annotation(Line(points = {{5, -2}, {10.3647, -2}, {10.3647, -1.36377}, {16.0925, -1.36377}, {16.0925, -1.36377}}, color = {0, 0, 127}));
  connect(ieeeg11.MBASE, genrou1.MBASE) annotation(Line(points = {{-25, -17}, {-41.1859, -17}, {-41.1859, -42.5497}, {56.4602, -42.5497}, {56.4602, 2.45479}, {46.3683, 2.45479}, {46.3683, 2.45479}}, color = {0, 0, 127}));
  connect(ieeeg11.VI, genrou1.VI) annotation(Line(points = {{-25, -11}, {-45.2773, -11}, {-45.2773, -45.8228}, {63.2791, -45.8228}, {63.2791, 10.3647}, {47.1865, 10.3647}, {47.1865, 10.3647}}, color = {0, 0, 127}));
  connect(dGREF, ieeeg11.dGREF) annotation(Line(points = {{-80, -18}, {-47.4593, -18}, {-47.4593, -3.0003}, {-30.8213, -3.0003}, {-30.8213, 0.818264}, {-25.6389, 0.818264}, {-25.6389, 0.818264}}));
  connect(dVREF, exst11.dVREF) annotation(Line(points = {{-82, 0}, {-37.3674, 0}, {-37.3674, 13.6377}, {-26.1844, 13.6377}, {-26.1844, 13.6377}}));
  connect(exst11.VI, genrou1.VI) annotation(Line(points = {{5, 32}, {63.8246, 32}, {63.8246, 10.3647}, {47.1865, 10.3647}, {47.1865, 10.3647}}, color = {0, 0, 127}));
  connect(TRIP, genrou1.TRIP) annotation(Line(points = {{36, 66}, {36.1367, 66}, {36.1367, 47.1845}, {31.1253, 47.1845}, {31.1253, 26}, {31, 26}}));
  connect(bus0, genrou1.p) annotation(Line(points = {{76, -34}, {30, -34}, {30, -2.4738}, {31, -2.4738}, {31, -4}}));
  connect(exst11.EFD0, genrou1.EFD0) annotation(Line(points = {{5, 11}, {15.7, 11}}, color = {0, 0, 127}));
  connect(exst11.EFD, genrou1.EFD) annotation(Line(points = {{5, 14}, {10, 14}, {10, 15.2}, {16, 15.2}}, color = {0, 0, 127}));
  connect(exst11.ETERM0, genrou1.ETERM0) annotation(Line(points = {{5, 17}, {10.5, 17}, {10.5, 18.5}, {15.7, 18.5}}, color = {0, 0, 127}));
  connect(exst11.EX_AUX, genrou1.EX_AUX) annotation(Line(points = {{5, 20.9}, {10.5, 20.9}, {10.5, 23}, {15.7, 23}}, color = {0, 0, 127}));
  connect(exst11.XADIFD, genrou1.XADIFD) annotation(Line(points = {{-25, 30.5}, {-34, 30.5}, {-34, 44}, {54, 44}, {54, 18.5}, {46, 18.5}}, color = {0, 0, 127}));
  connect(ieeeg11.PMECH, genrou1.PMECH) annotation(Line(points = {{5, 1}, {10, 1}, {10, 2}, {16, 2}}, color = {0, 0, 127}));
  connect(ieeeg11.SLIP, genrou1.SLIP) annotation(Line(points = {{-25, -23}, {-38, -23}, {-38, -38}, {50, -38}, {50, -1}, {46, -1}}, color = {0, 0, 127}));
  connect(const.y, exst11.VUEL) annotation(Line(points = {{-40.5, 26}, {-25, 26}}, color = {0, 0, 127}));
  connect(exst11.VOEL, exst11.VUEL) annotation(Line(points = {{-25, 21.8}, {-34, 21.8}, {-34, 26}, {-25, 26}}, color = {0, 0, 127}));
  connect(pSS2A1.VOTHSG, exst11.VOTHSG) annotation(Line(points = {{-59, 12}, {-42, 12}, {-42, 17.6}, {-25, 17.6}}, color = {0, 0, 127}));
  connect(pSS2A1.PSS_AUX2, pSS2A1.PSS_AUX) annotation(Line(points = {{-88.7, 12}, {-92, 12}, {-92, 18}, {-89, 18}}, color = {0, 0, 127}));
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Text(origin = {-51.82, 7.29}, extent = {{-38.61, 12.3}, {138.15, -25.51}}, textString = "GENROU_EXST1_PSS2A_IEEEG1"), Rectangle(origin = {-0.683371, -0.569476}, extent = {{-99.5444, 98.7472}, {99.5444, -98.7472}}), Text(origin = {77.2165, -60.4778}, extent = {{-15.7169, 9.23023}, {4.55513, -5.58558}}, textString = "PIN"), Text(origin = {-68.1086, 61.7315}, extent = {{-28.7, 7.52}, {28.7, -7.52}}, textString = "dGREF"), Text(origin = {-73.8448, -60.1801}, extent = {{-28.7, 7.52}, {28.7, -7.52}}, textString = "TRIP")}));
end GENROU_EXST1_PSS2A_IEEEG1;