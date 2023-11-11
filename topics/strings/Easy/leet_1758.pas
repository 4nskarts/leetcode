Program leet_1758;
Var
	s: String;

Function minOperations(s: String): Integer;
	Function min(v1, v2: Integer): Integer;
	Begin
		If v1 > v2 Then
			min := v2
		Else
			min := v1
	End;
Var
	i, res: Integer;
Begin
	res := 0;
	For i:=1 To Length(s) Do
		If Ord(s[i]) - Ord('0') <> i Mod 2 Then
			res := res + 1;
	minOperations := min(res, Length(s)-res);
End;

Begin
	s := '111101011';
	Write('Output: ', minOperations(s));
	Readln
End.