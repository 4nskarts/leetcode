Program leet_2409;
Var
	arriveAlice, leaveAlice: String;
	arriveBob, leaveBob		 : String;

Function countDaysTogether(arriveAlice, leaveAlice, arriveBob, leaveBob: String): Integer;
Var
	i, cpt: Integer;
Begin
	(*
		using the case of, we handle the edge case of final day
		in month, then we can add a day and compare the two strings
		and see if they overlap (are equal).. if so, we increment
		the counter and later return it.
	*)
End;

Begin
	arriveAlice := '08-15';
	leaveAlice 	:= '08-18';
	arriveBob 	:= '08-16';
	leaveBob	 	:= '08-19';
	Write(Chr(Ord('2'))+Chr(Ord('2')+1));
	//Write('Output: ', countDaysTogether(arriveAlice, leaveAlice, arriveBob, leaveBob));
	Readln
End.