Program leet_2500;
Const
	m = 2;
	n = 3;
Type
	mat = Array[1..m,1..n] Of Integer;
Var
	grid: mat;
	
Function deleteGreatestValue(Var grid: mat): Integer;
	Procedure swapp(Var v1, v2: Integer);
	Var
		temp: Integer;
	Begin
		temp := v1;
		v1 := v2;
		v2 := temp
	End;
Var
	i, j, k : Integer;
	max, res: Integer;
Begin
	res := 0;
	For i:=1 To m Do
		For j:=1 To n-1 Do
			For k:=1 To n-j Do
				If grid[i,k] < grid[i,k+1] Then
					swapp(grid[i,k],grid[i,k+1]); // Sorting each row

	For j:=1 To n Do
		Begin
			max := grid[1,j];
			For i:=1 To m Do
				If grid[i,j] > max Then
					max := grid[i,j];
			res := res + max // Max of each column
		End;
	deleteGreatestValue := res
End;

Begin
	grid[1,1] := 1;
	grid[1,2] := 2;
	grid[1,3] := 4;
	grid[2,1] := 3;
	grid[2,2] := 3;
	grid[2,3] := 1;
	Write('Output: ', deleteGreatestValue(grid));
	Readln
End.