%% 1. Inverse and Determinant of a Square Matrix
A = [4, 2, 1; 0, 3, -1; 2, -2, 5]; % Example square matrix
disp('Matrix A:');
disp(A);

% Determinant
detA = det(A);
disp(['Determinant of A: ', num2str(detA)]);

% Inverse
if detA ~= 0
    invA = inv(A);
    disp('Inverse of A:');
    disp(invA);
else
    disp('Matrix A is singular and has no inverse.');
end

%% 2. Transpose of a Matrix
transposeA = A';
disp('Transpose of A:');
disp(transposeA);

%% 3. Inner Product of Two Vectors
v1 = [1; 2; 3];
v2 = [4; -1; 2];
innerProduct = dot(v1, v2);
disp(['Inner product of v1 and v2: ', num2str(innerProduct)]);

%% 4. Trace of a Square Matrix
traceA = trace(A);
disp(['Trace of A: ', num2str(traceA)]);

%% 5. Outer Product of Two Vectors
outerProduct = v1 * v2';
disp('Outer product of v1 and v2:');
disp(outerProduct);

%% 6. Eigenvalues and Eigenvectors of a Square Matrix
[eigVecs, eigVals] = eig(A);
disp('Eigenvalues of A:');
disp(diag(eigVals));
disp('Eigenvectors of A:');
disp(eigVecs);

%% 7. Check if a Matrix is Orthogonal
% A matrix Q is orthogonal if Q' * Q = I
Q = [0 -1; 1 0]; % Example orthogonal matrix
if isequal(round(Q' * Q, 10), eye(size(Q)))
    disp('Matrix Q is orthogonal.');
else
    disp('Matrix Q is NOT orthogonal.');
end

%% 8. Check if Two Vectors are Orthogonal
if dot(v1, v2) == 0
    disp('v1 and v2 are orthogonal.');
else
    disp('v1 and v2 are NOT orthogonal.');
end

%% 9. Eigenvalues of the Inverse of a Matrix
if detA ~= 0
    invEigVals = 1 ./ diag(eigVals);
    disp('Eigenvalues of inv(A):');
    disp(invEigVals);
end

%% 10. Check if Eigenvectors of a Symmetric Matrix are Orthogonal
S = [2, -1, 0; -1, 2, -1; 0, -1, 2]; % Example symmetric matrix
[Vs, ~] = eig(S);
% Check orthogonality of eigenvectors
isOrthogonal = isequal(round(Vs' * Vs, 10), eye(size(Vs)));
if isOrthogonal
    disp('Eigenvectors of the symmetric matrix are orthogonal.');
else
    disp('Eigenvectors of the symmetric matrix are NOT orthogonal.');
end
