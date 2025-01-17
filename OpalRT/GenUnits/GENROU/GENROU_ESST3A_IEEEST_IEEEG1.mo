within OpalRT.GenUnits.GENROU;
class GENROU_ESST3A_IEEEST_IEEEG1
  constant Real pi = Modelica.Constants.pi;
  // GENROU Parameters
  parameter Integer IBUS = 100 "Located system bus" annotation(Dialog(tab = "General"));
  parameter String M_ID = "M1" "Machine Identifier" annotation(Dialog(tab = "GENROU"));
  parameter Real P_gen = 900 "Bus Active Power, MW" annotation(Dialog(tab = "General"));
  parameter Real Q_gen = 200 "Bus Reactive Power, MVAR" annotation(Dialog(tab = "General"));
  parameter Real Vt_abs = 1.03 "Bus Voltage Magnitude, p.u." annotation(Dialog(tab = "General"));
  parameter Real Vt_ang = -10.96 "Bus Voltage Angle, deg." annotation(Dialog(tab = "General"));
  parameter Real SB = 1000 "Machine Base Power, MVA" annotation(Dialog(tab = "General"));
  parameter Real fn = 50 "Nominal frequency" annotation(Dialog(tab = "General"));
  parameter Real ZSOURCE_RE = 0 "Machine source impedence" annotation(Dialog(tab = "GENROU"));
  //parameter Real ZSOURCE_IM = Xq_s "Machine source impedence" annotation(Dialog(tab = "GENROU"));
  parameter Real Tdo_p = 7 "d-axis transient time constant" annotation(Dialog(tab = "GENROU"));
  parameter Real Tdo_s = 0.3 "d-axis sub-transient time constant, s" annotation(Dialog(tab = "GENROU"));
  parameter Real Tqo_p = 0.04 "q-axis transient time constant, s" annotation(Dialog(tab = "GENROU"));
  parameter Real Tqo_s = 0.4 "d-axis sub-transient time constant, s" annotation(Dialog(tab = "GENROU"));
  parameter Real H = 2.6 "Inertia constant" annotation(Dialog(tab = "GENROU"));
  parameter Real D = 0 "Speed damping" annotation(Dialog(tab = "GENROU"));
  parameter Real Xd = 0.67 "d-axis reactance, p.u." annotation(Dialog(tab = "GENROU"));
  parameter Real Xq = 0.62 "q-axis reactance, p.u." annotation(Dialog(tab = "GENROU"));
  parameter Real Xd_p = 0.3 "d-axis transient reactance, p.u." annotation(Dialog(tab = "GENROU"));
  parameter Real Xq_p = 0.3 "q-axis transient reactance, p.u." annotation(Dialog(tab = "GENROU"));
  parameter Real Xd_s = 0.01 "d-axis sub-transient reactance, p.u." annotation(Dialog(tab = "GENROU"));
  //parameter Real Xq_s = Xd_s "q-axis sub-transient reactance, p.u." annotation(Dialog(tab = "GENROU"));
  parameter Real Xl = 0.04 "Reactance due to the leakage flux which does not cross the air gap, p.u." annotation(Dialog(tab = "GENROU"));
  parameter Real S1 = 0.1 "saturation function value for 1 p.u. input" annotation(Dialog(tab = "GENROU"));
  parameter Real S12 = 0.2 "saturation function value for 1.2 p.u. input" annotation(Dialog(tab = "GENROU"));
  // ESST3A parameters
  parameter Real TR_ex = 0.02 "(sec) regulator input filter time constant" annotation(Dialog(tab = "ESST3A"));
  parameter Real VIMAX_ex = 10 "(pu) Voltage regulator input maximum limit" annotation(Dialog(tab = "ESST3A"));
  parameter Real VIMIN_ex = -10 "(pu) Voltage regulator input minimum limit" annotation(Dialog(tab = "ESST3A"));
  parameter Real KM_ex = 0.02 "Forward gain constant of the inner loop field regulator" annotation(Dialog(tab = "ESST3A"));
  parameter Real TC_ex = 1 " lead time constant of voltage regulator (s)" annotation(Dialog(tab = "ESST3A"));
  parameter Real TB_ex = 0.1 " lag time constant of voltage regulator (s)" annotation(Dialog(tab = "ESST3A"));
  parameter Real KA_ex = 10 "(pu) voltage regulator gain" annotation(Dialog(tab = "ESST3A"));
  parameter Real TA_ex = 0.02 "(sec) regulator time constant" annotation(Dialog(tab = "ESST3A"));
  parameter Real VRMAX_ex = 10 "(pu) regulator output maximum limit" annotation(Dialog(tab = "ESST3A"));
  parameter Real VRMIN_ex = -10 "(pu) regulator output minimum limit" annotation(Dialog(tab = "ESST3A"));
  parameter Real KG_ex = 1 "Feedback gain constant of the inner loop field regulator" annotation(Dialog(tab = "ESST3A"));
  parameter Real KP_ex = 1 "Potential circuit gain coefficient" annotation(Dialog(tab = "ESST3A"));
  parameter Real KI_ex = 0.02 "Potential circuit gain coefficient" annotation(Dialog(tab = "ESST3A"));
  parameter Real VBMAX_ex = 10 "(pu) regulator output maximum limit" annotation(Dialog(tab = "ESST3A"));
  parameter Real KC_ex = 1 "Rectifier loading factor proportional to commutating reactance" annotation(Dialog(tab = "ESST3A"));
  parameter Real XL_ex = 0.02 "Reactance associated with potential source" annotation(Dialog(tab = "ESST3A"));
  parameter Real VGMAX_ex = 10 "(pu) regulator output maximum limit" annotation(Dialog(tab = "ESST3A"));
  parameter Real THETAP_ex = 0.52 "Potential circuit phase angle (degrees)" annotation(Dialog(tab = "ESST3A"));
  parameter Real TM_ex = 0.02 "Forward time constant of the inner loop field regulator" annotation(Dialog(tab = "ESST3A"));
  parameter Real VMMAX_ex = 10 "(pu) regulator output maximum limit" annotation(Dialog(tab = "ESST3A"));
  parameter Real VMMIN_ex = -10 "(pu) regulator output minimum limit" annotation(Dialog(tab = "ESST3A"));
  //IEEEST parameters
  parameter Real A1_pss = 2 annotation(Dialog(tab = "IEEEST"));
  parameter Real A2_pss = 1 annotation(Dialog(tab = "IEEEST"));
  parameter Real A3_pss = 2 annotation(Dialog(tab = "IEEEST"));
  parameter Real A4_pss = 1 annotation(Dialog(tab = "IEEEST"));
  parameter Real A5_pss = 2 annotation(Dialog(tab = "IEEEST"));
  parameter Real A6_pss = 1 annotation(Dialog(tab = "IEEEST"));
  parameter Real T1_pss = 0.03 "(sec)" annotation(Dialog(tab = "IEEEST"));
  parameter Real T2_pss = 0.01 "(sec)" annotation(Dialog(tab = "IEEEST"));
  parameter Real T3_pss = 0.02 "(sec)" annotation(Dialog(tab = "IEEEST"));
  parameter Real T4_pss = 0.01 "(sec)" annotation(Dialog(tab = "IEEEST"));
  parameter Real T5_pss = 0.2 "(sec)" annotation(Dialog(tab = "IEEEST"));
  parameter Real T6_pss = 0.1 "(>0)(sec)" annotation(Dialog(tab = "IEEEST"));
  parameter Real KS_pss = -5 annotation(Dialog(tab = "IEEEST"));
  parameter Real LSMAX_pss = 6 annotation(Dialog(tab = "IEEEST"));
  parameter Real LSMIN_pss = -6 annotation(Dialog(tab = "IEEEST"));
  parameter Real VCU_pss = 1 "(pu) (if equal zero, ignored)" annotation(Dialog(tab = "IEEEST"));
  parameter Real VCL_pss = 1 "(pu) (if equal zero, ignored)" annotation(Dialog(tab = "IEEEST"));
  // IEEEST ICONs
  parameter Real M0_pss = 1 "Stabilizer input code" annotation(Dialog(tab = "IEEEST", group = "ICONs"));
  parameter Real M1_pss = 0 "IB, remote bus number" annotation(Dialog(tab = "IEEEST", group = "ICONs"));
  // IEEEG1 parameters
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
  OpalRT.Electrical.Machine.SynchronousMachine.GENROU genrou(IBUS = IBUS, ID = M_ID, P_gen = P_gen, Q_gen = Q_gen, Vt_abs = Vt_abs, Vt_ang = Vt_ang, SB = SB, fn = fn, ZSOURCE_RE = ZSOURCE_RE, Tdo_p = Tdo_p, Tdo_s = Tdo_s, Tqo_p = Tqo_p, Tqo_s = Tqo_s, H = H, D = D, Xd = Xd, Xq = Xq, Xd_p = Xd_p, Xq_p = Xq_p, Xd_s = Xd_s, Xl = Xl, S1 = S1, S12 = S12) annotation(Placement(visible = true, transformation(origin = {61.875, -1.875}, extent = {{-18.125, -18.125}, {18.125, 18.125}}, rotation = 0)));
  OpalRT.Electrical.Control.Stabilizer.IEEEST ieeest(ID = M_ID, A1 = A1_pss, A2 = A2_pss, A3 = A3_pss, A4 = A4_pss, A5 = A5_pss, A6 = A6_pss, T1 = T1_pss, T2 = T2_pss, T3 = T3_pss, T4 = T4_pss, T5 = T5_pss, T6 = T6_pss, KS = KS_pss, LSMAX = LSMAX_pss, LSMIN = LSMIN_pss, VCU = VCU_pss, VCL = VCL_pss, M1 = M1_pss, M0 = M0_pss) annotation(Placement(visible = true, transformation(origin = {-69, 17}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  OpalRT.Electrical.Control.TurbineGovernor.IEEEG1 ieeeg1(K = K_tg, T1 = T1_tg, T2 = T2_tg, T3 = T3_tg, Uo = Uo_tg, Uc = Uc_tg, PMAX = PMAX_tg, PMIN = PMIN_tg, T4 = T4_tg, K1 = K1_tg, K2 = K2_tg, T5 = T5_tg, K3 = K3_tg, K4 = K4_tg, T6 = T6_tg, K5 = K5_tg, K6 = K6_tg, T7 = T7_tg, K7 = K7_tg, K8 = K8_tg, ID = M_ID) annotation(Placement(visible = true, transformation(origin = {-15, -25}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = noVOEL) annotation(Placement(visible = true, transformation(origin = {-50, 14}, extent = {{-2.5, -2.5}, {2.5, 2.5}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant constant2(k = noVUEL) annotation(Placement(visible = true, transformation(origin = {-63, 43}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  OpalRT.Electrical.Control.Excitation.ESST3A esst3a(TR = TR_ex, VIMAX = VIMAX_ex, VIMIN = VIMIN_ex, KM = KM_ex, TC = TC_ex, TB = TB_ex, KA = KA_ex, TA = TA_ex, VRMAX = VRMAX_ex, VRMIN = VRMIN_ex, KG = KG_ex, KP = KP_ex, KI = KI_ex, VBMAX = VBMAX_ex, KC = KC_ex, XL = XL_ex, VGMAX = VGMAX_ex, THETAP = THETAP_ex, TM = TM_ex, VMMAX = VMMAX_ex, VMMIN = VMMIN_ex) annotation(Placement(visible = true, transformation(origin = {-17.5, 13.5}, extent = {{-16.5, -16.5}, {16.5, 16.5}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin TRIP annotation(Placement(visible = true, transformation(origin = {60, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-96, 68}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dVREF annotation(Placement(visible = true, transformation(origin = {-84, -3}, extent = {{-5, -5}, {5, 5}}, rotation = 0), iconTransformation(origin = {-100, -62}, extent = {{-11.625, -11.625}, {11.625, 11.625}}, rotation = 0)));
  OpalRT.NonElectrical.Connector.PwPin bus0 annotation(Placement(visible = true, transformation(origin = {62, -40}, extent = {{-5, -5}, {5, 5}}, rotation = 0), iconTransformation(origin = {102, -60}, extent = {{-11.5, -11.5}, {11.5, 11.5}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dGREF annotation(Placement(visible = true, transformation(origin = {-84, -20}, extent = {{-5, -5}, {5, 5}}, rotation = 0), iconTransformation(origin = {96, 66}, extent = {{10.5, -10.5}, {-10.5, 10.5}}, rotation = 0)));
  parameter Real noVOEL(fixed = false, start = 1);
  parameter Real noVUEL(fixed = false, start = 1);
initial equation
  noVOEL = 0;
  noVUEL = -Modelica.Constants.inf;
equation
  connect(genrou.AccPower, ieeest.PSS_AUX2[2]) annotation(Line(points = {{80, -6.5875}, {95.3728, -6.5875}, {95.3728, -55.0129}, {-91.0026, -55.0129}, {-91.0026, 7.96915}, {-85.347, 7.96915}, {-85.347, 7.96915}}, color = {0, 0, 127}));
  connect(genrou.SLIP, ieeest.PSS_AUX2[1]) annotation(Line(points = {{80, -16.375}, {93.0591, -16.375}, {93.0591, -55.0129}, {-91.2596, -55.0129}, {-91.2596, 7.45501}, {-84.5758, 7.45501}, {-84.5758, 7.45501}}, color = {0, 0, 127}));
  connect(genrou.VI, ieeest.VI) annotation(Line(points = {{80, -1.875}, {96.144, -1.875}, {96.144, 74.5501}, {-91.0026, 74.5501}, {-91.0026, 20.5656}, {-85.347, 20.5656}, {-85.347, 20.5656}}, color = {0, 0, 127}));
  connect(ieeest.VI2, ieeest.VI) annotation(Line(points = {{-84, 11}, {-88.4319, 11}, {-88.4319, 20.5656}, {-84.5758, 20.5656}, {-84.5758, 20.5656}}, color = {0, 0, 127}));
  connect(ieeest.PSS_AUX2, ieeest.PSS_AUX) annotation(Line(points = {{-84, 8}, {-90.4884, 8}, {-90.4884, 16.9666}, {-85.09, 16.9666}, {-85.09, 16.9666}}, color = {0, 0, 127}));
  connect(genrou.MBASE, ieeeg1.MBASE) annotation(Line(points = {{80, -11.6625}, {94.6015, -11.6625}, {94.6015, -59.126}, {-37.7892, -59.126}, {-37.7892, -30.5913}, {-30.5913, -30.5913}, {-30.5913, -30.5913}}, color = {0, 0, 127}));
  connect(genrou.VI, ieeeg1.VI) annotation(Line(points = {{80, -1.875}, {96.144, -1.875}, {96.144, -63.7532}, {-41.3882, -63.7532}, {-41.3882, -24.6787}, {-30.5913, -24.6787}, {-30.5913, -24.6787}}, color = {0, 0, 127}));
  connect(dGREF, ieeeg1.dGREF) annotation(Line(points = {{-84, -20}, {-53.4704, -20}, {-53.4704, -12.5964}, {-31.1054, -12.5964}, {-31.1054, -12.5964}}));
  connect(dVREF, esst3a.dVREF) annotation(Line(points = {{-84, -3}, {-45.2442, -3}, {-45.2442, 3.08483}, {-33.9332, 3.08483}, {-33.9332, 3.08483}}));
  connect(esst3a.VI, genrou.VI) annotation(Line(points = {{-1, 23.4}, {89.9743, 23.4}, {89.9743, -1.54242}, {81.491, -1.54242}, {81.491, -1.54242}}, color = {0, 0, 127}));
  connect(constant2.y, esst3a.VUEL) annotation(Line(points = {{-55.3, 43}, {-49.2212, 43}, {-49.2212, 18.6916}, {-39.5639, 18.6916}, {-39.5639, 16.5109}, {-35, 16.8}, {-34, 16.8}}, color = {0, 0, 127}));
  connect(genrou.EFD0, esst3a.EFD0) annotation(Line(points = {{43.3875, -1.875}, {1.8648, -1.875}, {1.8648, 8.88178e-16}, {-5, 0.3}, {-1, 0.3}}, color = {0, 0, 127}));
  connect(esst3a.EFD, genrou.EFD) annotation(Line(points = {{-1, 3.6}, {4.8951, 3.6}, {4.8951, 3.0303}, {43.75, 3.0303}, {43.75, 3.2}}, color = {0, 0, 127}));
  connect(esst3a.ETERM0, genrou.ETERM0) annotation(Line(points = {{-1, 6.9}, {8.62471, 6.9}, {8.62471, 6.75991}, {43.3875, 6.75991}, {43.3875, 7.1875}}, color = {0, 0, 127}));
  connect(genrou.XADIFD, esst3a.XADIFD) annotation(Line(points = {{80, 7.1875}, {95.1049, 7.1875}, {95.1049, 70.1632}, {-46.1538, 70.1632}, {-46.1538, 21.2121}, {-35.4312, 21.75}, {-34, 21.75}}, color = {0, 0, 127}));
  connect(esst3a.VOEL, const.y) annotation(Line(points = {{-34, 12.18}, {-43.1235, 12.18}, {-43.1235, 15.1515}, {-45.2214, 15.1515}, {-47.25, 15.1515}, {-47.25, 14}}, color = {0, 0, 127}));
  connect(ieeest.VOTHSG, esst3a.VOTHSG) annotation(Line(points = {{-54, 8}, {-36.3636, 8}, {-34, 7.56}, {-34, 7.56}}, color = {0, 0, 127}));
  connect(genrou.EX_AUX, esst3a.EX_AUX) annotation(Line(points = {{43.3875, 12.625}, {4.33295, 12.625}, {4.33295, 11.1745}, {-0.912201, 11.1745}, {-1, 10.7184}, {-1, 11.19}}, color = {0, 0, 127}));
  connect(genrou.SLIP, ieeeg1.SLIP) annotation(Line(points = {{80, -16.375}, {93.007, -16.375}, {93.007, -54.7786}, {-31.1043, -54.9359}, {-34.1385, -54.9548}, {-34.133, -37.6231}, {-30, -37}}, color = {0, 0, 127}));
  connect(genrou.p, bus0) annotation(Line(points = {{61.875, -20}, {61.7716, -20}, {62, -30.303}, {62, -40}}));
  connect(ieeeg1.PMECH, genrou.PMECH) annotation(Line(points = {{-5.55112e-16, -13}, {7.69231, -13}, {7.69231, -13.2867}, {43.75, -13.2867}, {43.75, -12.75}}, color = {0, 0, 127}));
  connect(ieeeg1.PMECH0, genrou.PMECH0) annotation(Line(points = {{-5.55112e-16, -16}, {10.2564, -16}, {10.2564, -16.7832}, {43.75, -16.7832}, {43.75, -16.375}}, color = {0, 0, 127}));
  connect(TRIP, genrou.TRIP) annotation(Line(points = {{60, 40}, {61.3054, 40}, {61.3054, 17.2494}, {61.3054, 17.2494}}));
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Rectangle(origin = {-70.8096, 84.7206}, extent = {{-27.252, 13.569}, {169.327, -183.01}}), Text(origin = {-53.8941, -63.7106}, extent = {{-31.93, 18.81}, {14.1319, -11.7568}}, textString = "dVREF"), Text(origin = {63.3853, 66.5964}, extent = {{-20.07, 13.45}, {20.07, -13.45}}, textString = "dGREF"), Text(origin = {-60.9276, 59.6372}, extent = {{-29.53, 19.27}, {21.7763, -1.48209}}, textString = "TRIP"), Text(origin = {63.8582, -57.3586}, extent = {{-14.6, 11.97}, {20.3013, -15.8469}}, textString = "bus0"), Text(origin = {-12.88, 14.9159}, extent = {{-80.62, 26.15}, {107.99, -51.36}}, textString = "GENROU_ESST3A_IEEEST_IEEEG1")}));
end GENROU_ESST3A_IEEEST_IEEEG1;
