mos = importdata('MOSCAP_5', '\t', 34);
V = mos.data(:,2);
C = mos.data(:,1);

plot(V,C);
title('C-V Curve MOS Capacitance');
legend('MOS experimental');
xlabel('Voltage [V]');
ylabel('Capacitance [F]');

area = 0.05^2*pi();
Eox = 3.45e-13;
Es = 1.04e-12;
ni = 1e10;
q = 1.602e-19;
XiM = 4.1;
XiSi = 4.05;
Nv = 1e19;
Eg = 1.12;

N = 5.222e15
Cmeas = 1.715e-10; 
Cmin = 2.9e-11;

Cdep = 1/(1/Cmin - 1/Cmeas);
Wdep = (Es*area)/Cdep
tox = (Eox*area)/Cmeas

Cfb = 1/(1/Cmeas + (1/area)*sqrt(0.026/(q*N*Es)))
Ev = -log(N/Nv)*0.026;
Ec = Eg - Ev;
Vfbtheo = XiM - XiSi - Ec