Program leet_733;
Const
	m = 3;
	n = 3;
Type
	t = Array[1..m,1..n] Of Integer;
Var
	image: t;
	i, j, sr, sc: Integer;

Procedure floodFill(Var image: t; sr, sc, color: Integer);
	Procedure fill(Var image: t; sr, sc, prevColor, color: Integer);
	Begin
		If (((sr < 1) Or (sc < 1)) Or ((sr > m) Or (sc > n))) Or (image[sr,sc] <> prevColor) Then
		Else
			Begin
				image[sr,sc] := color;
				fill(image, sr-1, sc, prevColor, color);
				fill(image, sr+1, sc, prevColor, color);
				fill(image, sr, sc-1, prevColor, color);
				fill(image, sr, sc+1, prevColor, color);
			End;
	End;
Begin
	fill(image, sr, sc, image[sr,sc], color);
End;

Begin
	image[1,1] := 1 ;
  image[1,2] := 1 ;
  image[1,3] := 1 ;
  image[2,1] := 1 ;
  image[2,2] := 1 ;
  image[2,3] := 0 ;
  image[3,1] := 1 ;
  image[3,2] := 0 ;
  image[3,3] := 1 ;

	sr := 1;
	sc := 1;
	floodFill(image, sr, sc, 2);
	For i:=1 To m Do
		Begin
			For j:=1 To n Do
				Write(image[i,j], ' || ');
			WriteLn
		End;
	Readln
End.
