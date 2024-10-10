within OpalRT.GenUnits;
model CIMTR4
  parameter Real partType = 1;
  parameter Real P_gen = 100 "Bus Active Power, MW";
  parameter Real Q_gen = 10 "Bus Reactive Power, MVAR";
  parameter Real Vt_abs = 1.0 "Bus Voltage Magnitude, p.u.";
  parameter Real Vt_ang = 0 "Bus Voltage Angle, deg.";
  parameter Real SB = 100 "Machine Base Power, MVA";
  parameter Real fn = 60 "Nominal frequency";
  parameter Real ZSOURCE_RE = 0.1 "Machine source impedence";
  parameter Real Tp = 1.05 "(> 0)";
  parameter Real Ts = 0.1 "(>= 0; if equal to 0, see manual)";
  parameter Real H = 3 "Inertia";
  parameter Real X = 4;
  parameter Real Xp = 0.3;
  parameter Real Xs = 0.2 "(if equal to 0, see manual)";
  parameter Real Xl = 0.1;
  parameter Real E1 = 1 "(>= 0.)";
  parameter Real SE1 = 0.3157;
  parameter Real E2 = 1.2;
  parameter Real SE2 = 1.303;
  parameter Real D = 0;
  parameter Real Syn_TOR = 0 "(> 0), Mechanical power at synchronous speed";
  OpalRT.Electrical.Machine.InductionMachine.CIMTR4 cimtr4(P_gen = P_gen, Q_gen = Q_gen, Vt_abs = Vt_abs, Vt_ang = Vt_ang, SB = SB, fn = fn, ZSOURCE_RE = ZSOURCE_RE, Tp = Tp, Ts = Ts, H = H, X = X, Xp = Xp, Xs = Xs, Xl = Xl, E1 = E1, SE1 = SE1, E2 = E2, SE2 = SE2, D = D, Syn_TOR = Syn_TOR) annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
  OpalRT.NonElectrical.Connector.PwPin bus0 annotation(Placement(visible = true, transformation(origin = {100, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(bus0, cimtr4.p) annotation(Line(points = {{100, -80}, {62.7451, -80}, {62.7451, -22.658}, {27.8867, -22.658}, {27.8867, -22.658}}));
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={ Text(origin = {-32.76, -0.719062}, extent = {{-52.09, 38.24}, {110.387, -14.5748}}, textString = "CIMTR4"), Text(origin = {-25.7422, -78.263}, extent = {{71.1423, 16.0178}, {110.39, -14.57}}, textString = "PIN"), Rectangle(origin = {-1.1544, 1.443}, extent = {{-98.4127, 98.7013}, {101.01, -101.876}})}));
end CIMTR4;
