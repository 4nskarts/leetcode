Program leet_2373;
Type
	mat = Array[1..4,1..4] Of Integer;
	res = Array[1..2,1..2] Of Integer;
Var
	grid: mat;
	result: res;
	i, j: Integer;

Procedure largestLocal(grid: mat; Var result: res);
Var
	i, j, i1, j1: Integer;
	max: Integer;
Begin
	For i:=1 To (4-3)+1 Do
		For j:=1 To (4-3)+1 Do
			Begin
				max := grid[i,j];
				For i1:=i To i+2 Do
					For j1:=j To j+2 Do
						If grid[i1,j1] > max Then
							max := grid[i1,j1];
				result[i,j] := max
			End;
End;

Begin
	grid[1,1] := 9;
	grid[1,2] := 9;
	grid[1,3] := 8;
	grid[1,4] := 1;
	grid[2,1] := 5;
	grid[2,2] := 6;
	grid[2,3] := 2;
	grid[2,4] := 6;
	grid[3,1] := 8;
	grid[3,2] := 2;
	grid[3,3] := 6;
	grid[3,4] := 4;
	grid[4,1] := 6;
	grid[4,2] := 2;
	grid[4,3] := 2;
	grid[4,4] := 2;
	largestLocal(grid, result);
	For i:=1 To 2 Do
		For j:=1 To 2 Do
			WriteLn('// ', result[i,j], ' ');
	Readln
End.