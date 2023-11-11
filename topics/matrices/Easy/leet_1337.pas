Program leet_1337;
Const
	m = 5;
	n = 5;
Type
	x = Record
		p: Integer;
		freq: Integer;
	End;
	t = Array[1..m,1..n] Of Integer;
Var
	mat: t;

Function kWeakestRows(mat: t; k: Integer): Integer;
Var
	i, j: Integer;
	tmp : x;
	temp: Array[1..m] Of x;
Begin
	For i:=1 To m Do
		Begin
			temp[i].freq := 0;
			temp[i].p := i;
		For j:=1 To n Do
			If mat[i,j] = 1 Then
				temp[i].freq := temp[i].freq + 1;
		End;

	For i:=1 To m-1 Do
		For j:=1 To m-i Do
			If temp[j].freq > temp[j+1].freq Then
				Begin
					tmp := temp[j];
					temp[j] := temp[j+1];
					temp[j+1] := tmp
				End
			Else
				If temp[j].freq = temp[j+1].freq Then
					If temp[j].p > temp[j+1].p Then
						Begin
							tmp := temp[j];
							temp[j] := temp[j+1];
							temp[j+1] := tmp
						End;
	kWeakestRows := temp[k].p;
End;

Begin
	mat[1,1] := 1;
	mat[1,2] := 1;
	mat[1,3] := 0;
	mat[1,4] := 0;
	mat[1,5] := 0;
	mat[2,1] := 1;
	mat[2,2] := 1;
	mat[2,3] := 1;
	mat[2,4] := 1;
	mat[2,5] := 0;
	mat[3,1] := 1;
	mat[3,2] := 0;
	mat[3,3] := 0;
	mat[3,4] := 0;
	mat[3,5] := 0;
	mat[4,1] := 1;
	mat[4,2] := 1;
	mat[4,3] := 0;
	mat[4,4] := 0;
	mat[4,5] := 0;
	mat[5,1] := 1;
	mat[5,2] := 1;
	mat[5,3] := 1;
	mat[5,4] := 1;
	mat[5,5] := 1;
	Write('Output: ', kWeakestRows(mat, 1));
	// This gives the weakest Row
	Readln
End.