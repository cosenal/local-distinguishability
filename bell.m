%% Bell state discrimination 
bells_m = [Bell(1) Bell(2) Bell(3) Bell(4)]';

disp(Distinguishability(bells_m));
disp(LocalDistinguishability(bells_m, 'copies', 1));

%% Entanglement cost
eps = 1/2; % takes a value between 0 and 1
eps_state = [sqrt((1+eps)/2) 0 0 sqrt((1-eps)/2)]';

%% 4 Bell states
d = 4;
n = 4;

bells_m = zeros(d^2, n);

for k=1:n    
    % makes sure we are considering the right partition
    bells_m(:, k) = Swap(kron(Bell(k), eps_state), [2 3], [2 2 2 2]);
end

disp(Distinguishability(bells_m));
disp(LocalDistinguishability(bells_m, 'copies', 1));

%% 3 Bell states
n = 3;
disp(Distinguishability(bells_m(:, 1:n)));
disp(LocalDistinguishability(bells_m(:, 1:n), 'copies', 1));
disp(LocalDistinguishability(bells_m(:, 1:n), 'copies', 2));
