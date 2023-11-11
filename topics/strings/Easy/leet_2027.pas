Program leet_2027;
Var
	s: String;

Function minimumMoves(s: String): Integer;
Var
	res, i: Integer;
Begin
	res := 0;
	i := 1;
	While i <= Length(s) Do
		If s[i] = 'X' Then
			Begin
				res := res + 1;
				i := i+3;
			End;
	minimumMoves := res
End;

Begin
	s := 'XXOX';
	Write('Output: ', minimumMoves(s));
	Readln 
End.