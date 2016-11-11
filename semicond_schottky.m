%Import
filename_schottky = 'SCHOTTKY'

A = importdata(filename_schottky, '\t', 34);

%Collect right data 
V = A.data(:,2);
I = A.data(:,1);