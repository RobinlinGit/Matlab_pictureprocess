function y = anti_zigzag(s)
%将列向量做逆zigzag变换，变为原有的矩阵形式
%由于本次编程仅限8*8矩阵，故此处直接用打表法
if(length(s)~=64)
    error('must be an 64 length column vector');
end

index = [1,9,2,3,10,17,25,18,11,4,5,12,19,26,33,41,...
        34,27,20,13,6,7,14,21,28,35,42,49,57,50,43,36,...
        29,22,15,8,16,23,30,37,44,51,58,59,52,45,38,31,24,32,39,46,53,...
        60,61,54,47,40,48,55,62,63,56,64];  %zigzag的对应索引
y = zeros(64,1);
for i = 1:64
    y(index(i)) = s(i);
end
y = reshape(y,8,8);             %变为矩阵
end
