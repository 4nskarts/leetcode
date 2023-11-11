Program leet_434;
Var
	s: String;

Function countSegments(s: String): Integer;
Var
	i, cpt: Integer;
	temp: String;
Begin
	cpt	 := 0;
	temp := s + ' ';
	For i:=1 To Length(s) Do
		If (temp[i] <> ' ') And (temp[i+1] = ' ') Then
			cpt := cpt+1;
	countSegments := cpt
End; // Initial solution (added a space)

Function countSegment(s: String): Integer;
Var
	i, cpt: Integer;
Begin
	cpt	 := 0;
	For i:=1 To Length(s) Do
		If ((i=1) Or (s[i-1]=' ')) And (s[i] <> ' ') Then
			cpt := cpt+1;
	countSegment := cpt
End;

Begin
	s := 'Hello';
	Write('Output: ', countSegment(s));
	Readln
End.