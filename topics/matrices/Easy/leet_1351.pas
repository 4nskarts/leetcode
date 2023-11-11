Program leet_1351;
Const
	m = 4;
	n = 4;
Type
	t = Array[1..m,1..n] Of Integer;
Var
	grid: t;

Function countNegatives(grid: t): Integer;
Var
	i, j, cpt: Integer;
Begin
	cpt := 0;
	j 	:= 1;
	While j <= n Do
		Begin
			i := 1;
			While i <= m Do
				If grid[i,j] < 0 Then
					Begin
						cpt := cpt+(n-i+1);
						i := m+1 // Breaking out of the loop
					End
				Else
					i := i+1;
			j := j+1
		End;
	countNegatives := cpt;
End;

Begin
	grid[1,1] := 4;
	grid[1,2] := 3;
	grid[1,3] := 2;
	grid[1,4] := -1;
	grid[2,1] := 3;
	grid[2,2] := 2;
	grid[2,3] := 1;
	grid[2,4] := -1;
	grid[3,1] := 1;
	grid[3,2] := 1;
	grid[3,3] := -1;
	grid[3,4] := -2;
	grid[4,1] := -1;
	grid[4,2] := -1;
	grid[4,3] := -2;
	grid[4,4] := -3;
	Write('Output: ', countNegatives(grid));
	Readln
End.