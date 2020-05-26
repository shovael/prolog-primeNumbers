
speed_test() :-
	write('To any specific num or just 0 for default'),
	read(X),
	speed_test(1,X).

speed_test(1,0) :-
	speed_test(1,100000).

speed_test(Y,X) :-
	X =:= Y,
	!.

speed_test(Y,X) :-
	check_num(Y),
	format(' ~w,',[Y]),
	Z is Y+1,
	speed_test(Z,X).

speed_test(Y,X) :-
	Z is Y+1,
	speed_test(Z,X).



check_num(1).

check_num(2).

check_num(3).	

check_num(X) :-
	not(0 is mod(X,2)),
	check(X,3).

check(X,Y) :-
	Z is sqrt(X)+1,
	Z =< Y,
	!.

check(X,Y) :-
	not(0 is mod(X,Y)),
	Z is Y+2, 
	check(X,Z).


 
sqrt_test(X) :-
	Z is sqrt(X),
	format('~w',[Z]).