Program leet_2133;
Const
	n = 3;
Type
	grid = Array[1..n,1..n] Of Integer;
Var
	matrix: grid;

// This checks for every rows
Function checkValid(Var matrix: grid): Boolean;
	Procedure sort(i: Integer; Var matrix: grid);
	Var
		j, k, temp: Integer;
	Begin
		For j:=1 To n-1 Do
			For k:=1 To n-j Do
				If matrix[i,k] > matrix[i,k+1] Then
					Begin
						temp := matrix[i,k];
						matrix[i,k] := matrix[i,k+1];
						matrix[i,k+1] := temp
					End;
	End;
Var
	valid: Boolean;
	i, j: Integer;
Begin
	valid := True;
	i := 1;
	While (i <= n) And (valid) Do
		Begin
			sort(i,matrix);
			j := 1;
			While (j < n) And (valid) Do
				If (matrix[i,j] = matrix[i,j+1]) Or ((matrix[i,j] > n) Or (matrix[i,j] < 1)) Then
					valid := False
				Else
					j := j+1;
			If (matrix[i,j] > n) Or (matrix[i,j] < 1) Then
				valid := False
			Else
				i := i+1
		End;
	checkValid := valid
End;

(* we can also check if the row sum is equal To
n+(n-1)+...+1
*)

Begin
	matrix[1,1] := 1;
	matrix[1,2] := 2;
	matrix[1,3] := 3;
	matrix[2,1] := 3;
	matrix[2,2] := 1;
	matrix[2,3] := 2;
	matrix[3,1] := 2;
	matrix[3,2] := 3;
	matrix[3,3] := 1;
	Write('Output: ', checkValid(matrix));
	Readln
End.