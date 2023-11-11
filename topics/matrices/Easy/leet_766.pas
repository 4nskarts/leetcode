Program leet_766;
Const
	m = 3;
	n = 4;
Type
	t = Array[1..m,1..n] Of Integer;
Var
	matrix: t;

Function isToeplitzMatrix(mm: t): Boolean;
	Function isUniValueDiagonal(row, col: Integer): Boolean;
	Var
		value: Integer;
		b: Boolean;
	Begin
		value := mm[row, col];
		b := True;
		While ((row <= m) And (col <= n)) And (b) Do
			If mm[row, col] <> value Then
				b := False
			Else
				Begin
					row := row + 1;
					col := col + 1
				End;
		isUniValueDiagonal := b
	End;
Var
	i, j : Integer;
	valid: Boolean;
Begin
	j := 1;
	valid := True;
	While (j <= n) And (valid) Do
		If Not isUniValueDiagonal(1, j) Then
			valid := False
		Else
			j := j+1;

	If Not valid Then
		isToeplitzMatrix := False
	Else
		Begin
			i := 2;
			While (i <= m) And (valid) Do
				If Not isUniValueDiagonal(i, 1) Then
					valid := False
				Else
					i := i+1;
			isToeplitzMatrix := valid
		End
End;

Begin
	Readln
End.