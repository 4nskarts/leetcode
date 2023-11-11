Program leet_2500;
Const
	n = 3;
Type
	mat = Array[1..n,1..n] Of Integer;
Var
	image: mat;

Function diagonalSum(t: mat): Integer;
Var
	i, sum: Integer;
Begin
	sum := 0;
	i := 1;
	While i <= n Do
		Begin
			sum := sum + t[i,i] + t[(n-i)+1,(n-i)+1];
			i := i+1;
		End;

	If n Mod 2 <> 0 Then
		sum := sum - t[(n Div 2)+1,(n Div 2)+1];
	
	diagonalSum := sum;
End;

Begin
	image[1,1] := 1;
	image[1,2] := 2;
	image[1,3] := 3;
	image[2,1] := 4;
	image[2,2] := 5;
	image[2,3] := 6;
	image[3,1] := 7;
	image[3,2] := 8;
	image[3,3] := 9;
	Write('Output: ', diagonalSum(image));
	Readln
End.