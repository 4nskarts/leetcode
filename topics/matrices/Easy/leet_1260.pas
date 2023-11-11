Program leet_1260;
Const
  m = 3;
  n = 3;
Type
  t = Array[1..m,1..n] Of Integer;
Var
  grid: t;
  k, i, j: Integer;

Procedure shiftGrid(Var grid: t; k: Integer);
	Procedure Swapp(Var v1, v2: Integer);
	Var
		temp: Integer;
	Begin
		temp := v1;
		v1 := v2;
		v2 := temp
	End;
Var
	row, col, t: Integer;
Begin

	For t:=1 To k Do
		Begin
			row := m;
			While (row > 0) Do
				Begin
					col := n;
					While (col > 0) Do
						Begin
							If (col = 1) And (row > 1) Then
								Swapp(grid[row-1,n], grid[row,col])
							Else If col > 1 Then
								Swapp(grid[row,col], grid[row,col-1]);
							col := col - 1
						End;
					row := row - 1
				End
		End
End;

Begin
  grid[1,1] := 1 ;
  grid[1,2] := 2 ;
  grid[1,3] := 3 ;
  grid[2,1] := 4 ;
  grid[2,2] := 5 ;
  grid[2,3] := 6 ;
  grid[3,1] := 7 ;
  grid[3,2] := 8 ;
  grid[3,3] := 9 ;

	k := 2;
	shiftGrid(grid, k);
	For i:=1 To m Do
		Begin
			For j:=1 To n Do
				Write(grid[i,j], ' || ');
			WriteLn
		End;
	Readln
End.