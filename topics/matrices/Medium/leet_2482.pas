Program leet_2482;
// Hint: instead of brute force, use auxiliary arrays
// to reduce counting work
Const
	m = 2; // Number of lines
	n = 3; // Number of columns
Type
	mat = Array[1..m,1..n] Of Integer;
Var
	grid, res: mat;

Procedure onesMinusZeros(Var grid, res: mat);
	Function countOneRow(grid: mat; row: Integer): Integer;
	Var
		j, count: Integer;
	Begin
		count := 0;
		For j:=1 To n Do
			If grid[row,j] = 1 Then
				count := count + 1;
		countOneRow := count
	End;

	Function countOneCol(grid: mat; col: Integer): Integer;
	Var
		i, count: Integer;
	Begin
		count := 0;
		For i:=1 To m Do
			If grid[i,col] = 1 Then
				count := count + 1;
		countOneCol := count
	End;
Var
	i, j, onesRow, onesCol: Integer;
Begin
	For i:=1 To m Do
		Begin
			onesRow := countOneRow(grid,i);
			For j:=1 To n Do
				Begin
					onesCol := countOneCol(grid,j);
					res[i,j] := onesRow + onesCol - (n-onesRow) - (m-onesCol)
				End
		End
End;

Procedure print(grid: mat);
Var
	i, j: Integer;
Begin
	For i:=1 To m Do
		Begin
			For j:=1 To n Do
				Write(grid[i,j]:2, ' | ');
			WriteLn
		End
End;

Begin
	grid[1,1] := 1;
	grid[1,2] := 1;
	grid[1,3] := 1;
	grid[2,1] := 1;
	grid[2,2] := 1;
	grid[2,3] := 1;
	onesMinusZeros(grid, res);
	print(res);
	Readln
End.