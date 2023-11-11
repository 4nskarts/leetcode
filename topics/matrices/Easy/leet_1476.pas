Program leet_1476;
Type
	mat = Array[1..m,1..n] Of Integer;
Var
 grid: mat;

Procedure updateSubGrid(Var m: mat; row1,col1, row2,col2, newValue: Integer);
Var
	i, j: Integer;
Begin
	For i:=row1 To row2 Do
		For j:=col1 To col2 Do
			m[i,j] := newValue;
End;

Function getValue(m: mat; row, col: Integer): Integer;
Begin
	getValue := m[row,col]
End;

Begin
	Readln
End.