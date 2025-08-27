function fibVec = prog3a(N)
    if nargin == 0  % No input argument passed
        N = input('Enter a positive integer for Fibonacci series length: ');
    end

    % Validate input
    if ~isscalar(N) || N <= 0 || floor(N) ~= N
        error('Input must be a positive integer.');
    end

    % Initialize output vector
    fibVec = zeros(1, N);

    % First two Fibonacci numbers
    fibVec(1) = 0;
    if N > 1
        fibVec(2) = 1;
    end

    % Compute rest
    for k = 3:N
        fibVec(k) = fibVec(k-1) + fibVec(k-2);
    end
end

