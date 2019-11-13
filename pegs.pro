% add in the moves for both directions
move(1, 2, 4).
move(4, 2, 1).
move(1, 3, 6).
move(6, 3, 1).
move(2, 4, 7).
move(7, 4, 2).
move(2, 5, 9).
move(9, 5, 2).
move(3, 5, 8).
move(8, 5, 3).
move(3, 6, 10).
move(10, 6, 3).
move(4, 7, 11).
move(11, 7, 4).
move(4, 8, 13).
move(13, 8, 4).
move(5, 8, 12).
move(12, 8, 5).
move(5, 9, 14).
move(14, 9, 5).
move(6, 9, 13).
move(13, 9, 6).
move(6, 10, 15).
move(15, 10, 6).
move(4, 5, 6).
move(6, 5, 4).
move(7, 8, 9).
move(9, 8, 7).
move(8, 9, 10).
move(10, 9, 8).
move(11, 12, 13).
move(13, 12, 11).
move(12, 13, 14).
move(14, 13, 12).
move(13, 14, 15).
move(15, 14, 13).

puzzle(X):- 
    delete([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15], X, B),  % get the start board by removing the initial peg
    solve(B, _, _, _).  % pass the start board to solve

solve([_], A, B, C):-  % if we have one peg left then print the result
    writeln('Done. Read make the moves from bottom up. (read from "true" to "done", disregarding the first numbers with underscores...)'), 
    write(A), write(', '), write(B), write(', '), write(C), writeln(' ').

solve(Board, A, B, C):-  % board is a list of spots that have pegs
    member(J, Board),  % J better be in board
    member(O, Board),  % O better be in board
    (\+(J==O)),        % and they shouldnt be the same
    (member(Z, [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]), \+member(Z, Board)),  % Z better not be in board but be in 1..15
    move(J, O, Z),  % for this move to be legal
    % write(J), write(' '), write(O), write(' '), write(Z), writeln(''),
    select(J, Board, Leftover),  % remove the jumper
    select(O, Leftover, ReallyLeftover),  % remove the jumpee
    % writeln([Z|ReallyLeftover]),
    solve([Z|ReallyLeftover], J, O, Z),  % put the jumper at the front of the list in its new spot and then recurse
    write(A), write(', '), write(B), write(', '), write(C), writeln('').  % if we are done, print A, B, C as they contain the last move we made that was successful