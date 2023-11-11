Program leet_58;
Var
	s: String;

Function lengthOfLastWord(s: String): Integer;
Var
	i, cpt: Integer;
Begin
	cpt := 0;
	i 	:= Length(s);
	While (i > 0) Do
		Begin
			If (s[i] <> ' ') Then
				cpt := cpt+1
			Else If (cpt > 0) And (s[i] = ' ') Then
				i := 0;
			i := i-1
		End;
	lengthOfLastWord := cpt;
End;

Begin
	s := '   fly me   to   the moon  ';
	Write('Output: ', lengthOfLastWord(s));
	Readln
End.