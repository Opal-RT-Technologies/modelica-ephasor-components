within OpalRT.GenUnits.GENROU;
class GENROU_EXPIC1_GGOV1
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
  // GGOV1 parameters
  parameter Real R_tg = 0.5 "Permanent droop (pu)" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Tpelec_tg = 0.6 "Electrical power transducer time constant (sec)" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real maxerr_tg = 0.025 "Maximum value for speed error signal" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real minerr_tg = -0.025 "Minimum value for speed error signal" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Kpgov_tg = 6 "Governor proportional gain" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Kigov_tg = 0.22 "Governor integral gain" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Kdgov_tg = 0 "Governor derivative gain" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Tdgov_tg = 1 "Governor derivative controller time constant (sec)" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real vmax_tg = 1 "Maximum valve position limit" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real vmin_tg = 0.24 "Minimum valve position limit" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Tact_tg = 0.6 "Actuator time constant (sec)" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Kturb_tg = 1.5 "Turbine gain" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Wfnl_tg = 0.25 "No load fuel flow (pu)" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Tb_tg = 1 "Turbine lag time constant (sec)" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Tc_tg = 1.1 "Turbine lead time constant (sec)" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Teng_tg = 0 "Transport lag time constant for diesel engine (sec)" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Tfload_tg = 0.3 "Load Limiter time constant (sec)" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Kpload_tg = 1.2 "Load limiter proportional gain for PI controller" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Kiload_tg = 3.3 "Load limiter integral gain for PI controller" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Ldref_tg = 1 "Load limiter reference value (pu)" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Dm_tg = -0.5 "Mechanical damping coefficient (pu)" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Ropen_tg = 99 "Maximum valve opening rate (pu/sec)" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Rclose_tg = -99 "Maximum valve closing rate (pu/sec)" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Kimw_tg = 0.01 "Power controller (reset) gain" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Aset_tg = 99 "Acceleration limiter setpoint (pu/sec)" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Ka_tg = 10 "Acceleration limiter gain" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Ta_tg = 1 "Acceleration limiter time constant( > 0) (sec)" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Trate_tg = 200 "Turbine rating (MW)" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real db_tg = 0 "Speed governor deadband" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Tsa_tg = 1 "Temperature detection lead time constant (sec)" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Tsb_tg = 1 "Temperature detection lag time constant (sec)" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Rup_tg = 99 "Maximum rate of load limit increase" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Rdown_tg = -99 "Maximum rate of load limit decrease" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Rselect_tg = 1 "ICON(M), Feedback signal for governor droop" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real Flag_tg = 1 "ICON(M+1),Switch for fuel source characteristic" annotation(Dialog(tab = "GGOV1 parameters"));
  parameter Real DELTA_tg = 0.01 "Simulation sample time, sec." annotation(Dialog(tab = "GGOV1 parameters"));
  OpalRT.Electrical.Control.Excitation.EXPIC1 expic11(TR = TR_ex, KA = KA_ex, TA1 = TA1_ex, VR1 = VR1_ex, VR2 = VR2_ex, TA2 = TA2_ex, TA3 = TA3_ex, TA4 = TA4_ex, VRMAX = VRMAX_ex, VRMIN = VRMIN_ex, KF = KF_ex, TF1 = TF1_ex, TF2 = TF2_ex, EFDMAX = EFDMAX_ex, EFDMIN = EFDMIN_ex, KE = KE_ex, TE = TE_ex, E1 = E1_ex, SE_E1 = SE_E1_ex, E2 = E2_ex, SE_E2 = SE_E2_ex, KP = KP_ex, KI = KI_ex, KC = KC_ex) annotation(Placement(visible = true, transformation(origin = {-14, 28}, extent = {{-22.5, -22.5}, {22.5, 22.5}}, rotation = 0)));
  OpalRT.Electrical.Machine.SynchronousMachine.GENROU genrou1(IBUS = IBUS, ID = M_ID, P_gen = P_gen, Q_gen = Q_gen, Vt_abs = Vt_abs, Vt_ang = Vt_ang, SB = SB, fn = fn, ZSOURCE_RE = ZSOURCE_RE, Tdo_p = Tdo_p, Tdo_s = Tdo_s, Tqo_p = Tqo_p, Tqo_s = Tqo_s, H = H, D = D, Xd = Xd, Xq = Xq, Xd_p = Xd_p, Xq_p = Xq_p, Xd_s = Xd_s, Xl = Xl, S1 = S1, S12 = S12) annotation(Placement(visible = true, transformation(origin = {50, 10}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {-62, 54}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin TRIP annotation(Placement(visible = true, transformation(origin = {42, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpalRT.NonElectrical.Connector.PwPin bus0 annotation(Placement(visible = true, transformation(origin = {90, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {80, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dAset annotation(Placement(visible = true, transformation(origin = {-70, 150}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dGREF annotation(Placement(visible = true, transformation(origin = {-78, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpalRT.Electrical.Control.TurbineGovernor.GGOV1 ggov11(R = R_tg, Tpelec = Tpelec_tg, maxerr = maxerr_tg, minerr = minerr_tg, Kpgov = Kpgov_tg, Kigov = Kigov_tg, Kdgov = Kdgov_tg, Tdgov = Tdgov_tg, vmax = vmax_tg, vmin = vmin_tg, Tact = Tact_tg, Kturb = Kturb_tg, Wfnl = Wfnl_tg, Tb = Tb_tg, Tc = Tc_tg, Teng = Teng_tg, Tfload = Tfload_tg, Kpload = Kpload_tg, Kiload = Kiload_tg, Ldref = Ldref_tg, Dm = Dm_tg, Ropen = Ropen_tg, Rclose = Rclose_tg, Kimw = Kimw_tg, Aset = Aset_tg, Ka = Ka_tg, Ta = Ta_tg, Trate = Trate_tg, db = db_tg, Tsa = Tsa_tg, Tsb = Tsb_tg, Rup = Rup_tg, Rdown = Rdown_tg, Rselect = Rselect_tg, Flag = Flag_tg, DELTA = DELTA_tg) annotation(Placement(visible = true, transformation(origin = {-6, -14}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  input OpalRT.NonElectrical.Connector.InputInterfacePin dVREF annotation(Placement(visible = true, transformation(origin = {-80, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-80, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(expic11.dVREF, dVREF) annotation(Line(points = {{-36.5, 14.5}, {-61.3734, 14.5}, {-61.3734, 21.03}, {-72.103, 21.03}, {-72.103, 21.03}}, color = {0, 0, 127}));
  connect(ggov11.PMECH0, genrou1.PMECH0) annotation(Line(points = {{9, -5}, {11.588, -5}, {11.588, -11.1588}, {24.0343, -11.1588}, {24.0343, -11.1588}}, color = {0, 0, 127}));
  connect(ggov11.MBASE, genrou1.MBASE) annotation(Line(points = {{-21, -20}, {-30.4721, -20}, {-30.4721, -60.515}, {112.876, -60.515}, {112.876, -3.86266}, {77.2532, -3.86266}, {77.2532, -3.86266}}, color = {0, 0, 127}));
  connect(ggov11.VI, genrou1.VI) annotation(Line(points = {{-21, -14}, {-33.0472, -14}, {-33.0472, -65.6652}, {117.597, -65.6652}, {117.597, 9.44206}, {76.3948, 9.44206}, {76.3948, 9.44206}}, color = {0, 0, 127}));
  connect(expic11.VI, genrou1.VI) annotation(Line(points = {{8.5, 41.5}, {92.2747, 41.5}, {92.2747, 9.44206}, {76.3948, 9.44206}, {76.3948, 9.44206}}, color = {0, 0, 127}));
  connect(dGREF, ggov11.dGREF) annotation(Line(points = {{-78, -12}, {-51.9313, -12}, {-51.9313, -1.71674}, {-22.7468, -1.71674}, {-22.7468, -1.71674}}));
  connect(TRIP, genrou1.TRIP) annotation(Line(points = {{42, 48}, {50.6386, 48}, {50.6386, 35}, {50, 35}}));
  connect(genrou1.p, bus0) annotation(Line(points = {{50, -15}, {50.1161, -15}, {50.1161, -30}, {90, -30}}));
  connect(ggov11.PMECH, genrou1.PMECH) annotation(Line(points = {{9, -2}, {12, -2}, {12, -5}, {25, -5}}, color = {0, 0, 127}));
  connect(ggov11.SLIP, genrou1.SLIP) annotation(Line(points = {{-21, -26}, {-28, -26}, {-28, -56}, {108, -56}, {108, -10}, {75, -10}}, color = {0, 0, 127}));
  connect(expic11.EFD0, genrou1.EFD0) annotation(Line(points = {{8.5, 10}, {24.5, 10}}, color = {0, 0, 127}));
  connect(expic11.EFD, genrou1.EFD) annotation(Line(points = {{8.5, 14.5}, {16.25, 14.5}, {16.25, 17}, {25, 17}}, color = {0, 0, 127}));
  connect(expic11.ETERM0, genrou1.ETERM0) annotation(Line(points = {{8.5, 19}, {16.25, 19}, {16.25, 22.5}, {24.5, 22.5}}, color = {0, 0, 127}));
  connect(expic11.EX_AUX, genrou1.EX_AUX) annotation(Line(points = {{8.5, 24.85}, {17.25, 24.85}, {17.25, 30}, {24.5, 30}}, color = {0, 0, 127}));
  connect(expic11.XADIFD, genrou1.XADIFD) annotation(Line(points = {{-36.5, 39.25}, {-42, 39.25}, {-42, 64}, {84, 64}, {84, 22.5}, {75, 22.5}}, color = {0, 0, 127}));
  connect(expic11.VOEL, const.y) annotation(Line(points = {{-36.5, 26.2}, {-52, 26.2}, {-52, 54}, {-55.4, 54}}, color = {0, 0, 127}));
  connect(expic11.VUEL, const.y) annotation(Line(points = {{-36.5, 32.5}, {-52, 32.5}, {-52, 54}, {-55.4, 54}}, color = {0, 0, 127}));
  connect(expic11.VOTHSG, const.y) annotation(Line(points = {{-36.5, 19.9}, {-52, 19.9}, {-52, 54}, {-55.4, 54}}, color = {0, 0, 127}));
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Text(origin = {-24.48, 1.59}, extent = {{-63.44, 25.74}, {113.33, -34.4}}, textString = "GENROU_EXPIC1_GGOV1"), Rectangle(origin = {0.797267, -6.94761}, extent = {{-96.697, 85.0797}, {96.697, -85.0797}})}));
end GENROU_EXPIC1_GGOV1;