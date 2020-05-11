clc;
clearvars;

% read the first text file
file1 = fopen('C:\Users\Lappi\Desktop\VM_Clustering\DIABETES HEALTH PROBLEM_5\data-01 - Copy.txt');
FT1 = textscan(file1, '%s%s%d%d', 801, 'delimiter', '\t');
fclose(file1);
celldisp(FT1);

normal = 110;

for i=1:1:800
    val=FT1{1,4}(i);
    if val == normal
        val=val+1;
    end
end

% for i=1:1:800
%     val=FT1{1,4}(i);
%     if val == normal
%         FT1{1,4}(i)=FT1{1,4}(i)+1;
%     end
% end