Program leet_2022;
Const
	len = 2;
Type
	t  = Array[1..len] Of Integer;
Var
	original: t;
	m, n: Integer;

Function construct2DArray(original: t; m,n: Integer): Boolean;
Var
	i, j, k: Integer;
Begin
	If len <> m*n Then
		construct2DArray := False
	Else
		Begin
			k := 1;
			For i:=1 To m Do
				Begin
					For j:=1 To n Do
						Begin
							Write(original[k], ' / ');
							k := k+1
						End;
					WriteLn
				End
		End
End;

Begin
	original[1] := 1;
	original[2] := 2;

	m := 1;
	n := 1;
	WriteLn('Output: ');
	write(construct2DArray(original,m,n));
	Readln
End.