function [ output_args ] = LU_Decomposition(n , epsilon, iterations)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here.

arr = zeros(n); %Equations
x = zeros(n, n);  %Solutions


for  i = 1 : n
    equ = input('Enter The Equation : ', 's');
    arr(i) = equ;
end

if n == 3
    [a,b] = equationsToMatrix([eqn(1), eqn(2), eqn(3)], [x, y, z]);
end

s = zeros(n);
o = zeros(n);
er = 0;

for i = 1 : n 
    o(i) = i;
    s(i) = abs(a(i,1));
    for j = 2 : n
        if (abs(a(i,j)) > s(i))
            s(i) = abs(a(i,j));
        end
    end
end
for k = 1 : n-1 
    p = k; 
    big = abs(a(o(k),k));
    for i = k+1 : n 
        dummy = abs(a(o(i),k);
        if (dummy > big)
            big = dummy;
            p = i;
        end
    end
    dummy = o(p);
    o(p) = o(k);
    o(k) = dummy;
    
    if (abs(a(o(k),k)) / s(o(k))) < epsilon)
        er = -1;
    end
    for i = k+1 : n 
        factor = a(o(i),k) / a(o(k),k);
        a(o(i),k) = factor;
        for j = k+1 : n
            a(o(i),j) = a(o(i),j) - factor * a(o(k),j);
        end
    end
end

if (abs(a(o(n),n)) / s(o(n))) < epsilon)
    er = -1;
end

if (er ~= -1)
    y1 = zeros(n);
    y1(o(1)) = b(o(1));
    for i = 2 : n 
        sum = b(o(i));
        for j = 1 : i-1
            sum = sum - a(o(i),j) * b(o(j));
        end
        y1(o(i)) = sum;
    end
    x(n) = y1(o(n)) / a(o(n),n);
    for i = n-1 : 1 
        sum = 0;
        for j = i+1 : n
            sum = sum + a(o(i),j) * x(j);
        end
        x(i) = (y1(o(i)) - sum) / a(o(i),i);
    end
end


end

