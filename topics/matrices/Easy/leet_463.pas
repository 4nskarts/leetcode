Program leet_463;
Const
	row = 4;
	col = 4;
Type
	t = Array[1..row,1..col] Of Integer;
Var
	grid: t;

Function islandPerimeter(grid: t): Integer;
Var
	i, j, perimeter: Integer;
Begin
	perimeter := 0;
	For i:=1 To row Do
		For j:=1 To col Do
			If grid[i,j] = 1 Then
				Begin
					perimeter := perimeter + 4;
					If (j > 1) And (grid[i,j-1] = 1) Then
						perimeter := perimeter - 2; // Checking...
					If (i > 1) And (grid[i-1,j] = 1) Then
						perimeter := perimeter - 2  // Checking...
				End;
	islandPerimeter := perimeter
End;

Begin
	grid[1,1] := 0;
	grid[1,2] := 1;
	grid[1,3] := 0;
	grid[1,4] := 0;
	grid[2,1] := 1;
	grid[2,2] := 1;
	grid[2,3] := 1;
	grid[2,4] := 0;
	grid[3,1] := 0;
	grid[3,2] := 1;
	grid[3,3] := 0;
	grid[3,4] := 0;
	grid[4,1] := 1;
	grid[4,2] := 1;
	grid[4,3] := 0;
	grid[4,4] := 0;
	Write('Output: ', islandPerimeter(grid));
	Readln
End.