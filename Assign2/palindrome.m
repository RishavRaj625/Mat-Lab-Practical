% check_palindrome_loop.m
clc;
clear;

while true
    userInput = input('Enter a string (type "stop" to exit): ', 's');

    if strcmpi(userInput, 'stop')
        disp('Program ended.');
        break;
    end

    processedInput = lower(regexprep(userInput, '\s+', '')); % remove spaces, lowercase

    if strcmp(processedInput, fliplr(processedInput))
        fprintf('"%s" is a Palindrome.\n\n', userInput);
    else
        fprintf('"%s" is NOT a Palindrome.\n\n', userInput);
    end
end
