Program leet_1790;
Var
	s1, s2: String;

Function areAlmostEqual(s1, s2: String): Boolean;
Var
	valid: Boolean;
	i: Integer;
	v: Char;
	temp: String;
Begin
	temp := s1;
	i := Length(temp);
	valid := False;
	While (i > 0) And (Not valid) Do
		Begin
			v := temp[1];
			temp[1] := temp[i];
			temp[i] := v;
			If temp = s2 Then
				valid := True
			Else
				Begin
					temp := s1;
					i := i-1
				End
		End;
	If valid Then
		areAlmostEqual := valid
	Else
		Begin
			temp := s1;
			i := 1;
			valid := False;
			While (i <= Length(temp)) And (Not valid) Do
				Begin
					v := temp[1];
					temp[1] := temp[i];
					temp[i] := v;
					If temp = s2 Then
						valid := True
					Else
						Begin
							temp := s1;
							i := i+1
						End
				End;
			areAlmostEqual := valid
		End
End;

Begin
	s1 := 'kelb';
	s2 := 'kelb';
	Write('Output: ', areAlmostEqual(s1, s2));
	Readln
End.