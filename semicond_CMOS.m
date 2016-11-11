%Import
filename = 'CMOS1.txt';
A = importdata(filename,'\t',34);

%Collect right data 
V = A.data(:,2);
C = A.data(:,1);

plot(V,C);
legend('CMOS experimental');
xlabel('V');
ylabel('C');

Cmeas = 5.35e-10;
Cmin = 1.445e-10;
A = 0.05^2*pi();
Eox = 3.45e-13;
Es = 1.04e-12;
tox = (Eox*A)/Cmeas
Cdep = 1/(1/Cmin - 1/Cmeas);
Wdep = (Es*A)/Cdep
Nsub = 5.222e15
ni = 1e10;
q = 1.602e-19;
Wit = sqrt((4*Es*0.026*log(Nsub/ni))/(q*Nsub));

Cfb = 1/(1/Cmeas + (1/A)*sqrt(0.026/(q*Nsub*Es)));
Vfb = -0.7

XiM = 4.1;
XiSi = 4.05;
Nv = 1e19;
Efv = -log(Nsub/Nv)*0.026;
Eg = 1.12;
Ecf = Eg - Efv;
Vfbtheo = XiM - XiSi - Ecf