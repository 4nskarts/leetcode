Program leet_861;
Const
	m = 3;
	n = 4;
Type
	mat = Array[1..m,1..n] Of Integer;
Var
	grid: mat;

Function matrixScore(Var grid: mat): Integer;
	Function countOnes(grid: mat; col: Integer): Integer;
	Var
		row, count: Integer;
	Begin
		count := 0;
		For row:=1 To m Do
			If grid[row,col] = 1 Then
				count := count + 1;
		countOnes := count
	End;

	Function countZeros(grid: mat; col: Integer): Integer;
	Begin
		countZeros := m - countOnes(grid,col)
	End;

	Procedure flipCol(Var grid: mat; col: Integer);
	Var
		row: Integer;
	Begin
		For row:=1 To m Do
			If grid[row,col] = 1 Then
				grid[row,col] := 0
			Else
				grid[row,col] := 1
	End;

	Procedure flipRow(Var grid: mat; row: Integer);
	Var
		col: Integer;
	Begin
		For col:=1 To n Do
			If grid[row,col] = 1 Then
				grid[row,col] := 0
			Else
				grid[row,col] := 1
	End;
Var
	i, j, expo, sum: Integer;
Begin
	// 1. OPTIMIZING THE SCORE (ROW)
	For i:=1 To n Do
		Begin
			If grid[i,1] = 0 Then
				flipRow(grid,i);
		End;
		
	// 2. OPTIMIZING THE SCORE (COLUMN)
	For j:=1 To n Do
		Begin
			If countOnes(grid,j) < countZeros(grid,j) Then
				flipCol(grid,j);
		End;

	// 2. CALCULATING THE SCORE
	expo := 1;
	sum := 0;
	j := n;
	While (j > 0) Do
		Begin
			For i:=1 To m Do
				sum := sum + grid[i,j]*expo;
			expo := expo * 2;
			j := j-1
		End;
	matrixScore := sum
End;

Begin
	grid[1,1] := 0;
	grid[1,2] := 0;
	grid[1,3] := 1;
	grid[1,4] := 1;

	grid[2,1] := 1;
	grid[2,2] := 0;
	grid[2,3] := 1;
	grid[2,4] := 0;

	grid[3,1] := 1;
	grid[3,2] := 1;
	grid[3,3] := 0;
	grid[3,4] := 0;
	Write('Output: ', matrixScore(grid));
	Readln
End.