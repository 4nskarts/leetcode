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
	Function posToRow(p: Integer): Integer;
	Begin
		If p Mod n = 0 Then
			posToRow := p Div n
		Else
			posToRow := (p Div n) + 1
	End;

	Function posToCol(p: Integer): Integer;
	Begin
		If p Mod n = 0 Then
			posToCol := n
		Else
			posToCol := p Mod n
	End;

	Procedure swapp(Var v1, v2: Integer);
	Var
		temp: Integer;
	Begin
		temp := v1;
		v1 := v2;
		v2 := temp
	End;
Var
	i, j, count: Integer;
	cur: Integer;
	running: Boolean;
Begin
	i := 1;
	count := 1;
	While count <= m*n Do
		Begin
			cur := grid[posToRow(i), posToCol(i)];
			If (i+k) Mod (m*n) = 0 Then
				j := m*n
			Else
				j := (i+k) Mod (m*n);
			running := True;
			While running Do
				Begin
					count := count + 1;
					swapp(cur,grid[posToRow(j), posToCol(j)]);
					If i = j Then
						running := False;
					If (j+k) Mod (m*n) = 0 Then
						j := m*n
					Else
						j := (j+k) Mod (m*n)
				End;
			i := i+1
		End;
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

	k := 3;
	shiftGrid(grid, k);
	For i:=1 To m Do
		Begin
			For j:=1 To n Do
				Write(grid[i,j], ' || ');
			WriteLn
		End;
	Readln
End.