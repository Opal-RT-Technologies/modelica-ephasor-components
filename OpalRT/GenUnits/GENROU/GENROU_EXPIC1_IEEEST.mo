within OpalRT.GenUnits.GENROU;
class GENROU_EXPIC1_IEEEST
   parameter Real partType = 1;
  // GENROU Parameters
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
  // EXPIC1 Parameters
  parameter Real TR_ex = 0.1 "(sec)" annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real KA_ex = 0.2 annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real TA1_ex = 12 "(sec)" annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real VR1_ex = 5 "or zero" annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real VR2_ex = -5 annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real TA2_ex = 10 "(sec)" annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real TA3_ex = 400 annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real TA4_ex = 5 "(sec)" annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real VRMAX_ex = 5 "or zero" annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real VRMIN_ex = -5 annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real KF_ex = 0.2 annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real TF1_ex = 1.2 "(>0) (sec)" annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real TF2_ex = 1.2 "(>0) (sec)" annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real EFDMAX_ex = 5 "or zero" annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real EFDMIN_ex = -5 annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real KE_ex = 0.2 annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real TE_ex = 0.08 "(sec)" annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real E1_ex = 4 annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real SE_E1_ex = 0.4 annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real E2_ex = 5 annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real SE_E2_ex = 0.5 annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real KP_ex = 0.4 annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real KI_ex = 0.5 "or zero" annotation(Dialog(tab = "EXPIC1 Parameters"));
  parameter Real KC_ex = 0.4 annotation(Dialog(tab = "EXPIC1 Parameters"));
  //
  // IEEEST Parameters
  parameter Real A1_pss = 0 annotation(Dialog(tab = "IEEEST Parameters"));
  parameter Real A2_pss = 0 annotation(Dialog(tab = "IEEEST Parameters"));
  parameter Real A3_pss = 0 annotation(Dialog(tab = "IEEEST Parameters"));
  parameter Real A4_pss = 0 annotation(Dialog(tab = "IEEEST Parameters"));
  parameter Real A5_pss = 0 annotation(Dialog(tab = "IEEEST Parameters"));
  parameter Real A6_pss = 0 annotation(Dialog(tab = "IEEEST Parameters"));
  parameter Real T1_pss = 0.03 "(sec)" annotation(Dialog(tab = "IEEEST Parameters"));
  parameter Real T2_pss = 0.01 "(sec)" annotation(Dialog(tab = "IEEEST Parameters"));
  parameter Real T3_pss = 0.02 "(sec)" annotation(Dialog(tab = "IEEEST Parameters"));
  parameter Real T4_pss = 0.01 "(sec)" annotation(Dialog(tab = "IEEEST Parameters"));
  parameter Real T5_pss = 0.2 "(sec)" annotation(Dialog(tab = "IEEEST Parameters"));
  parameter Real T6_pss = 0.1 "(>0)(sec)" annotation(Dialog(tab = "IEEEST Parameters"));
  parameter Real KS_pss = -5 annotation(Dialog(tab = "IEEEST Parameters"));
  parameter Real LSMAX_pss = 6 annotation(Dialog(tab = "IEEEST Parameters"));
  parameter Real LSMIN_pss = -6 annotation(Dialog(tab = "IEEEST Parameters"));
  parameter Real VCU_pss = 1 "(pu) (if equal zero, ignored)" annotation(Dialog(tab = "IEEEST Parameters"));
  parameter Real VCL_pss = 1 "(pu) (if equal zero, ignored)" annotation(Dialog(tab = "IEEEST Parameters"));
  // IEEEST ICONs
  parameter Real M0_pss = 1 "Stabilizer input code" annotation(Dialog(tab = "IEEEST Parameters", group = "ICONs"));
  parameter Real M1_pss = 1 "IB, remote bus number" annotation(Dialog(tab = "IEEEST Parameters", group = "ICONs"));
  OpalRT.Electrical.Control.Excitation.EXPIC1 expic11(TR = TR_ex, KA = KA_ex, TA1 = TA1_ex, VR1 = VR1_ex, VR2 = VR2_ex, TA2 = TA2_ex, TA3 = TA3_ex, TA4 = TA4_ex, VRMAX = VRMAX_ex, VRMIN = VRMIN_ex, KF = KF_ex, TF1 = TF1_ex, TF2 = TF2_ex, EFDMAX = EFDMAX_ex, EFDMIN = EFDMIN_ex, KE = KE_ex, TE = TE_ex, E1 = E1_ex, SE_E1 = SE_E1_ex, E2 = E2_ex, SE_E2 = SE_E2_ex, KP = KP_ex, KI = KI_ex, KC = KC_ex) annotation(Placement(visible = true, transformation(origin = {-14, 28}, extent = {{-22.5, -22.5}, {22.5, 22.5}}, rotation = 0)));
  OpalRT.Electrical.Machine.SynchronousMachine.GENROU genrou1(IBUS = IBUS, ID = M_ID, P_gen = P_gen, Q_gen = Q_gen, Vt_abs = Vt_abs, Vt_ang = Vt_ang, SB = SB, fn = fn, ZSOURCE_RE = ZSOURCE_RE, Tdo_p = Tdo_p, Tdo_s = Tdo_s, Tqo_p = Tqo_p, Tqo_s = Tqo_s, H = H, D = D, Xd = Xd, Xq = Xq, Xd_p = Xd_p, Xq_p = Xq_p, Xd_s = Xd_s, Xl = Xl, S1 = S1, S12 = S12) annotation(Placement(visible = true, transformation(origin = {50, 10}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-62, 44}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  OpalRT.Electrical.Control.Stabilizer.IEEEST ieeest1(A1 = A1_pss, A2 = A2_pss, A3 = A3_pss, A4 = A4_pss, A5 = A5_pss, A6 = A6_pss, T1 = T1_pss, T2 = T2_pss, T3 = T3_pss, T4 = T4_pss, T5 = T5_pss, T6 = T6_pss, KS = KS_pss, LSMAX = LSMAX_pss, LSMIN = LSMIN_pss, VCU = VCU_pss, VCL = VCL_pss, M0 = M0_pss, M1 = M1_pss) annotation(Placement(visible = true, transformation(origin = {-86, 30}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin TRIP annotation(Placement(visible = true, transformation(origin = {42, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpalRT.NonElectrical.Connector.PwPin bus0 annotation(Placement(visible = true, transformation(origin = {90, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {80, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dAset annotation(Placement(visible = true, transformation(origin = {-70, 150}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dVREF annotation(Placement(visible = true, transformation(origin = {-60, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-60, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(genrou1.VI, ieeest1.VI) annotation(Line(points = {{75, 10}, {84.1202, 10}, {84.1202, 63.9485}, {-112.017, 63.9485}, {-112.017, 33.4764}, {-100, 33.4764}, {-100, 33.4764}}, color = {0, 0, 127}));
  connect(ieeest1.VI2, ieeest1.VI) annotation(Line(points = {{-101, 24}, {-110.73, 24}, {-110.73, 33.4764}, {-101.717, 33.4764}, {-101.717, 33.4764}}, color = {0, 0, 127}));
  connect(genrou1.AccPower, ieeest1.PSS_AUX2[2]) annotation(Line(points = {{75, 3.5}, {90.9871, 3.5}, {90.9871, -45.0644}, {-108.584, -45.0644}, {-108.584, 20.1717}, {-99.5708, 20.1717}, {-99.5708, 20.1717}}, color = {0, 0, 127}));
  connect(genrou1.SLIP, ieeest1.PSS_AUX2[1]) annotation(Line(points = {{75, -10}, {90.9871, -10}, {90.9871, -45.0644}, {-108.584, -45.0644}, {-108.584, 20.1717}, {-101.288, 20.1717}, {-101.288, 20.1717}}, color = {0, 0, 127}));
  connect(expic11.VI, genrou1.VI) annotation(Line(points = {{8.5, 41.5}, {84.1202, 41.5}, {84.1202, 9.44206}, {75.9657, 9.44206}, {75.9657, 9.44206}}, color = {0, 0, 127}));
  connect(dVREF, expic11.dVREF) annotation(Line(points = {{-60, -20}, {-44.206, -20}, {-44.206, 13.7339}, {-37.7682, 13.7339}, {-37.7682, 13.7339}}));
  connect(TRIP, genrou1.TRIP) annotation(Line(points = {{42, 48}, {50.6386, 48}, {50.6386, 35}, {50, 35}}));
  connect(genrou1.p, bus0) annotation(Line(points = {{50, -15}, {50.1161, -15}, {50.1161, -30}, {90, -30}}));
  connect(expic11.EFD0, genrou1.EFD0) annotation(Line(points = {{8.5, 10}, {24.5, 10}}, color = {0, 0, 127}));
  connect(expic11.EFD, genrou1.EFD) annotation(Line(points = {{8.5, 14.5}, {16.25, 14.5}, {16.25, 17}, {25, 17}}, color = {0, 0, 127}));
  connect(expic11.ETERM0, genrou1.ETERM0) annotation(Line(points = {{8.5, 19}, {16.25, 19}, {16.25, 22.5}, {24.5, 22.5}}, color = {0, 0, 127}));
  connect(expic11.EX_AUX, genrou1.EX_AUX) annotation(Line(points = {{8.5, 24.85}, {17.25, 24.85}, {17.25, 30}, {24.5, 30}}, color = {0, 0, 127}));
  connect(expic11.XADIFD, genrou1.XADIFD) annotation(Line(points = {{-36.5, 39.25}, {-42, 39.25}, {-42, 64}, {84, 64}, {84, 22.5}, {75, 22.5}}, color = {0, 0, 127}));
  connect(ieeest1.VOTHSG, expic11.VOTHSG) annotation(Line(points = {{-71, 21}, {-54.5, 21}, {-54.5, 19.9}, {-36.5, 19.9}}, color = {0, 0, 127}));
  connect(expic11.VOEL, const.y) annotation(Line(points = {{-36.5, 26.2}, {-52, 26.2}, {-52, 44}, {-55.4, 44}}, color = {0, 0, 127}));
  connect(expic11.VUEL, const.y) annotation(Line(points = {{-36.5, 32.5}, {-52, 32.5}, {-52, 44}, {-55.4, 44}}, color = {0, 0, 127}));
  connect(genrou1.PMECH0, genrou1.PMECH) annotation(Line(points = {{25, -10}, {18, -10}, {18, -5}, {25, -5}}, color = {0, 0, 127}));
  connect(ieeest1.PSS_AUX2, ieeest1.PSS_AUX) annotation(Line(points = {{-100.7, 21}, {-108, 21}, {-108, 30}, {-101, 30}}, color = {0, 0, 127}));
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Text(origin = {-24.48, 1.59}, extent = {{-63.44, 25.74}, {113.33, -34.4}}, textString = "GENROU_EXPIC1_IEEEST"), Rectangle(origin = {0.797267, -6.94761}, extent = {{-96.697, 85.0797}, {96.697, -85.0797}})}));
end GENROU_EXPIC1_IEEEST;