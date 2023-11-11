Program leet_844;
Var
	s, t: String;

Function backspaceCompare(Var s, t: String): Boolean;
Var
	i: Integer;
Begin
	i := 1;
	While i <= Length(s) Do
		If s[i] = '#' Then
			Begin
				i := i-1;
				Delete(s,i,2)
			End
		Else
			i := i+1;
	i := 1;
	While i <= Length(t) Do
		If t[i] = '#' Then
			Begin
				i := i-1;
				Delete(t,i,2)
			End
		Else
			i := i+1;

	If s = t Then
		backspaceCompare := True
	Else
		backspaceCompare := False
End;

Begin
	s := 'ab##';
	t := 'c#d#';
	Write('Output: ', backspaceCompare(s, t));
	Readln
End.