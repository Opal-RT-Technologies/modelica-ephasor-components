within OpalRT.GenUnits.GENROU;
class GENROU_ESST4B_PSS2A_TGOV1
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
  // TGOV1 Parameters
  parameter Real R_tg = 0.06 annotation(Dialog(tab = "TGOV1 Parameters"));
  parameter Real T1_tg = 0.5 "(>0) (sec)" annotation(Dialog(tab = "TGOV1 Parameters"));
  parameter Real VMAX_tg = 1 annotation(Dialog(tab = "TGOV1 Parameters"));
  parameter Real VMIN_tg = 0 annotation(Dialog(tab = "TGOV1 Parameters"));
  parameter Real T2_tg = 1 annotation(Dialog(tab = "TGOV1 Parameters"));
  parameter Real T3_tg = 1 "(>0) (sec)" annotation(Dialog(tab = "TGOV1 Parameters"));
  parameter Real Dt_tg = 0 annotation(Dialog(tab = "TGOV1 Parameters"));
  // PSS2A Parameters
  parameter Real TW1_pss = 1 ">0" annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real TW2_pss = 4 "To bypass second washout, first signal: set Tw2 = 0" annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real T6_pss = 0.01 "To bypass first signal transducer: set T6 = 0" annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real TW3_pss = 1 ">0" annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real TW4_pss = 1 "To bypass second washout, second signal: set Tw4 = 0" annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real T7_pss = 2 "To bypass second signal transducer: set T7 = 0" annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real KS2_pss = 0.4 "T7/(2*H)" annotation(Dialog(tab = "PSS2A Parameters"));
  //T7/(2*H);
  parameter Real KS3_pss = 10 annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real T8_pss = 0.3 annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real T9_pss = 0.15 ">0" annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real KS1_pss = 20 annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real T1_pss = 0.4 "To bypass first lead-lag: set T1 = T2 = 0" annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real T2_pss = 0.07 annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real T3_pss = 0.3 "To bypass first lead-lag: set T1 = T2 = 0" annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real T4_pss = 0.06 annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real VSTMAX_pss = 0.5 annotation(Dialog(tab = "PSS2A Parameters"));
  parameter Real VSTMIN_pss = -0.5 annotation(Dialog(tab = "PSS2A Parameters"));
  // PSS2A ICONs
  parameter Real M0_pss = 2 "ICS1, first stabilizer input code" annotation(Dialog(tab = "PSS2A Parameters", group = "ICONs"));
  parameter Real M1_pss = 0 "REMBUS1, first remote bus number" annotation(Dialog(tab = "PSS2A Parameters", group = "ICONs"));
  parameter Real M2_pss = 2 "ICS2, second stabilizer input code" annotation(Dialog(tab = "PSS2A Parameters", group = "ICONs"));
  parameter Real M3_pss = 0 "REMBUS2, second remote bus number" annotation(Dialog(tab = "PSS2A Parameters", group = "ICONs"));
  parameter Real M4_pss = 1 "M, ramp tracking filter" annotation(Dialog(tab = "PSS2A Parameters", group = "ICONs"));
  parameter Real M5_pss = 1 "N, ramp tracking filter" annotation(Dialog(tab = "PSS2A Parameters", group = "ICONs"));
  //
  //
  //****************************
  //
  //
  OpalRT.Electrical.Control.Stabilizer.PSS2A pss2a1(M2 = M2_pss, TW1 = TW1_pss, TW2 = TW2_pss, T6 = T6_pss, TW3 = TW3_pss, TW4 = TW4_pss, T7 = T7_pss, KS2 = KS2_pss, KS3 = KS3_pss, T8 = T8_pss, T9 = T9_pss, KS1 = KS1_pss, T1 = T1_pss, T2 = T2_pss, T3 = T3_pss, T4 = T4_pss, VSTMAX = VSTMAX_pss, VSTMIN = VSTMIN_pss, M0 = M0_pss, M1 = M1_pss, M3 = M3_pss, M4 = M4_pss, M5 = M5_pss, initType = Modelica.Blocks.Types.Init.InitialOutput, ID = M_ID) annotation(Placement(visible = true, transformation(origin = {-54, 2}, extent = {{-15, -10}, {15, 10}}, rotation = 0)));
  OpalRT.Electrical.Machine.SynchronousMachine.GENROU genrou1(IBUS = IBUS, ID = M_ID, P_gen = P_gen, Q_gen = Q_gen, Vt_abs = Vt_abs, Vt_ang = Vt_ang, SB = SB, fn = fn, ZSOURCE_RE = ZSOURCE_RE, Tdo_p = Tdo_p, Tdo_s = Tdo_s, Tqo_p = Tqo_p, Tqo_s = Tqo_s, H = H, D = D, Xd = Xd, Xq = Xq, Xd_p = Xd_p, Xq_p = Xq_p, Xd_s = Xd_s, Xl = Xl, S1 = S1, S12 = S12) annotation(Placement(visible = true, transformation(origin = {55, -15}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-18, 12}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  OpalRT.Electrical.Control.Excitation.ESST4B esst4b1(TR = TR_ex, KPR = KPR_ex, KIR = KIR_ex, VRMAX = VRMAX_ex, VRMIN = VRMIN_ex, TA = TA_ex, KPM = KPM_ex, KIM = KIM_ex, VMMAX = VMMAX_ex, VMMIN = VMMIN_ex, KG = KG_ex, KP = KP_ex, KI = KI_ex, VBMAX = VBMAX_ex, KC = KC_ex, XL = XL_ex, THETAP = THETAP_ex) annotation(Placement(visible = true, transformation(origin = {15, -3}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  OpalRT.Electrical.Control.TurbineGovernor.TGOV1 tgov11(R = R_tg, T1 = T1_tg, VMAX = VMAX_tg, VMIN = VMIN_tg, T2 = T2_tg, T3 = T3_tg, Dt = Dt_tg) annotation(Placement(visible = true, transformation(origin = {14, -34}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dVREF annotation(Placement(visible = true, transformation(origin = {-60, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin TRIP annotation(Placement(visible = true, transformation(origin = {60, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dGREF annotation(Placement(visible = true, transformation(origin = {-34, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant constant1(k = noVOEL) annotation(Placement(visible = true, transformation(origin = {-32, 12}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  parameter Real noVOEL(fixed = false, start = 1);
  OpalRT.NonElectrical.Connector.PwPin bus0 annotation(Placement(visible = true, transformation(origin = {64, -42}, extent = {{-6, -6}, {6, 6}}, rotation = 0), iconTransformation(origin = {100, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
initial equation
  noVOEL = Modelica.Constants.inf;
equation
  connect(genrou1.VI, pss2a1.VI2) annotation(Line(points = {{70, -15}, {83.4629, -15}, {83.4629, -74.462}, {-72.8255, -74.462}, {-72.8255, -2.45479}, {-69.0069, -2.45479}, {-69.0069, -2.45479}}, color = {0, 0, 127}));
  connect(genrou1.AccPower, pss2a1.PSS_AUX2[2]) annotation(Line(points = {{70, -18.9}, {88.6452, -18.9}, {88.6452, -82.3719}, {-73.9165, -82.3719}, {-73.9165, -4.63683}, {-68.7341, -4.63683}, {-68.7341, -4.63683}}, color = {0, 0, 127}));
  connect(pss2a1.PSS_AUX2[1], genrou1.SLIP) annotation(Line(points = {{-69, -4}, {-73.9165, -4}, {-73.9165, -82.3719}, {88.6452, -82.3719}, {88.6452, -27.0027}, {71.1889, -27.0027}, {71.1889, -27.0027}}, color = {0, 0, 127}));
  connect(pss2a1.VI2, pss2a1.VI) annotation(Line(points = {{-69, -2}, {-72.8255, -2}, {-72.8255, 4.09132}, {-69.2797, 4.09132}, {-69.2797, 4.09132}}, color = {0, 0, 127}));
  connect(esst4b1.VI, genrou1.VI) annotation(Line(points = {{30, 6}, {83.4629, 6}, {83.4629, -15.0015}, {70.6434, -15.0015}, {70.6434, -15.0015}}, color = {0, 0, 127}));
  connect(genrou1.MBASE, tgov11.MBASE) annotation(Line(points = {{70, -23.1}, {76.644, -23.1}, {76.644, -68.4614}, {-9.27365, -68.4614}, {-9.27365, -40.0949}, {-1.63653, -40.0949}, {-1.63653, -40.0949}}, color = {0, 0, 127}));
  connect(genrou1.SLIP, tgov11.SLIP) annotation(Line(points = {{70, -27}, {73.9165, -27}, {73.9165, -63.8246}, {-5.72785, -63.8246}, {-5.72785, -45.8228}, {-0.818264, -45.8228}, {-0.818264, -45.8228}}, color = {0, 0, 127}));
  connect(genrou1.VI, tgov11.VI) annotation(Line(points = {{70, -15}, {83.4629, -15}, {83.4629, -74.462}, {-14.7287, -74.462}, {-14.7287, -33.8216}, {-1.09102, -33.8216}, {-1.09102, -33.8216}}, color = {0, 0, 127}));
  connect(bus0, genrou1.p) annotation(Line(points = {{64, -42}, {54, -42}, {54, -28.4738}, {55, -28.4738}, {55, -30}}));
  connect(tgov11.PMECH0, genrou1.PMECH0) annotation(Line(points = {{29, -25}, {32.185, -25}, {32.185, -27.0027}, {39.0039, -27.0027}, {39.0039, -27.0027}}, color = {0, 0, 127}));
  connect(dGREF, tgov11.dGREF) annotation(Line(points = {{-34, -30}, {-13.9105, -30}, {-13.9105, -22.6386}, {0.272755, -22.6386}, {0.272755, -22.6386}}));
  connect(dVREF, esst4b1.dVREF) annotation(Line(points = {{-60, -20}, {-43.6407, -20}, {-43.6407, -12.274}, {-0.272755, -12.274}, {-0.272755, -12.274}}));
  connect(TRIP, genrou1.TRIP) annotation(Line(points = {{60, 40}, {59.4533, 40}, {59.4533, 21.8679}, {54.8975, 21.8679}, {54.8975, 0}, {55, 0}}));
  connect(esst4b1.EFD0, genrou1.EFD0) annotation(Line(points = {{30, -15}, {36, -15}, {36, -15}, {39.7, -15}}, color = {0, 0, 127}));
  connect(esst4b1.EFD, genrou1.EFD) annotation(Line(points = {{30, -12}, {36, -12}, {36, -10.8}, {40, -10.8}}, color = {0, 0, 127}));
  connect(esst4b1.ETERM0, genrou1.ETERM0) annotation(Line(points = {{30, -9}, {36, -9}, {36, -7.5}, {39.7, -7.5}}, color = {0, 0, 127}));
  connect(esst4b1.EX_AUX, genrou1.EX_AUX) annotation(Line(points = {{30, -5.1}, {36, -5.1}, {36, -3}, {39.7, -3}}, color = {0, 0, 127}));
  connect(esst4b1.XADIFD, genrou1.XADIFD) annotation(Line(points = {{0, 4.5}, {-8, 4.5}, {-8, 18}, {74, 18}, {74, -7.5}, {70, -7.5}}, color = {0, 0, 127}));
  connect(tgov11.PMECH, genrou1.PMECH) annotation(Line(points = {{29, -22}, {33.5, -22}, {33.5, -24}, {40, -24}}, color = {0, 0, 127}));
  connect(pss2a1.VOTHSG, esst4b1.VOTHSG) annotation(Line(points = {{-39, -4}, {-32, -4}, {-32, -8.4}, {0, -8.4}}, color = {0, 0, 127}));
  connect(pss2a1.PSS_AUX2, pss2a1.PSS_AUX) annotation(Line(points = {{-68.7, -4}, {-74, -4}, {-74, 2}, {-69, 2}}, color = {0, 0, 127}));
  connect(esst4b1.VUEL, const.y) annotation(Line(points = {{0, 0}, {-10, 0}, {-10, 12}, {-12.5, 12}}, color = {0, 0, 127}));
  connect(esst4b1.VOEL, constant1.y) annotation(Line(points = {{0, -4.2}, {-24, -4.2}, {-24, 12}, {-26.5, 12}}, color = {0, 0, 127}));
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Text(origin = {-49.9977, 44.1921}, extent = {{-38.61, 12.3}, {138.15, -25.51}}, textString = "GENROU_ESST4B_PSS2A_TGOV1"), Rectangle(origin = {-0.683371, -0.569476}, extent = {{-99.5444, 98.7472}, {99.5444, -98.7472}}), Text(origin = {77.6721, -81.4345}, extent = {{-15.7169, 9.23023}, {4.55513, -5.58558}}, textString = "PIN"), Text(origin = {-69.3021, 82.528}, extent = {{-15.72, 9.23}, {24.3778, -14.246}}, textString = "TRIP"), Text(origin = {-70.9401, -74.6951}, extent = {{-15.72, 9.23}, {35.7673, -17.6629}}, textString = "dVREF"), Text(origin = {-70.5292, 4.06993}, extent = {{-15.72, 9.23}, {35.77, -17.66}}, textString = "dGREF")}));
end GENROU_ESST4B_PSS2A_TGOV1;
