%% Tiles set plus extra orthogonal state

extra_state = 1/2*[1 1 -1 0 0 -1 0 0 0];
set = [UPB('Tiles') extra_state'];

disp(LocalDistinguishability(UPB('Tiles')))
disp(LocalDistinguishability(set, 'copies', 1, 'ppt', true))
disp(LocalDistinguishability(set, 'copies', 2, 'ppt', true))

