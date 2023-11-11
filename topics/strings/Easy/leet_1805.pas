Program leet_1805;
Var
	mot: String;

Function numDifferentIntegers(Var mot: String): Integer;
Var
	i, cpt: Integer;
	tmp1, tmp2: String;
Begin
	For i:=1 To Length(mot) Do
		Case mot[i] Of
			'0'..'9':
			Else mot[i] := ' '
		End;

	cpt := 0;
	tmp1 := '54';
	tmp2 := '';
	For i:=1 To Length(mot) Do
		Begin
			Case mot[i] Of
				'0'..'9': tmp2 := tmp2 + mot[i]
			End;
			If ((mot[i] = ' ') And (tmp2 <> '')) And (tmp2 <> tmp1) Then
				begin
					write('test', tmp1, '/');
					//tmp1 := tmp2;
					cpt := cpt+1;
					tmp1 := tmp2;
					tmp2 := ''
				End;
			If (i = Length(mot)) And ((tmp2 <> '') And (tmp2 <> tmp1)) Then
				cpt := cpt+1;
		End;
	numDifferentIntegers := cpt
End; // problem is that duplicates aren't consecutive

Begin
	mot := 'a123bc34d8ef34';
	Write('Output: ', numDifferentIntegers(mot));
	Readln
End.