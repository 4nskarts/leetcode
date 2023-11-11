Program leet_2319;
Const
  n = 4;
Type
  t = Array[1..n,1..n] Of Integer;
Var
  grid: t;
  k, i, j: Integer;

Function checkXMatrix(grid: t): Boolean;
Var
	i, j: Integer;
	xmat: Boolean;
Begin
	i := 1;
	j := 1;
	xmat := True;
	While (i <= n) And (xmat) Do
		Begin
			If (grid[i,i] = 0) Or (grid[i,n-i+1] = 0) Then
				xmat := False
			Else
				i := i+1
		End;

	If xmat Then
		Begin
			i := 1;
			While (i <= n) And (xmat) Do
				Begin
					j := 1;
					While (j <= n) And (xmat) Do
						Begin
							If (i <> j) And (i+j - 1 <> n) Then
								If grid[i,j] <> 0 Then
									xmat := False;
							j := j+1
						End;
					i := i+1
				End;
			checkXMatrix := xmat
		End
	Else
		checkXMatrix := False
End;

Begin
	grid[1,1] := 2 ;
  grid[1,2] := 0 ;
  grid[1,3] := 0 ;
  grid[1,4] := 1 ;
	grid[2,1] := 0 ;
  grid[2,2] := 3 ;
  grid[2,3] := 1 ;
  grid[2,4] := 0 ;
	grid[3,1] := 0 ;
  grid[3,2] := 5 ;
  grid[3,3] := 2 ;
  grid[3,4] := 0 ;
	grid[4,1] := 4 ;
  grid[4,2] := 0 ;
  grid[4,3] := 0 ;
  grid[4,4] := 2 ;
	Write('Output: ', checkXMatrix(grid));
	Readln
End.