Program leet_661;
Const
	m = 3;
	n = 3;
Type
	t = Array[1..m,1..n] Of Integer;
Var
	img: t;

Procedure imageSmoother(Var img: t);
	Function sumAdjacent(img: t; l,c: Integer): Integer;
	Var
		sum, count: Integer;
	Begin
		count := 0;
		If (*Not out of bound*) Then
			Begin
				count := 1;
				sum := sum + img[l,c];
			End;
		sumAdjacent := sum Div count
	End;
Var
	i, j: Integer;
Begin
End;

Begin
	Readln
End.