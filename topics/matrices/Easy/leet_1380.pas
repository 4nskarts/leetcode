Program leet_1380;
Const
	m = 3;
	n = 3;
Type
	t = Array[1..m,1..n] Of Integer;
Var
	grid: t;

Function luckyNumber(mat: t): Integer;
	Function isMax(tmp, col: Integer; mat: t): Boolean;
	Var
		i, max: Integer;
	Begin
		max := tmp;
		For i:=1 To m Do
			If mat[i,col] > max Then
				max := mat[i,col];
		If max = tmp Then
			isMax := True
		Else
			isMAx := False
	End;
Var
	i, j, ans : Integer;
	lucky: Integer;
Begin
	ans := -1;
	For i:=1 To m Do
		Begin
			lucky := 1;
			For j:=1 To n Do
				If mat[i,j] < lucky Then
					lucky := j;
			If isMax(mat[i,lucky], lucky, mat) Then
				ans := mat[i,lucky]
		End;
	luckyNumber := ans
End;

Begin
	grid[1,1] := 3;
	grid[1,2] := 7;
	grid[1,3] := 8;
	grid[2,1] := 9;
	grid[2,2] := 11;
	grid[2,3] := 13;
	grid[3,1] := 15;
	grid[3,2] := 16;
	grid[3,3] := 17;
	Write('Output: ', luckyNumber(grid));
	Readln
End.