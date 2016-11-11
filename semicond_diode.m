%Import
filename_diode = 'DIODE_5'

A = importdata(filename_diode, '\t', 34);

%Collect right data 
V = A.data(:,2);
I = A.data(:,1);

disp(V(1))
disp(I(1))