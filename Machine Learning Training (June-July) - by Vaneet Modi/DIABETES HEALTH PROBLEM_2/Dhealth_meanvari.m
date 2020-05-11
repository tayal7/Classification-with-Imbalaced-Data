% with mean, variance, standard deviation in the range in the same file
clc;
clearvars;

% read the first text file
file1 = fopen('C:\Users\Lappi\Desktop\VM_Clustering\DIABETES HEALTH PROBLEM_2\data-01 - Copy.txt');
FT1 = textscan(file1, '%s%s%d%d', 801, 'delimiter', '\t');
fclose(file1);
celldisp(FT1);

%array = 800:1;
%a=1;
sum=0;

for i=1:1:800
    %array{a,1} = FT1{1,4}(i);
    %a=a+1;
    sum=sum+FT1{1,4}(i);
end

mean=sum/800;
varsum=0;

for i=1:1:800
    if 110<=FT1{1,4}(i)<=150
        diff=(FT1{1,4}(i)-mean)^2;
        varsum = varsum + diff;
    end
end

var1 = (varsum/50);

isqrt = @(x) int32(sqrt(double(x))); %helper function
stndev = isqrt(var1);

for i=1:1:800
    if 110<=FT1{1,4}(i)<=150
    disp('old');
    disp(FT1{1,4}(i));
        FT1{1,4}(i)=stndev+FT1{1,4}(i); 
    disp('new');
    disp(FT1{1,4}(i));
    end
end

sum2=0;
for i=1:1:800
    %array{a,1} = FT1{1,4}(i);
    %a=a+1;
    sum2=sum2+FT1{1,4}(i);
end
mean2=sum2/800;

