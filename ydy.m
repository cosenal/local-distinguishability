%% Yu--Duan--Ying states

states = 1/2*[vec(kron(Pauli(0),Pauli(0)))'; ...
              vec(kron(Pauli(1),Pauli(1)))'; ...
              vec(kron(Pauli(2),Pauli(1)))'; ...
              vec(kron(Pauli(3),Pauli(1)))']';
      
%% Global
disp(Distinguishability(states));
% PPT 
disp(LocalDistinguishability(states, 'copies', 1));
% 2-copies symm. extensions (Separable)
% disp(LocalDistinguishability(states));