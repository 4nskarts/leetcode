Program leet_1329;
Const
	m = 5; // Number of lines
	n = 6; // Number of columns
Type
	mat = Array[1..m,1..n] Of Integer;
	T = Array[1..m*n] Of Integer;
Var
	grid: mat;

Procedure diagonalSort(Var grid: mat);
	Procedure sort(Var diag: T; len: Integer);
		Procedure swapValue(Var v1,v2: Integer);
		Var
			temp: Integer;
		Begin
			temp := v1;
			v1 := v2;
			v2 := temp
		End;
	Var
		i, j: Integer;
	Begin
		For i:=1 To len-1 Do
			For j:=1 To len-i Do
				If diag[j] > diag[j+1] Then
					swapValue(diag[j],diag[j+1])
	End;
Var
	i, j, r, c, diff, k: Integer;
	diagArr: T;
Begin
	For j:=1 To n Do
		Begin
			diff := 1-j;
			k := 1;
			For r:=1 To m Do
				For c:=1 To n Do
					If r-c = diff Then
						Begin
							diagArr[k] := grid[r,c];
							k := k+1
						End;

			sort(diagArr,k);

			k := 1;
			For r:=1 To m Do
				For c:=1 To n Do
					If r-c = diff Then
						Begin
							grid[r,c] := diagArr[k];
							k := k+1
						End
		End;

	For i:=1 To m Do
		Begin
			diff := i-1;
			k := 1;
			For r:=1 To m Do
				For c:=1 To n Do
					If r-c = diff Then
						Begin
							diagArr[k] := grid[r,c];
							k := k+1
						End;

			sort(diagArr,k);

			k := 1;
			For r:=1 To m Do
				For c:=1 To n Do
					If r-c = diff Then
						Begin
							grid[r,c] := diagArr[k];
							k := k+1
						End
		End;
End;

Procedure print(grid: mat);
Var
	i, j: Integer;
Begin
	For i:=1 To m Do
		Begin
			For j:=1 To n Do
				Write(grid[i,j]:3, ' | ');
			WriteLn
		End
End;

Begin
	grid[1,1] := 11;
	grid[1,2] := 25;
	grid[1,3] := 66;
	grid[1,4] := 1;
	grid[1,5] := 69;
	grid[1,6] := 7;
	grid[2,1] := 23;
	grid[2,2] := 55;
	grid[2,3] := 17;
	grid[2,4] := 45;
	grid[2,5] := 15;
	grid[2,6] := 52;
	grid[3,1] := 75;
	grid[3,2] := 31;
	grid[3,3] := 36;
	grid[3,4] := 44;
	grid[3,5] := 58;
	grid[3,6] := 8;
	grid[4,1] := 22;
	grid[4,2] := 27;
	grid[4,3] := 33;
	grid[4,4] := 25;
	grid[4,5] := 68;
	grid[4,6] := 4;
	grid[5,1] := 84;
	grid[5,2] := 28;
	grid[5,3] := 14;
	grid[5,4] := 11;
	grid[5,5] := 5;
	grid[5,6] := 50;
	diagonalSort(grid);
	print(grid);
	Readln
End.