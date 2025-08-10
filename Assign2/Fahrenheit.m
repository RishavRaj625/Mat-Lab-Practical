% fahrenheit_to_celsius_loop.m
clc;
clear;

while true
    userInput = input('Enter temperature in Fahrenheit (or "stop" to exit): ', 's');

    if strcmpi(userInput, 'stop')
        disp('Program ended.');
        break;
    end

    % Convert string input to numeric
    F = str2double(userInput);

    if isnan(F)
        disp('Invalid input. Please enter a number or "stop".');
        continue;
    end

    C = (5/9) * (F - 32);
    fprintf('%.2f°F = %.2f°C\n\n', F, C);
end
