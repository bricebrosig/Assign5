%this will be the prolog one...

% there are 4 actual start positions since we have some symmetry for 
% this puzzle. So we can solve the puzzle 4 different times, and just
% map inputs to solutions without the mintiae (and frankly slow runtime)
% of generating all solutions

% the first step for the regular starts is to make 3 moves to get a diamond in the top (or bottom corners)
% empty and have 'magic triangles in the bottom'

% === Starts ===

% corners -> positions 1, 11, 15
puzzle(1):- writeln('(6,3,1)'), writeln('(4,5,6)'), writeln('(1,2,4)'), magic(1).
puzzle(11):- writeln('(4,7,11)'), writeln('(13,8,4)'), writeln('(11,12,13)'), magic(11).
puzzle(15):- writeln('(13,14,15)'), writeln('(6,9,13)'), writeln('(15,10,6)'), magic(15).

% almost corners -> 2, 3, 7, 12, 10, 14  (note: the first number in the last tuple tell which magic it is)
puzzle(2):-writeln('(7,4,2)'), writeln('(13,8,4)'), writeln('(11,12,13)'), magic(2).
puzzle(3):-writeln('(10,6,3)'), writeln('(13,9,6)'), writeln('(15,14,13)'), magic(3).
puzzle(7):-writeln('(2,4,7)'), writeln('(6,5,4)'), writeln('(1,3,6)'), magic(7).
puzzle(12):-writeln('(14,13,12)'), writeln('(6,9,13)'), writeln('(15,10,6)'), magic(12).
puzzle(10):-writeln('(3,6,10)'), writeln('(4,5,6)'), writeln('(1,2,4)'), magic(10).
puzzle(14):-writeln('(12,13,14)'), writeln('(4,8,13)'), writeln('(11,7,4)'), magic(14).

% outside middle -> 4, 6, 13
puzzle(4):-writeln('(13,8,4)'), writeln('(10,9,8)'), writeln('(15,14,13)'), magic(4).
puzzle(6):-writeln('(4,5,6)'), writeln('(12,8,5)'), writeln('(11,7,4)'), magic(6).
puzzle(13):-writeln('(6,9,13)'), writeln('(2,5,9)'), writeln('(1,3,6)'), magic(13).

% center (hard mode) -> 5, 8, 9
puzzle(5):- writeln('(14,9,5)'), writeln('(7,8,9)'), writeln('(2,4,7)'), writeln('(6,5,4)'),
    writeln('(7,4,2)'), writeln('(1,2,4)'), writeln('(15,10,6)'), writeln('(3,6,10)'), writeln('(12,13,14)'),
    writeln('(10,9,8)'), writeln('(4,8,13)'), writeln('(14,13,12)'), writeln('(11,12,13)'),
    writeln('[0,0,0,0,0,0,0,0,0,0,0,0,1,0,0]').

puzzle(8):- writeln('(3,5,8)'), writeln('(14,9,5)'), writeln('(12,13,14)'), writeln('(4,8,13)'), 
    writeln('(14,13,12)'), writeln('(11,12,13)'), writeln('(1,2,4)'), writeln('(7,4,2)'), writeln('(10,6,3)'), 
    writeln('(2,5,9)'), writeln('(13,9,6)'), writeln('(3,6,10)'), writeln('(15,10,6)'), 
    writeln('[0,0,0,0,0,1,0,0,0,0,0,0,0,0,0]').

puzzle(9):- writeln('(7,8,9'), writeln('(3,5,8)'), writeln('(10,6,3)'), writeln('(13,9,6'), writeln('(3,6,10)'),
    writeln('(15,10,6)'), writeln('(11,12,13)'), writeln('(14,13,12)'), writeln('(2,4,7)'), writeln('(12,8,5)'),
    writeln('(6,5,4)'), writeln('(7,4,2)'), writeln('(1,2,4)'),
    writeln('[0,0,0,1,0,0,0,0,0,0,0,0,0,0,0]').



% === Magic Triangles ===
magic(1):-writeln('(7,4,2)'), writeln('(13,8,4)'), writeln('(2,4,7)'), rows(1).
magic(7):-magic(1).
magic(10):-magic(1).
magic(13):-magic(1).

magic(15):-writeln('(3,6,10)'), writeln('(4,5,6)'), writeln('(10,6,3)'), rows(11).
magic(3):-magic(15).
magic(12):-magic(15).
magic(4):-magic(15).

magic(11):-writeln('(14,13,12)'), writeln('(6,9,13)'), writeln('(12,13,14)'), rows(15).
magic(2):-magic(11).
magic(14):-magic(11).
magic(6):-magic(11).

% === bottom two rows ===
rows(1):-writeln('(10,9,8)'), writeln('(7,8,9)'), writeln('(15,14,13)'), writeln('(12,13,14)'), final(1).

rows(15):-writeln('(12,8,5)'), writeln('(3,5,8)'), writeln('(11,7,4)'), writeln('(2,4,7)'), final(15).

rows(11):-writeln('(2,5,9)'), writeln('(14,9,5)'), writeln('(1,3,6)'), writeln('(10,6,3)'), final(11).


% === Final step here ===
final(1):-writeln('(6,9,13)'), writeln('(14,13,12)'), writeln('(11,12,13)'), writeln('[0,0,0,0,0,0,0,0,0,0,0,0,1,0,0]').

final(15):-writeln('(13,8,4)'), writeln('(7,4,2)'), writeln('(1,2,4)'), writeln('[0,0,0,1,0,0,0,0,0,0,0,0,0,0,0]').

final(11):-writeln('(4,5,6)'), writeln('(2,6,10)'), writeln('(15,10,6)'), writeln('[0,0,0,0,0,1,0,0,0,0,0,0,0,0,0]').

