function [x0, err, iter, b, table] = birgeVietaOneRoot( coeff, x0, max_iter, eps)
iter = 1;
err = inf;
table = zeros(1,size(coeff,2),4);
b = zeros(size(coeff));
while(err > eps && iter <= max_iter)
    b(size(coeff, 2)) = coeff(size(coeff, 2));
    c = b;
    for i = size(coeff, 2) - 1:-1: 1
        b(i) = coeff(i) + b(i + 1) * x0;
        c(i) = b(i) + c(i + 1) * x0;
    end
    if(c(2) == 0)
        c(2) = c(2) + 0.0001;
    end
    x1 = x0 - (b(1) / c(2));
    err = abs((x1 - x0) / x1);
    is = [size(coeff,2) - 1:-1:0];
    c(1)=0;
    t = [is' double(fliplr(coeff))' double(fliplr(b))' double(fliplr(c))'];
    %size(t)
    table(iter, :, :) = t;
    iter = iter + 1;
    x0 = x1;
end


end

