%this will be the prolog one...

% define the different move include the opposites here 
move(0, 1, 3).    
move(3, 1, 0).    
move(0, 2, 5).    
move(5, 2, 0).    
move(1, 3, 6).    
move(6, 3, 1).    
move(1, 4, 8).    
move(8, 4, 1).    
move(2, 4, 7).    
move(7, 4, 2).    
move(2, 5, 9).    
move(9, 5, 2).    
move(3, 6, 10).
move(10, 6, 3).
move(3, 7, 12).
move(12, 7, 3).
move(4, 7, 11).
move(11, 7, 4).
move(4, 8, 13).
move(13, 8, 4).
move(5, 8, 12).
move(12, 8, 5).
move(5, 9, 14).
move(14, 9, 5).
move(3, 4, 5).
move(5, 4, 3).
move(6, 7, 8).
move(8, 7, 6).
move(7, 8, 9).
move(9, 8, 7).
move(10, 11, 12).
move(12, 11, 10). 
move(11, 12, 13).
move(13, 12, 11).
move(12, 13, 14).
move(14, 13, 12).

init(i,R):-R=[1]*15, R[i] = 0.
