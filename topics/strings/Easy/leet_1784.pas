Program leet_1784;
Var
	s: String;

Function checkOnesSegment(s: String): Boolean;
Var
	i, cpt: Integer;
Begin
	cpt := 0;
	s 	:= s + '0';
	For i:=1 To Length(s)-2 Do
		If ((s[i] = '1') And (s[i+1] = '1')) And (s[i+2] = '0') Then
			cpt := cpt+1;
	If cpt = 1 Then
		checkOnesSegment := True
	Else
		checkOnesSegment := False
End;

Begin
	s := '11111';
	Write('Output: ', checkOnesSegment(s));
	Readln
End.