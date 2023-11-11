Program leet_1422;
Var
	s: String;

Function maxScore(s: String): Integer;
	Function cntZero(left: String): Integer;
	Var
		i, cpt: Integer;
	Begin
		cpt := 0;
		For i:=1 To Length(left) Do
			If left[i] = '0' Then
				cpt := cpt + 1;
		cntZero := cpt
	End;
	Function cntOne(left: String): Integer;
	Var
		i, cpt: Integer;
	Begin
		cpt := 0;
		For i:=1 To Length(left) Do
			If left[i] = '1' Then
				cpt := cpt + 1;
		cntOne := cpt
	End;
Var
	i, max, temp: Integer;
	left, right : String;
Begin
	max := 0;
	For i:=1 To Length(s)-1 Do
		Begin
			left 	:= Copy(s,1,i);
			right := Copy(s,i+1,Length(s));
			temp 	:= cntZero(left) + cntOne(right);
			If temp > max Then
				max := temp
		End;
	maxScore := max
End;

Begin
	s := '011101';
	Write('Output: ', maxScore(s));
	Readln
End.