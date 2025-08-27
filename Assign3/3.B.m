function primeVec = prog3b(rangeVec)
    if nargin == 0
        rangeVec = input('Enter the range as [start end]: ');
    end

    % Validate input
    if ~isvector(rangeVec) || length(rangeVec) ~= 2
        error('Input must be a 2-element vector [start, end].');
    end
    
    startNum = floor(rangeVec(1));
    endNum = floor(rangeVec(2));
    
    if startNum > endNum
        error('Start of range must be less than or equal to end.');
    end
    
    if startNum < 2
        startNum = 2; % primes start at 2
    end
    
    primeVec = [];
    for num = startNum:endNum
        if isPrime(num)
            primeVec(end+1) = num; %#ok<AGROW>
        end
    end
end

function tf = isPrime(n)
    if n == 2
        tf = true;
        return;
    elseif n < 2 || mod(n,2) == 0
        tf = false;
        return;
    end
    tf = true;
    limit = floor(sqrt(n));
    for i = 3:2:limit
        if mod(n,i) == 0
            tf = false;
            break;
        end
    end
end
