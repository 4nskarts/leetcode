Program leet_1605;
Const
	m = 3;
	n = 3;
Type
	mat = Array[1..m,1..n] Of Integer;
	row = Array[1..m] Of Integer;
	col = Array[1..n] Of Integer;
Var
	rowSum: row;
	colSum: col;
	res: mat;

Procedure restoreMatrix(Var rowSum: row; Var colSum: col; Var res: mat);
	Function min(v1,v2: Integer): Integer;
	Begin
		If v1 < v2 Then
			min := v1
		Else
			min := v2
	End;
Var
	i, j: Integer;
Begin
	For i:=1 To m Do
		For j:=1 To n Do
			Begin
				res[i,j] := min(rowSum[i],colSum[j]);
				rowSum[i] := rowSum[i] - res[i,j];
				colSum[j] := colSum[j] - res[i,j]
			End
End;

Procedure print(grid: mat);
Var
	i, j: Integer;
Begin
	For i:=1 To m Do
		Begin
			Write(' |');
			For j:=1 To n Do
				Write(grid[i,j]:2, ' |');
			WriteLn
		End
End;

Begin
	rowSum[1] := 5; rowSum[2] := 7; rowSum[3] := 10;
	colSum[1] := 8; colSum[2] := 6; colSum[3] := 8;
	restoreMatrix(rowSum,colSum,res);
	print(res);
	Readln
End.