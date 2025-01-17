within OpalRT.GenUnits.GENSAL;
class GENSAL_IEEET1_HYGOV
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
  // IEEET1 Parameters
  // This Model is located at system bus IBUS
  parameter Real TR_ex = 0.025 "(sec)";
  parameter Real KA_ex = 98;
  parameter Real TA_ex = 0.2 "(sec)";
  parameter Real VRMAX_ex = 9 "or zero";
  parameter Real VRMIN_ex = -5;
  parameter Real KE_ex = 0.5 "or zero";
  parameter Real TE_ex = 0.35 "(>0) (sec)";
  parameter Real KF_ex = 0.03;
  parameter Real TF_ex = 0.4 "(>0) (sec)";
  parameter Real Switch_ex = 0;
  parameter Real E1_ex = 4;
  parameter Real SE_E1_ex = 0.4;
  parameter Real E2_ex = 5;
  parameter Real SE_E2_ex = 0.5;
  // HYGOV Parameters
  parameter Real R_tg = 0.06 "Permanent Droop" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real r_tg = 0.4 "Temporary Droop" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real Tr_tg = 8 "(>0) Governor time constant" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real Tf_tg = 0.05 "(>0) Filter time constant" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real Tg_tg = 0.2 "(>0) Servo time constant" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real VELM_tg = 0.01 "Gate velocity limit" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real GMAX_tg = 0.601 "Maximum gate limit" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real GMIN_tg = 0 "Minimum gate limit" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real TW_tg = 1.2 "(>0) Water time constant" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real At_tg = 2.5 "Trubine gain" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real Dturb_tg = 0 "Turbine damping" annotation(Dialog(tab = "HYGOV Parameters"));
  parameter Real qNL_tg = 0.5 "No power flow" annotation(Dialog(tab = "HYGOV Parameters"));
  OpalRT.Electrical.Machine.SynchronousMachine.GENSAL gensal1(IBUS = IBUS, ID = ID, P_gen = P_gen, Q_gen = Q_gen, Vt_abs = Vt_abs, Vt_ang = Vt_ang, SB = SB, fn = fn, ZSOURCE_RE = ZSOURCE_RE, Tdo_p = Tdo_p, Tdo_s = Tdo_s, Tqo_s = Tqo_s, H = H, D = D, Xd = Xd, Xq = Xq, Xd_p = Xd_p, Xd_s = Xd_s, Xl = Xl, S1 = S1, S12 = S12) annotation(Placement(visible = true, transformation(origin = {40, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpalRT.Electrical.Control.TurbineGovernor.HYGOV hygov1(R = R_tg, r = r_tg, Tr = Tr_tg, Tf = Tf_tg, Tg = Tg_tg, VELM = VELM_tg, GMAX = GMAX_tg, GMIN = GMIN_tg, TW = TW_tg, At = At_tg, Dturb = Dturb_tg, qNL = qNL_tg) annotation(Placement(visible = true, transformation(origin = {12, -18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpalRT.NonElectrical.Connector.PwPin bus0 annotation(Placement(visible = true, transformation(origin = {75, -25}, extent = {{-5, -5}, {5, 5}}, rotation = 0), iconTransformation(origin = {100, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  //OpalRT.Connector.InterfacePin TRIP annotation(Placement(visible = true, transformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin TRIP annotation(Placement(visible = true, transformation(origin = {40, 35}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dGREF annotation(Placement(visible = true, transformation(origin = {-53, -10}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  OpalRT.Electrical.Control.Excitation.IEEET1 ieeet11(ID = ID, TR = TR_ex, KA = KA_ex, TA = TA_ex, VRMAX = VRMAX_ex, VRMIN = VRMIN_ex, KE = KE_ex, TE = TE_ex, KF = KF_ex, TF = TF_ex, Switch = Switch_ex, E1 = E1_ex, SE_E1 = SE_E1_ex, E2 = E2_ex, SE_E2 = SE_E2_ex) annotation(Placement(visible = true, transformation(origin = {12, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-14, 10}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dVREF annotation(Placement(visible = true, transformation(origin = {-26, -2}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
equation
  connect(dVREF, ieeet11.dVREF) annotation(Line(points = {{-26, -2}, {-7.10696, -2}, {-7.10696, 1.90674}, {2.25343, 1.90674}, {2.25343, 1.90674}}));
  connect(ieeet11.VI, gensal1.VI) annotation(Line(points = {{22, 14}, {61.7092, 14}, {61.7092, -0.17334}, {50.0954, -0.17334}, {50.0954, -0.17334}}, color = {0, 0, 127}));
  connect(gensal1.MBASE, hygov1.MBASE) annotation(Line(points = {{50, -5.4}, {56.1623, -5.4}, {56.1623, -36.7482}, {-1.56006, -36.7482}, {-1.56006, -22.0142}, {2.08009, -22.0142}, {2.08009, -22.0142}}, color = {0, 0, 127}));
  connect(hygov1.PMECH0, gensal1.PMECH0) annotation(Line(points = {{22, -12}, {26.0011, -12}, {26.0011, -8.49368}, {29.6412, -8.49368}, {29.6412, -8.49368}}, color = {0, 0, 127}));
  connect(gensal1.VI, hygov1.VI) annotation(Line(points = {{50, 0}, {61.8825, 0}, {61.8825, -45.0685}, {-4.85353, -45.0685}, {-4.85353, -18.0274}, {1.56006, -18.0274}, {1.56006, -18.0274}}, color = {0, 0, 127}));
  connect(dGREF, hygov1.dGREF) annotation(Line(points = {{-53, -10}, {2.08009, -10}, {2.08009, -10.0537}, {2.08009, -10.0537}}));
  connect(TRIP, gensal1.TRIP) annotation(Line(points = {{40, 35}, {40.1656, 35}, {40.1656, 10}, {40, 10}}));
  connect(gensal1.p, bus0) annotation(Line(points = {{40, -10}, {40, -24}, {75, -24}, {75, -25}}));
  connect(hygov1.PMECH, gensal1.PMECH) annotation(Line(points = {{22, -10}, {24, -10}, {24, -6}, {30, -6}}, color = {0, 0, 127}));
  connect(hygov1.SLIP, gensal1.SLIP) annotation(Line(points = {{2, -26}, {0, -26}, {0, -34}, {54, -34}, {54, -8}, {50, -8}}, color = {0, 0, 127}));
  connect(ieeet11.EFD0, gensal1.EFD0) annotation(Line(points = {{22, 0}, {29.8, 0}}, color = {0, 0, 127}));
  connect(ieeet11.EFD, gensal1.EFD) annotation(Line(points = {{22, 2}, {26, 2}, {26, 2.8}, {30, 2.8}}, color = {0, 0, 127}));
  connect(ieeet11.ETERM0, gensal1.ETERM0) annotation(Line(points = {{22, 4}, {26, 4}, {26, 5}, {29.8, 5}}, color = {0, 0, 127}));
  connect(ieeet11.EX_AUX, gensal1.EX_AUX) annotation(Line(points = {{22, 6.6}, {26, 6.6}, {26, 8}, {29.8, 8}}, color = {0, 0, 127}));
  connect(ieeet11.XADIFD, gensal1.XADIFD) annotation(Line(points = {{2, 13}, {-4, 13}, {-4, 26}, {58, 26}, {58, 5}, {50, 5}}, color = {0, 0, 127}));
  connect(const.y, ieeet11.VUEL) annotation(Line(points = {{-8.5, 10}, {2, 10}}, color = {0, 0, 127}));
  connect(ieeet11.VOEL, ieeet11.VUEL) annotation(Line(points = {{2, 7.2}, {0, 7.2}, {0, 10}, {2, 10}}, color = {0, 0, 127}));
  connect(ieeet11.VOTHSG, ieeet11.VUEL) annotation(Line(points = {{2, 4.4}, {0, 4.4}, {0, 10}, {2, 10}}, color = {0, 0, 127}));
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Rectangle(origin = {0.341686, -0.113895}, extent = {{-99.4305, 99.4305}, {99.4305, -99.4305}}), Text(origin = {-56.15, 42.48}, extent = {{138.843, -72.3188}, {-24.72, 14.46}}, textString = "GENSAL_IEEET1_HYGOV"), Text(origin = {67.6574, -76.3052}, extent = {{-17.77, 11.62}, {17.77, -11.62}}, textString = "PIN")}));
end GENSAL_IEEET1_HYGOV;
