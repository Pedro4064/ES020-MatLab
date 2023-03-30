function [Fn] = fibonacci(n)
 %
 if n == 1 || n ==2
     Fn = 1;
     return
 end

 Fn = fibonacci(n - 1) + fibonacci(n - 2);
end
