within OpalRT.GenUnits.GENROE;
class GENROE_EXAC3
  parameter Real partType = 1;
  // GENROE Parameters
  parameter Integer IBUS = 100 "Located system bus" annotation(Dialog(tab = "General"));
  parameter String M_ID = "M1" "Machine Identifier" annotation(Dialog(tab = "GENROE Parameters"));
  parameter Real P_gen = 1100 "Bus Active Power, MW" annotation(Dialog(tab = "General"));
  parameter Real Q_gen = 342.702 "Bus Reactive Power, MVAR" annotation(Dialog(tab = "General"));
  parameter Real Vt_abs = 1.03 "Bus Voltage Magnitude, p.u." annotation(Dialog(tab = "General"));
  parameter Real Vt_ang = -10.96 "Bus Voltage Angle, deg." annotation(Dialog(tab = "General"));
  parameter Real SB = 1000 "Machine Base Power, MVA" annotation(Dialog(tab = "General"));
  parameter Real fn = 50 "Nominal frequency" annotation(Dialog(tab = "General"));
  parameter Real ZSOURCE_RE = 0 "Machine source impedence" annotation(Dialog(tab = "GENROE Parameters"));
  parameter Real Tdo_p = 7 "d-axis transient time constant" annotation(Dialog(tab = "GENROE Parameters"));
  parameter Real Tdo_s = 0.03 "d-axis sub-transient time constant, s" annotation(Dialog(tab = "GENROE Parameters"));
  parameter Real Tqo_p = 0.7 "q-axis transient time constant, s" annotation(Dialog(tab = "GENROE Parameters"));
  parameter Real Tqo_s = 0.04 "d-axis sub-transient time constant, s" annotation(Dialog(tab = "GENROE Parameters"));
  parameter Real H = 50 "Inertia constant" annotation(Dialog(tab = "GENROE Parameters"));
  parameter Real D = 0 "Speed damping" annotation(Dialog(tab = "GENROE Parameters"));
  parameter Real Xd = 0.2 "d-axis reactance, p.u." annotation(Dialog(tab = "GENROE Parameters"));
  parameter Real Xq = 0.19 "q-axis reactance, p.u." annotation(Dialog(tab = "GENROE Parameters"));
  parameter Real Xd_p = 0.06 "d-axis transient reactance, p.u." annotation(Dialog(tab = "GENROE Parameters"));
  parameter Real Xq_p = 0.06 "q-axis transient reactance, p.u." annotation(Dialog(tab = "GENROE Parameters"));
  parameter Real Xd_s = 0.02 "d-axis sub-transient reactance, p.u." annotation(Dialog(tab = "GENROE Parameters"));
  parameter Real Xl = 0.03 "Reactance due to the leakage flux which does not cross the air gap, p.u." annotation(Dialog(tab = "GENROE Parameters"));
  parameter Real S1 = 0.4 "saturation function value for 1 p.u. input" annotation(Dialog(tab = "GENROE Parameters"));
  parameter Real S12 = 0.8 "saturation function value for 1.2 p.u. input" annotation(Dialog(tab = "GENROE Parameters"));
  // EXAC3 Parameters
  parameter Real TR_ex = 0.02 "regulator input filter time constant (sec)" annotation(Dialog(tab = "EXAC3"));
  parameter Real TB_ex = 0.1 " lag time constant of voltage regulator (s)" annotation(Dialog(tab = "EXAC3"));
  parameter Real TC_ex = 1 " lead time constant of voltage regulator (s)" annotation(Dialog(tab = "EXAC3"));
  parameter Real KA_ex = 10 "(pu) voltage regulator gain" annotation(Dialog(tab = "EXAC3"));
  parameter Real TA_ex = 0.02 "(sec) regulator time constant" annotation(Dialog(tab = "EXAC3"));
  parameter Real VAMAX_ex = 10 "(pu) regulator output maximum limit" annotation(Dialog(tab = "EXAC3"));
  parameter Real VAMIN_ex = -10 "(pu) regulator output minimum limit" annotation(Dialog(tab = "EXAC3"));
  parameter Real TE_ex = 0.35 "Exciter time constant" annotation(Dialog(tab = "EXAC3"));
  parameter Real KLV_ex = 0.4 "Gain used in the minimum field voltage limiter loop" annotation(Dialog(tab = "EXAC3"));
  parameter Real KR_ex = 0.4 "Constant associated with regulator and alternator field" annotation(Dialog(tab = "EXAC3"));
  parameter Real KF_ex = 1 "Excitation control system stabilizer gains" annotation(Dialog(tab = "EXAC3"));
  parameter Real TF_ex = 1.0 "Excitation control system stabilizer time constant, sec" annotation(Dialog(tab = "EXAC3"));
  parameter Real KN_ex = 0.4 "Excitation control system stabilizer gain" annotation(Dialog(tab = "EXAC3"));
  parameter Real EFDN_ex = 0.4 "Value of EFD at which feedback gain changes" annotation(Dialog(tab = "EXAC3"));
  parameter Real KC_ex = 0.02 "Rectifier loading factor proportional to commutating reactance" annotation(Dialog(tab = "EXAC3"));
  parameter Real KD_ex = 0.02 "Demagnetizing factor" annotation(Dialog(tab = "EXAC3"));
  parameter Real KE_ex = 1 "exciter constant related fo self-excited field" annotation(Dialog(tab = "EXAC3"));
  parameter Real VLV_ex = 0.4 "Field voltage used in the minimum field voltage limiter loop" annotation(Dialog(tab = "EXAC3"));
  parameter Real E1_ex = 4 "Exciter voltages at which exciter saturation is defined" annotation(Dialog(tab = "EXAC3"));
  parameter Real SE_E1_ex = 0.4 "Exciter saturation function value at E1" annotation(Dialog(tab = "EXAC3"));
  parameter Real E2_ex = 5 "Exciter voltages at which exciter saturation is defined" annotation(Dialog(tab = "EXAC3"));
  parameter Real SE_E2_ex = 0.5 "Exciter saturation function value at E2" annotation(Dialog(tab = "EXAC3"));
  OpalRT.Electrical.Machine.SynchronousMachine.GENROE genroe1(IBUS = IBUS, ID = M_ID, P_gen = P_gen, Q_gen = Q_gen, Vt_abs = Vt_abs, Vt_ang = Vt_ang, SB = SB, fn = fn, ZSOURCE_RE = ZSOURCE_RE, Tdo_p = Tdo_p, Tdo_s = Tdo_s, Tqo_p = Tqo_p, Tqo_s = Tqo_s, H = H, D = D, Xd = Xd, Xq = Xq, Xd_p = Xd_p, Xq_p = Xq_p, Xd_s = Xd_s, Xl = Xl, S1 = S1, S12 = S12) annotation(Placement(visible = true, transformation(origin = {40, -20}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
  OpalRT.Electrical.Control.Excitation.EXAC3 exac31(TR = TR_ex, TB = TB_ex, TC = TC_ex, KA = KA_ex, TA = TA_ex, VAMAX = VAMAX_ex, VAMIN = VAMIN_ex, TE = TE_ex, KLV = KLV_ex, KR = KR_ex, KF = KF_ex, TF = TF_ex, KN = KN_ex, EFDN = EFDN_ex, KC = KC_ex, KD = KD_ex, KE = KE_ex, VLV = VLV_ex, E1 = E1_ex, SE_E1 = SE_E1_ex, E2 = E2_ex, SE_E2 = SE_E2_ex) annotation(Placement(visible = true, transformation(origin = {-24, 2}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-72, 8}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  OpalRT.NonElectrical.Connector.PwPin bus0 annotation(Placement(visible = true, transformation(origin = {40, -60}, extent = {{-10.5, -10.5}, {10.5, 10.5}}, rotation = 0), iconTransformation(origin = {100, -62}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dVREF annotation(Placement(visible = true, transformation(origin = {-94, -8}, extent = {{-8, -8}, {8, 8}}, rotation = 0), iconTransformation(origin = {-92, 66}, extent = {{-12.75, -12.75}, {12.75, 12.75}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin TRIP annotation(Placement(visible = true, transformation(origin = {40, 26}, extent = {{-9.5, -9.5}, {9.5, 9.5}}, rotation = 0), iconTransformation(origin = {92, 64}, extent = {{13, -13}, {-13, 13}}, rotation = 0)));
equation
  connect(dVREF, exac31.dVREF) annotation(Line(points = {{-94, -8}, {-73.8197, -8}, {-73.8197, -12.8755}, {-50.2146, -12.8755}, {-50.2146, -12.8755}}));
  connect(exac31.VI, genroe1.VI) annotation(Line(points = {{1, 17}, {69.0987, 17}, {69.0987, -19.7425}, {65.2361, -19.7425}, {65.2361, -19.7425}}, color = {0, 0, 127}));
  connect(exac31.VOTHSG, const.y) annotation(Line(points = {{-49, -7}, {-56.8075, -7}, {-56.8075, 7.98122}, {-66.1972, 7.98122}, {-66.1972, 7.98122}}, color = {0, 0, 127}));
  connect(exac31.VOEL, const.y) annotation(Line(points = {{-49, -2.38419e-09}, {-56.338, -2.38419e-09}, {-56.338, 7.98122}, {-66.1972, 7.98122}, {-66.1972, 7.98122}}, color = {0, 0, 127}));
  connect(const.y, exac31.VUEL) annotation(Line(points = {{-66.5, 8}, {-51.6432, 8}, {-51.6432, 7.51174}, {-51.6432, 7.51174}}, color = {0, 0, 127}));
  connect(genroe1.XADIFD, exac31.XADIFD) annotation(Line(points = {{64, -8}, {74.1784, -8}, {74.1784, 41.3146}, {-56.8075, 41.3146}, {-56.8075, 14.0845}, {-50.2347, 14.0845}, {-50.2347, 14.0845}}, color = {0, 0, 127}));
  connect(genroe1.EFD0, exac31.EFD0) annotation(Line(points = {{15.52, -20}, {9.38967, -20}, {9.38967, -17.8404}, {3.28638, -17.8404}, {3.28638, -17.8404}}, color = {0, 0, 127}));
  connect(exac31.EFD, genroe1.EFD) annotation(Line(points = {{1, -13}, {15.493, -13}, {15.493, -12.6761}, {15.493, -12.6761}}, color = {0, 0, 127}));
  connect(genroe1.ETERM0, exac31.ETERM0) annotation(Line(points = {{15.52, -8}, {2.8169, -8}, {2.8169, -7.98122}, {2.8169, -7.98122}}, color = {0, 0, 127}));
  connect(genroe1.EX_AUX, exac31.EX_AUX) annotation(Line(points = {{15.52, -0.8}, {2.34742, -0.8}, {2.34742, -1.40845}, {2.34742, -1.40845}}, color = {0, 0, 127}));
  connect(TRIP, genroe1.TRIP) annotation(Line(points = {{40, 26}, {39.9061, 26}, {39.9061, 4.69484}, {39.9061, 4.69484}}));
  connect(genroe1.p, bus0) annotation(Line(points = {{40, -44}, {39.9061, -44}, {40, -70}, {40, -60}}));
  connect(genroe1.PMECH0, genroe1.PMECH) annotation(Line(points = {{16, -39.2}, {10.3286, -39.2}, {10.3286, -35.2113}, {14.554, -35.2113}, {14.554, -35.2113}}, color = {0, 0, 127}));
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Text(origin = {-54.6369, 10.5764}, extent = {{-38.61, 12.3}, {148.948, -40.064}}, textString = "GENROE_ESST4B"), Rectangle(origin = {1.31663, -0.569476}, extent = {{-99.5444, 98.7472}, {96.7275, -96.3998}}), Text(origin = {80.97, -67.05}, extent = {{-37.7807, 20.0274}, {4.56, -5.59}}, textString = "bus0"), Text(origin = {62.2059, 62.9128}, extent = {{-26.9938, 15.4969}, {16.6652, -7.98516}}, textString = "TRIP"), Text(origin = {-51.1743, 66.6659}, extent = {{-25.35, 10.8}, {25.35, -10.8}}, textString = "dVREF")}));
end GENROE_EXAC3;