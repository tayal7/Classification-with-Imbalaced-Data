% with variation in the range in the same file
clc;
clearvars;

% read the first text file
file1 = fopen('C:\Users\Lappi\Desktop\VM_Clustering\DIABETES HEALTH PROBLEM_1\data-01 - Copy.txt');
FT1 = textscan(file1, '%s%s%d%d', 817, 'delimiter', '\t');
fclose(file1);
celldisp(FT1);

%arrays
anorm=816:1;
annorm=816:1;

% count variable
normal=0;
notnormal=0;

a=1;
b=1;

for i=1:1:816
    if FT1{1,4}(i)>110 %not-normal
        notnormal = notnormal+1;
        annorm{a,1}=FT1{1,4}(i);
        a=a+1;
    else 
        normal = normal+1;
        anorm{b,1}=FT1{1,4}(i);
        b=b+1;
    end
end

%--------------------------------------------------------------------------
% 1. Store in two array 2. Select NORMAL array 3. Add 111 to each value and
% make it Not-normal
%--------------------------------------------------------------------------

pdiff = normal-notnormal;
pdiffper=(60*normal)/100;

flag=0;
b=1;
if pdiff>pdiffper
    for j=1:50:normal
        for k=1:1:50
            anorm{k,1}=anorm{k,1}+111;
            normal=normal-1;
            notnormal=notnormal+1;
            ndiff = normal-notnormal;
            ndiffper=(60*normal)/100;
            if ndiff>ndiffper
                continue;
            else 
                break;
            end
        end
        flag=flag+1;
    end
end
