Program leet_2446;
Type
	arr = Array[1..2] Of String;
Var
	event1, event2: arr;

// MY idea was to determine if they're valid first
// by figuring if either event1 > event2 or the opposite
// If not then there sure will be a conflict.

(* Another idea which is hard to apply using pascal, is
converting the hours to minute in both events, Then
checking if the minutes intersect using a loop that goes
from 0 to 24*60 - 1 *)
Function haveConflict(s1,s2: arr): Boolean;
	Function event1F2(s1,s2: arr): Boolean;
	Begin
		event1F2 := False;
		If s1[1][1] > s2[2][1] Then
			event1F2 := True
		Else If s1[1][2] > s2[2][2] Then
			event1F2 := True
		Else If s1[1][4] > s2[2][4] Then
			event1F2 := True
		Else If s1[1][5] > s2[2][5] Then
			event1F2 := True
	End;
	
	Function event2F1(s1,s2: arr): Boolean;
	Begin
		event2F1 := False;
		If s2[1][1] > s1[2][1] Then
			event2F1 := True
		Else If s2[1][2] > s1[2][2] Then
			event2F1 := True
		Else If s2[1][4] > s1[2][4] Then
			event2F1 := True
		Else If s2[1][5] > s1[2][5] Then
			event2F1 := True
	End;
	
Begin
	If event1F2(s1,s2) Or event2F1(s1,s2) Then
		haveConflict := False
	Else
		haveConflict := True
End;

Begin
	event1[1] := '01:00';
	event1[2] := '02:00';
	event2[1] := '01:20';
	event2[2] := '03:00';
	Write('Output: ', haveconflict(event1,event2));
	Readln
End.