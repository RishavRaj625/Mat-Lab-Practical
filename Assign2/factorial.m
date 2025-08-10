% factorial_loop_non_recursive.m
clc;
clear;

while true
    userInput = input('Enter a positive integer (or "stop" to exit): ', 's');

    if strcmpi(userInput, 'stop')
        disp('Program ended.');
        break;
    end

    n = str2double(userInput);

    if isnan(n) || n < 0 || floor(n) ~= n
        fprintf('Invalid input. Please enter a non-negative integer.\n\n');
        continue;
    end

    % Compute factorial using a loop
    result = 1;
    for i = 2:n
        result = result * i;
    end

    fprintf('Factorial of %d is %d\n\n', n, result);
end
