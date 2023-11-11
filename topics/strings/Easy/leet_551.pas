Program leet_551;
Var
	s: String;

Function checkRecord(s: String): Boolean;
Var
	i, cptA, cptL: Integer;
	eligible: Boolean;
Begin
	i := 1;
	eligible := True;
	cptA := 0; cptL := 0;
	While (i <= Length(s)) And (eligible) Do
		Begin
			If s[i] = 'L' Then
				cptL := cptL+1
			Else
				cptL := 0;

			If s[i] = 'A' Then
				cptA := cptA+1;

			If (cptA >= 2) Or (cptL >= 3) Then
				eligible := False;
			i := i+1
		End;
	checkRecord := eligible;
End;

Begin
	s := 'PPALLL';
	Write('Output: ', checkRecord(s));
	Readln
End.