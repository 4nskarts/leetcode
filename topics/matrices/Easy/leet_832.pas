Program leet_2500;
Const
	n = 3;
Type
	mat = Array[1..n,1..n] Of Integer;
Var
	image: mat;
	i, j: Integer;

Procedure flipAndInvertImage(Var image: mat);
	Procedure swapp(Var v1, v2: Integer);
	Var
		temp: Integer;
	Begin
		temp := v1;
		v1 := v2;
		v2 := temp
	End;
	Procedure flipp(Var v: Integer);
	Begin
		If v = 1 Then
			v := 0
		Else If v = 0 Then
			v := 1
	End;
Var
	i, l, r: Integer;
Begin
	For i:=1 To n Do
		Begin
			l := 1;
			r := n;
			While l < r Do
				Begin
					swapp(image[i,l], image[i,r]);
					l := l+1;
					r := r-1
				End;
			For l:=1 To n Do
				flipp(image[i,l])
		End
End;

Begin
	image[1,1] := 1;
	image[1,2] := 1;
	image[1,3] := 0;
	image[2,1] := 1;
	image[2,2] := 0;
	image[2,3] := 1;
	image[3,1] := 0;
	image[3,2] := 0;
	image[3,3] := 0;
	flipAndInvertImage(image);
	WriteLn('Output:');
	For i:=1 To n Do
		Begin
			For j:=1 To n Do
				Write(' | ', image[i,j]);
			WriteLn
		End;
	Readln
End.