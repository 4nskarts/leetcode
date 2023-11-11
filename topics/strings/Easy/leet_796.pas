Program leet_796;
Var
	s, goal: String;

Function rotateString(s,goal: String): Boolean;
Var
	temp: String;
Begin
	temp := s + s;
	If Pos(goal,temp) > 0 Then
		rotateString := True
	Else
		rotateString := False
End;

Begin
	s := 'abcde';
	goal := 'cdeab';
	Write('Output: ', rotateString(s,goal));
	Readln
End.