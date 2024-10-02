within OpalRT.GenUnits.GENSAL;
model GENSAL_EXDC2_HYGOV
  parameter Real partType = 1;
  // GENSAL Parameters
  parameter Integer IBUS = 100 "Located system bus" annotation(Dialog(tab = "General"));
  parameter String ID = "M1" "Machine Identifier" annotation(Dialog(tab = "GENSAL Parameters"));
  parameter Real P_gen = 1100 "Bus Active Power, MW" annotation(Dialog(tab = "General"));
  parameter Real Q_gen = 342.702 "Bus Reactive Power, MVAR" annotation(Dialog(tab = "General"));
  parameter Real Vt_abs = 1.03 "Bus Voltage Magnitude, p.u." annotation(Dialog(tab = "General"));
  parameter Real Vt_ang = -10.96 "Bus Voltage Angle, deg." annotation(Dialog(tab = "General"));
  parameter Real SB = 1000 "Machine Base Power, MVA" annotation(Dialog(tab = "General"));
  parameter Real fn = 50 "Nominal frequency" annotation(Dialog(tab = "General"));
  parameter Real ZSOURCE_RE = 0 "Machine source impedence" annotation(Dialog(tab = "GENSAL Parameters"));
  parameter Real Tdo_p = 7 "d-axis transient time constant" annotation(Dialog(tab = "GENSAL Parameters"));
  parameter Real Tdo_s = 0.03 "d-axis sub-transient time constant, s" annotation(Dialog(tab = "GENSAL Parameters"));
  parameter Real Tqo_s = 0.04 "d-axis sub-transient time constant, s" annotation(Dialog(tab = "GENSAL Parameters"));
  parameter Real H = 50 "Inertia constant" annotation(Dialog(tab = "GENSAL Parameters"));
  parameter Real D = 0 "Speed damping" annotation(Dialog(tab = "GENSAL Parameters"));
  parameter Real Xd = 0.2 "d-axis reactance, p.u." annotation(Dialog(tab = "GENSAL Parameters"));
  parameter Real Xq = 0.19 "q-axis reactance, p.u." annotation(Dialog(tab = "GENSAL Parameters"));
  parameter Real Xd_p = 0.06 "d-axis transient reactance, p.u." annotation(Dialog(tab = "GENSAL Parameters"));
  parameter Real Xd_s = 0.02 "d-axis sub-transient reactance, p.u." annotation(Dialog(tab = "GENSAL Parameters"));
  parameter Real Xl = 0.03 "Reactance due to the leakage flux which does not cross the air gap, p.u." annotation(Dialog(tab = "GENSAL Parameters"));
  parameter Real S1 = 0.4 "saturation function value for 1 p.u. input" annotation(Dialog(tab = "GENSAL Parameters"));
  parameter Real S12 = 0.8 "saturation function value for 1.2 p.u. input" annotation(Dialog(tab = "GENSAL Parameters"));
  // EXDC2 Parameters
  parameter Real TR_ex = 0.1 "(sec)" annotation(Dialog(tab = "EXDC2 Parameters"));
  parameter Real KA_ex = 400 annotation(Dialog(tab = "EXDC2 Parameters"));
  parameter Real TA_ex = 5 "(sec)" annotation(Dialog(tab = "EXDC2 Parameters"));
  parameter Real TB_ex = 12 "(sec)" annotation(Dialog(tab = "EXDC2 Parameters"));
  parameter Real TC_ex = 10 "(sec)" annotation(Dialog(tab = "EXDC2 Parameters"));
  parameter Real VRMAX_ex = 5 "or zero" annotation(Dialog(tab = "EXDC2 Parameters"));
  parameter Real VRMIN_ex = -5 annotation(Dialog(tab = "EXDC2 Parameters"));
  parameter Real KE_ex = 0.5 "or zero" annotation(Dialog(tab = "EXDC2 Parameters"));
  parameter Real TE_ex = 0.08 "(sec)" annotation(Dialog(tab = "EXDC2 Parameters"));
  parameter Real KF_ex = 0.2 annotation(Dialog(tab = "EXDC2 Parameters"));
  parameter Real TF1_ex = 1.2 "(>0) (sec)" annotation(Dialog(tab = "EXDC2 Parameters"));
  parameter Real Switch_ex = 0 annotation(Dialog(tab = "EXDC2 Parameters"));
  parameter Real E1_ex = 4 annotation(Dialog(tab = "EXDC2 Parameters"));
  parameter Real SE_E1_ex = 0.4 annotation(Dialog(tab = "EXDC2 Parameters"));
  parameter Real E2_ex = 5 annotation(Dialog(tab = "EXDC2 Parameters"));
  parameter Real SE_E2_ex = 0.5 annotation(Dialog(tab = "EXDC2 Parameters"));
  // HYGOV Parameters
  parameter Real R_tg = 0.06 "Permanent Droop" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real r_tg = 0.4 "Temporary Droop" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real Tr_tg = 8 "(>0) Governor time constant" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real Tf_tg = 0.5 "(>0) Filter time constant" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real Tg_tg = 0.02 "(>0) Servo time constant" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real VELM_tg = 0.01 "Gate velocity limit" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real GMAX_tg = 0.06 "Maximum gate limit" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real GMIN_tg = 0.2 "Minimum gate limit" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real TW_tg = 1.2 "(>0) Water time constant" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real At_tg = 2.5 "Trubine gain" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real Dturb_tg = 0 "Turbine damping" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real qNL_tg = 0.5 "No power flow" annotation(Dialog(tab = "HYGOV Parameters"));
  OpalRT.Electrical.Machine.SynchronousMachine.GENSAL gensal1(IBUS = IBUS, ID = ID, P_gen = P_gen, Q_gen = Q_gen, Vt_abs = Vt_abs, Vt_ang = Vt_ang, SB = SB, fn = fn, ZSOURCE_RE = ZSOURCE_RE, Tdo_p = Tdo_p, Tdo_s = Tdo_s, Tqo_s = Tqo_s, H = H, D = D, Xd = Xd, Xq = Xq, Xd_p = Xd_p, Xd_s = Xd_s, Xl = Xl, S1 = S1, S12 = S12) annotation(Placement(visible = true, transformation(origin = {60, -20}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
  OpalRT.Electrical.Control.Excitation.EXDC2 exdc21(TR = TR_ex, KA = KA_ex, TA = TA_ex, TB = TB_ex, TC = TC_ex, VRMAX = VRMAX_ex, VRMIN = VRMIN_ex, KE = KE_ex, TE = TE_ex, KF = KF_ex, TF1 = TF1_ex, Switch = Switch_ex, E1 = E1_ex, SE_E1 = SE_E1_ex, E2 = E2_ex, SE_E2 = SE_E2_ex) annotation(Placement(visible = true, transformation(origin = {-8, 0}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
  OpalRT.Electrical.Control.TurbineGovernor.HYGOV hygov1(R = R_tg, r = r_tg, Tr = Tr_tg, Tf = Tf_tg, Tg = Tg_tg, VELM = VELM_tg, GMAX = GMAX_tg, GMIN = GMIN_tg, TW = TW_tg, At = At_tg, Dturb = Dturb_tg, qNL = qNL_tg, IBUS = IBUS, ID = ID) annotation(Placement(visible = true, transformation(origin = {-10, -62}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
  OpalRT.NonElectrical.Connector.PwPin bus0 annotation(Placement(visible = true, transformation(origin = {100, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-64, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin TRIP annotation(Placement(visible = true, transformation(origin = {20, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dVREF annotation(Placement(visible = true, transformation(origin = {-80, -20}, extent = {{-8, -8}, {8, 8}}, rotation = 0), iconTransformation(origin = {-100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dGREF annotation(Placement(visible = true, transformation(origin = {-100, -60}, extent = {{-8, -8}, {8, 8}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(dGREF, hygov1.dGREF) annotation(Line(points = {{-100, -60}, {-74.7347, -60}, {-74.7347, -42.5497}, {-35, -42.5497}, {-35, -42}}));
  connect(dVREF, exdc21.dVREF) annotation(Line(points = {{-80, -20}, {-48.0048, -20}, {-48.0048, -16.0925}, {-33, -16.0925}, {-33, -15}}));
  connect(exdc21.VI, gensal1.VI) annotation(Line(points = {{17, 15}, {95.4641, 15}, {95.4641, -19.6383}, {85.0994, -19.6383}, {85.0994, -19.6383}}, color = {0, 0, 127}));
  connect(gensal1.VI, hygov1.VI) annotation(Line(points = {{85, -20}, {96.0096, -20}, {96.0096, -96.0096}, {-46.9138, -96.0096}, {-46.9138, -61.9153}, {-35.7308, -61.9153}, {-35.7308, -61.9153}}, color = {0, 0, 127}));
  connect(gensal1.MBASE, hygov1.MBASE) annotation(Line(points = {{85, -33.5}, {93.0093, -33.5}, {93.0093, -93.5548}, {-42.277, -93.5548}, {-42.277, -72.28}, {-35.1853, -72.28}, {-35.1853, -72.28}}, color = {0, 0, 127}));
  connect(gensal1.SLIP, hygov1.SLIP) annotation(Line(points = {{85, -40}, {91.6455, -40}, {91.6455, -91.9183}, {-39.5494, -91.9183}, {-39.5494, -82.0991}, {-36.0036, -82.0991}, {-36.0036, -82.0991}}, color = {0, 0, 127}));
  connect(gensal1.PMECH0, hygov1.PMECH0) annotation(Line(points = {{35, -40}, {25.3662, -40}, {25.3662, -46.641}, {15.547, -46.641}, {15.547, -46.641}}, color = {0, 0, 127}));
  connect(exdc21.VOEL, exdc21.VOTHSG) annotation(Line(points = {{-33, -2}, {-34.586, -2}, {-34.586, -9}, {-33, -9}}, color = {0, 0, 127}));
  connect(exdc21.VUEL, exdc21.VOEL) annotation(Line(points = {{-33, 5}, {-34.854, 5}, {-34.854, -2}, {-33, -2}}, color = {0, 0, 127}));
  connect(gensal1.p, bus0) annotation(Line(points = {{60, -45}, {59.1888, -45}, {59.1888, -80}, {100, -80}}));
  connect(TRIP, gensal1.TRIP) annotation(Line(points = {{20, 60}, {59.4378, 60}, {59.4378, 5}, {60, 5}}));
  connect(hygov1.PMECH, gensal1.PMECH) annotation(Line(points = {{15, -42}, {20, -42}, {20, -35}, {35, -35}}, color = {0, 0, 127}));
  connect(exdc21.EFD0, gensal1.EFD0) annotation(Line(points = {{17, -20}, {34.5, -20}}, color = {0, 0, 127}));
  connect(exdc21.EFD, gensal1.EFD) annotation(Line(points = {{17, -15}, {25.5, -15}, {25.5, -13}, {35, -13}}, color = {0, 0, 127}));
  connect(exdc21.ETERM0, gensal1.ETERM0) annotation(Line(points = {{17, -10}, {26, -10}, {26, -7.5}, {34.5, -7.5}}, color = {0, 0, 127}));
  connect(exdc21.EX_AUX, gensal1.EX_AUX) annotation(Line(points = {{17, -3.5}, {25.5, -3.5}, {25.5, 0}, {34.5, 0}}, color = {0, 0, 127}));
  connect(exdc21.XADIFD, gensal1.XADIFD) annotation(Line(points = {{-33, 12.5}, {-44, 12.5}, {-44, 36}, {98, 36}, {98, -7.5}, {85, -7.5}}, color = {0, 0, 127}));
  connect(const.y, exdc21.VUEL) annotation(Line(points = {{-53, 6}, {-44, 6}, {-44, 5}, {-33, 5}}, color = {0, 0, 127}));
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Rectangle(origin = {0.535475, -0.267738}, extent = {{-99.5984, 99.3307}, {99.5984, -99.3307}}), Text(origin = {-69.2148, 59.7018}, extent = {{-12.72, 7.23}, {12.72, -7.23}}, textString = "TRIP"), Text(origin = {-74.65, 0.99}, extent = {{-12.72, 7.23}, {12.72, -7.23}}, textString = "dGREF"), Text(origin = {-70.98, -61.74}, extent = {{-12.72, 7.23}, {12.72, -7.23}}, textString = "dVREF"), Text(origin = {72.973, -78.9536}, extent = {{-12.72, 7.23}, {12.72, -7.23}}, textString = "PwPin"), Text(origin = {-72.2181, -11.2994}, extent = {{-12.72, 7.23}, {157.834, -17.9395}}, textString = "GENSAL_EXDC2_HYGOV")}));
end GENSAL_EXDC2_HYGOV;