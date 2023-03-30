function [Fn] = fibonacci(n)
 % FIBONACCI calcula o n-ésimo número da sequência de fibonacci
 % 
 % [Fn] = finbonacci(5) Retorna o 5º Numero de fibonnaci
 
 if n == 1 || n ==2
     Fn = 1;
     return
 end

 Fn = fibonacci(n - 1) + fibonacci(n - 2);
end
