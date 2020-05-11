clc;
clearvars;

% read the first text file
file1 = fopen('C:\Users\Lappi\Desktop\VM_Clustering\DIABETES HEALTH PROBLEM_3\data-01 - Copy.txt');
FT1 = textscan(file1, '%s%s%d%d', 801, 'delimiter', '\t');
fclose(file1);
celldisp(FT1);

a=1;
b=1;
c=1;

count1=0;
count2=0;

array=800:1;
sfinal1=20:1;
sfinal2=20:1;
sfinal3=20:1;

for i=1:1:800
    array{a,1}=FT1{1,4}(i);
    a=a+1;
end


for i=1:1:800
    if 110<=array{i,1} && array{i,1}<=115
        sfinal1{b,1}=array{i,1};
        b=b+1;
        count1=count1+1;
    end
    if 130<=array{i,1} && array{i,1}<=135
        sfinal2{c,1}=array{i,1};
        c=c+1;
        count2=count2+1;
    end
end

b=1;
c=1;
if count1>count2
    for i=1:1:count1
    r = round(random('Uniform',1,10));
    if r<=5
        sfinal3{b,1}=sfinal1{b,1}-r;
    else
        sfinal3{b,1}=sfinal1{b,1}+r;
    end
    b=b+1;
    end
else
    for i=1:1:count2
    r = round(random('Uniform',1,10));
    if r<=5
        sfinal3{c,1}=sfinal2{c,1}-r;
    else
        sfinal3{c,1}=sfinal2{c,1}+r;
    end
    c=c+1;
    end
end

