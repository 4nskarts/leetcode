Program leet_2128;
Const
	m = 3;
	n = 3;
Type
	mat = Array[1..m,1..n] Of Integer;
Var
	grid: mat;

Function removeOnes(Var grid: mat): Boolean;
	Procedure flip(Var value: Integer);
	Begin
		If value = 1 Then
			value := 0
		Else
			value := 1
	End;
Var
	valid: Boolean;
	i, j: Integer;
Begin
	For j:=1 To n Do
		Begin
			If grid[1,j] = 1 Then
				For i:=1 To m Do
					flip(grid[i,j])
		End;

	valid := True;
	i := 2;
	While (i <= m) And (valid) Do
		Begin
			j := 1;
			While (j <= 1) And (valid) Do
				If grid[i,j] <> grid[i,1] Then
					valid := False
				Else
					j := j+1;
			i := i+1
		End;
	removeOnes := valid
End;

Begin
	grid[1,1] := 0;
	grid[1,2] := 1;
	grid[1,3] := 0;

	grid[2,1] := 1;
	grid[2,2] := 0;
	grid[2,3] := 1;
	
	grid[3,1] := 0;
	grid[3,2] := 1;
	grid[3,3] := 0;
	Write('Output: ', removeOnes(grid));
	Readln
End.