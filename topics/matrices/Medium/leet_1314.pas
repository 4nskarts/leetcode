Program leet_1314;
Const
	m = 3;
	n = 3;
Type
	mat = Array[1..m,1..n] Of Integer;
Var
	grid, res: mat;
	k: Integer;

Procedure matrixBlockSum(grid: mat; Var res: mat; k: Integer);
	Function blockSum(grid: mat; row,col,k: Integer): Integer;
	Var
		sum, i, j: Integer;
	Begin
		sum := 0;
		For i:=row To row + 2*k Do
			For j:=col To col + 2*k Do
				If ((i > 0) And (i <= m)) And ((j > 0) And (j <= n)) Then
					sum := sum + grid[i,j];
		blockSum := sum
	End;
Var
	i, j: Integer;
Begin
	For i:=1 To m Do
		For j:=1 To n Do
			res[i,j] := blockSum(grid,i-k,j-k,k)
End;

Procedure print(grid: mat);
Var
	i, j: Integer;
Begin
	For i:=1 To m Do
		Begin
			Write(' |');
			For j:=1 To n Do
				Write(grid[i,j]:2, ' | ');
			WriteLn
		End
End;

Begin
	grid[1,1] := 1;
	grid[1,2] := 2;
	grid[1,3] := 3;

	grid[2,1] := 4;
	grid[2,2] := 5;
	grid[2,3] := 6;

	grid[3,1] := 7;
	grid[3,2] := 8;
	grid[3,3] := 9;

	k := 1;
	matrixBlockSum(grid,res,k);
	print(res);
	Readln
End.