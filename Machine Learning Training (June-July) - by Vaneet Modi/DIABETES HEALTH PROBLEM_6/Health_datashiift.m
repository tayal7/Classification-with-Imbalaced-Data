clc;
clearvars;

% read the first text file
file1 = fopen('C:\Users\Lappi\Desktop\VM_Clustering\DIABETES HEALTH PROBLEM_6\data-01 - Copy.txt');
FT1 = textscan(file1, '%s%s%d%d', 801, 'delimiter', '\t');
fclose(file1);
celldisp(FT1);

a1=40:1;
a2=40:1;
b=1;
c=1;

for i=1:1:800
    if FT1{1,4}(i)>= 105 && FT1{1,4}(i)<= 115
        a1{b,1}=FT1{1,4}(i);
        b=b+1;
    end
end

p=1;
q=1;

for i=1:1:(b-1)
    a1{i,1}=a1{i,1}+round(random('Uniform',10,12));
    p=p+1;
end
