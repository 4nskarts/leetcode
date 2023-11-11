Program leet_2125;
Const
	n = 3; // Number of lines
Type
	mat = Array[1..n] Of String;
Var
	bank: mat;

Function numberOfBeams(bank: mat): Integer;
Var
	i, j, res, countPrev, countCur: Integer;
Begin
	res := 0;
	countPrev := 0;
	For j:=1 To Length(bank[1]) Do
		If bank[1][j] = '1' Then
			countPrev := countPrev + 1;
	For i:=2 To n Do
		Begin
			countCur := 0;
			For j:=1 To Length(bank[i]) Do
				If bank[i][j] = '1' Then
					countCur := countCur + 1;
			If countCur > 0 Then
				Begin
					res := res + (countCur * countPrev);
					countPrev := countCur
				End
		End;
	numberOfBeams := res
End;

Begin
	bank[1] := '000';
	bank[2] := '111';
	bank[3] := '000';
	Write('Output: ', numberOfBeams(bank));
	Readln
End.