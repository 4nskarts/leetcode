Program leet_2379;
Var
	blocks: String;
	k: Integer;

Function minimumRecolors(blocks: String; k: Integer): Integer;
Var
	i, j, min, count: Integer;
	temp: String;
Begin
	min := Length(blocks);
	For i:=1 To Length(blocks)-k + 1 Do
		Begin
			temp := Copy(blocks,i,k);
			count := 0;
			For j:=1 To k Do
				If temp[j] = 'W' Then
					count := count+1;
			If count < min Then
				min := count
		End;
	minimumRecolors := min
End;

Begin
	blocks := 'WBWBBBW';
	k := 2;
	Write('Output: ', minimumRecolors(blocks,k));
	Readln
End.