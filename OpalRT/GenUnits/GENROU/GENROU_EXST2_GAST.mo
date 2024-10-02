within OpalRT.GenUnits.GENROU;
model GENROU_EXST2_GAST
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
  // EXST2 Parameters
  parameter Real TR_ex = 0.1 "(sec)" annotation(Dialog(tab = "EXST2 Parameters"));
  parameter Real KA_ex = 0.2 annotation(Dialog(tab = "EXST2 Parameters"));
  parameter Real TA_ex = 12 "(sec)" annotation(Dialog(tab = "EXST2 Parameters"));
  parameter Real VRMAX_ex = 5 "or zero" annotation(Dialog(tab = "EXST2 Parameters"));
  parameter Real VRMIN_ex = -5 annotation(Dialog(tab = "EXST2 Parameters"));
  parameter Real KE_ex = 0.2 annotation(Dialog(tab = "EXST2 Parameters"));
  parameter Real TE_ex = 0.08 "(sec)" annotation(Dialog(tab = "EXST2 Parameters"));
  parameter Real KF_ex = 0.2 annotation(Dialog(tab = "EXST2 Parameters"));
  parameter Real TF_ex = 1.2 "(sec)" annotation(Dialog(tab = "EXST2 Parameters"));
  parameter Real KP_ex = 0.4 annotation(Dialog(tab = "EXST2 Parameters"));
  parameter Real KI_ex = 0.5 "or zero" annotation(Dialog(tab = "EXST2 Parameters"));
  parameter Real KC_ex = 0.4 annotation(Dialog(tab = "EXST2 Parameters"));
  parameter Real EFDMAX_ex = 5 annotation(Dialog(tab = "EXST2 Parameters"));
  // GAST Parameters
  parameter Real R_tg = 0.047 "Speed droop" annotation(Dialog(tab = "GAST Parameters"));
  parameter Real T1_tg = 0.4 "(>0) (sec)" annotation(Dialog(tab = "GAST Parameters"));
  parameter Real T2_tg = 0.1 "(>0) (sec)" annotation(Dialog(tab = "GAST Parameters"));
  parameter Real T3_tg = 3 "(>0) (sec)" annotation(Dialog(tab = "GAST Parameters"));
  parameter Real AT_tg = 1.5 "Ambient temperature load limit" annotation(Dialog(tab = "GAST Parameters"));
  parameter Real KT_tg = 2 annotation(Dialog(tab = "GAST Parameters"));
  parameter Real VMAX_tg = 1.5 annotation(Dialog(tab = "GAST Parameters"));
  parameter Real VMIN_tg = 0 annotation(Dialog(tab = "GAST Parameters"));
  parameter Real DTURB_tg = 0 annotation(Dialog(tab = "GAST Parameters"));
  OpalRT.Electrical.Machine.SynchronousMachine.GENROU genrou1(ID = M_ID, P_gen = P_gen, Q_gen = Q_gen, Vt_abs = Vt_abs, Vt_ang = Vt_ang, SB = SB, fn = fn, ZSOURCE_RE = ZSOURCE_RE, Tdo_p = Tdo_p, Tdo_s = Tdo_s, Tqo_p = Tqo_p, Tqo_s = Tqo_s, H = H, D = D, Xd = Xd, Xq = Xq, Xd_p = Xd_p, Xq_p = Xq_p, Xd_s = Xd_s, Xl = Xl, S1 = S1, S12 = S12) annotation(Placement(visible = true, transformation(origin = {15, -15}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  OpalRT.NonElectrical.Connector.PwPin bus0 annotation(Placement(visible = true, transformation(origin = {60, -40}, extent = {{-5, -5}, {5, 5}}, rotation = 0), iconTransformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-62, 8}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin TRIP annotation(Placement(visible = true, transformation(origin = {8, 10}, extent = {{-5, -5}, {5, 5}}, rotation = 0), iconTransformation(origin = {20, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpalRT.Electrical.Control.TurbineGovernor.GAST gast1(R = R_tg, T1 = T1_tg, T2 = T2_tg, T3 = T3_tg, AT = AT_tg, KT = KT_tg, VMAX = VMAX_tg, VMIN = VMIN_tg, DTURB = DTURB_tg) annotation(Placement(visible = true, transformation(origin = {-24, -32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dGREF annotation(Placement(visible = true, transformation(origin = {-72, -30}, extent = {{-5, -5}, {5, 5}}, rotation = 0), iconTransformation(origin = {-140, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dVREF annotation(Placement(visible = true, transformation(origin = {-80, -10}, extent = {{-5, -5}, {5, 5}}, rotation = 0), iconTransformation(origin = {-60, 100}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  OpalRT.Electrical.Control.Excitation.EXST2 exst21(TR = TR_ex, KA = KA_ex, TA = TA_ex, VRMAX = VRMAX_ex, VRMIN = VRMIN_ex, KE = KE_ex, TE = TE_ex, KF = KF_ex, TF = TF_ex, KP = KP_ex, KI = KI_ex, KC = KC_ex, EFDMAX = EFDMAX_ex) annotation(Placement(visible = true, transformation(origin = {-27, -1}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
equation
  connect(exst21.VI, genrou1.VI) annotation(Line(points = {{-10, 9.2}, {39.5494, 9.2}, {39.5494, -15.2743}, {30.2758, -15.2743}, {30.2758, -15.2743}}, color = {0, 0, 127}));
  connect(genrou1.VI, gast1.VI) annotation(Line(points = {{30, -15}, {39.5494, -15}, {39.5494, -57.2785}, {-43.9135, -57.2785}, {-43.9135, -31.6395}, {-33.2761, -31.6395}, {-33.2761, -31.6395}}, color = {0, 0, 127}));
  connect(genrou1.MBASE, gast1.MBASE) annotation(Line(points = {{30, -23.1}, {36.5491, -23.1}, {36.5491, -53.4599}, {-41.7314, -53.4599}, {-41.7314, -36.0036}, {-34.6398, -36.0036}, {-34.6398, -36.0036}}, color = {0, 0, 127}));
  connect(gast1.PMECH0, genrou1.PMECH0) annotation(Line(points = {{-14, -26}, {-10.6374, -26}, {-10.6374, -27.5482}, {-0.545509, -27.5482}, {-0.545509, -27.5482}}, color = {0, 0, 127}));
  connect(dVREF, exst21.dVREF) annotation(Line(points = {{-80, -10}, {-66.0066, -10}, {-66.0066, -11.4557}, {-43.9135, -11.4557}, {-43.9135, -11.4557}}));
  connect(dGREF, gast1.dGREF) annotation(Line(points = {{-72, -30}, {-42.277, -30}, {-42.277, -24.0024}, {-34.3671, -24.0024}, {-34.3671, -24.0024}}));
  connect(genrou1.p, bus0) annotation(Line(points = {{15, -30}, {15.6701, -30}, {15.6701, -40.6963}, {60, -40.6963}, {60, -40}}));
  connect(genrou1.EFD0, exst21.EFD0) annotation(Line(points = {{-0.3, -15}, {-5.15, -15}, {-5.15, -14.6}, {-10, -14.6}}, color = {0, 0, 127}));
  connect(exst21.EFD, genrou1.EFD) annotation(Line(points = {{-10, -11.2}, {-6, -11.2}, {-6, -10.8}, {0, -10.8}}, color = {0, 0, 127}));
  connect(exst21.ETERM0, genrou1.ETERM0) annotation(Line(points = {{-10, -7.8}, {-6, -7.8}, {-6, -7.5}, {-0.3, -7.5}}, color = {0, 0, 127}));
  connect(exst21.EX_AUX, genrou1.EX_AUX) annotation(Line(points = {{-10, -3.38}, {-6, -3.38}, {-6, -3}, {-0.3, -3}}, color = {0, 0, 127}));
  connect(gast1.PMECH, genrou1.PMECH) annotation(Line(points = {{-14, -24}, {0, -24}}, color = {0, 0, 127}));
  connect(TRIP, genrou1.TRIP) annotation(Line(points = {{8, 10}, {15, 10}, {15, 0}}, color = {0, 0, 0}));
  connect(exst21.XADIFD, genrou1.XADIFD) annotation(Line(points = {{-44, 7.5}, {-50, 7.5}, {-50, 24}, {34, 24}, {34, -7.5}, {30, -7.5}}, color = {0, 0, 127}));
  connect(exst21.VUEL, const.y) annotation(Line(points = {{-44, 2.4}, {-54, 2.4}, {-54, 8}, {-56.5, 8}}, color = {0, 0, 127}));
  connect(exst21.VOEL, const.y) annotation(Line(points = {{-44, -2.36}, {-54, -2.36}, {-54, 8}, {-56.5, 8}}, color = {0, 0, 127}));
  connect(exst21.VOTHSG, const.y) annotation(Line(points = {{-44, -7.12}, {-54, -7.12}, {-54, 8}, {-56.5, 8}}, color = {0, 0, 127}));
  connect(genrou1.SLIP, gast1.SLIP) annotation(Line(points = {{30, -27}, {34, -27}, {34, -50}, {-40, -50}, {-40, -40}, {-34, -40}}, color = {0, 0, 127}));
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Rectangle(origin = {1.13895, -0.455581}, extent = {{-95.8998, 87.016}, {94.0775, -92.2551}}), Text(origin = {57.0615, -57.2869}, extent = {{25.85, -23.58}, {-20.1552, 17.8852}}, textString = "PIN"), Text(origin = {-5.13093, 9.23212}, extent = {{-73.46, 18.79}, {83.94, -29.04}}, textString = "GENROU_EXST2_GAST")}));
end GENROU_EXST2_GAST;