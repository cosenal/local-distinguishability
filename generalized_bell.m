%% Generalized Bell states

n = 5;
gen_bells = [vec(GenPauli(0,0,n)), ...
             vec(GenPauli(1,1,n)), ...
             vec(GenPauli(1,2,n)), ...
             vec(GenPauli(3,1,n)), ...
             vec(GenPauli(3,2,n))];

disp(Distinguishability(gen_bells));
disp(LocalDistinguishability(gen_bells, 'copies', 1));

n = 6;
gen_bells = [vec(GenPauli(0,0,n)), ...
             vec(GenPauli(1,1,n)), ...
             vec(GenPauli(0,2,n)), ...
             vec(GenPauli(0,3,n)), ...
             vec(GenPauli(0,4,n)), ...
             vec(GenPauli(3,0,n))];

disp(Distinguishability(gen_bells));
disp(LocalDistinguishability(gen_bells, 'copies', 1));
