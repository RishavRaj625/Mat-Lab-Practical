N = input('Enter a positive integer: ');

% Validate input
if ~isscalar(N) || N <= 0 || floor(N) ~= N
    error('Input must be a positive integer.');
end

% Anonymous function calling a nested helper function
fact = @(x) factorial_loop(x);

% Compute factorial
result = fact(N);

% Display result
fprintf('Factorial of %d is %d\n', N, result);

function f = factorial_loop(n)
    f = 1;
    for k = 2:n
        f = f * k;
    end
end