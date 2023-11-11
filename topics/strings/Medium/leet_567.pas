Program leet_567;
Var
	s1,s2: String;

Function checkInclusion(s1,s2: String): Boolean;
Var
	included: Boolean;
	i, j, P: Integer;
	temp: String;
Begin
	i := 1;
	included := False;
	While (i <= Length(s2)-Length(s1) + 1) And (Not included) Do
		Begin
			temp := s1;
			For j:=i To i+Length(s1)-1 Do
				Begin
					P := Pos(s2[j],temp);
					If P > 0 Then
						Delete(temp,P,1);
				End;
			If temp = '' Then
				included := True
			Else
				i := i+1
		End;
	checkInclusion := included
End;

Begin
	s1 := 'ab';
	s2 := 'abeidooo';
	Write('Output: ', checkInclusion(s1,s2));
	Readln
End.