function [y] = quadratura_trapezoidale(f, a, b)
    y = (f(b)+f(a))*(b-a)./2;
end

