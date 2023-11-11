Program leet_1582;
Const
	m = 3;
  n = 3;
Type
  t = Array[1..m,1..n] Of Integer;
Var
  mat: t;

Function numSpecial(mat: t): Integer;
	Function isSpecial(mat: t; i, j: Integer): Boolean;
	Var
		row, col: Integer;
		special : Boolean;
	Begin
		special := True;
		col := 1;
		While (col <= n) And (special) Do
			If (col <> j) And (mat[i,col] <> 0) Then
				special := False
			Else
				col := col + 1;

		If special Then
			Begin
				row := 1;
				While (row <= m) And (special) Do
					If (row <> i) And (mat[row,j] <> 0) Then
						special := False
					Else
						row := row + 1;
				isSpecial := special
			End
		Else
			isSpecial := False
	End;
Var
	i, j, res: Integer;
	specialX, specialY: Integer;
Begin
	res := 0;
	For i:=1 To m Do
		For j:=1 To n Do
			Begin
				If mat[i,j] = 1 Then
					Begin
						specialX := i;
						specialY := j;
						If isSpecial(mat, specialX, specialY) Then
							res := res + 1
					End
			End;
	numSpecial := res
End;

Begin
	mat[1,1] := 1 ;
  mat[1,2] := 0 ;
  mat[1,3] := 0 ;

	mat[2,1] := 0 ;
  mat[2,2] := 1 ;
  mat[2,3] := 0 ;

	mat[3,1] := 0 ;
  mat[3,2] := 0 ;
  mat[3,3] := 1 ;
	Write('Output: ', numSpecial(mat));
	Readln
End.