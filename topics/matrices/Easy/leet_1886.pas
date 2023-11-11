Program leet_1886;
Const
	n = 2;
Type
	t = Array[1..n,1..n] Of Integer;
Var
	mat, target: t;
	boo: Boolean;

Procedure findRotation(Var mat, target: t; Var b: Boolean);
	Procedure rotate(Var mat: t);
	Var
		i, j, temp, l, r: Integer;
	Begin
		For i:=1 To n Do
			For j:=i+1 To n Do
				Begin
					temp := mat[i,j];
					mat[i,j] := mat[j,i];
					mat[j,i] := temp
				End; // Transposed matrix

		For i:=1 To n Do
			Begin
				l := 1;
				r := n;
				While l < r Do
					Begin
						temp := mat[i,l];
						mat[i,l] := mat[i,r];
						mat[i,r] := temp;

						l := l+1;
						r := r-1
					End
			End
	End;

	Function same(m1, m2: t): Boolean;
	Var
		i, j: Integer;
		x: Boolean;
	Begin
		x := True;
		i := 1;
		While (i <= n) And (x) Do
			Begin
				j := 1;
				While (j <= n) And (x) Do
					If m1[i,j] <> m2[i,j] Then
						x := False
					Else
						j := j+1;
				If x Then
					i := i+1
			End;
		same := x
	End;
Var
	k: Integer;
Begin
	k := 1;
	b := False;
	While (k < 4) And (Not b) Do
		Begin
			rotate(mat);
			b := same(mat, target);
			k := k+1
		End
End;

Begin
	mat[1,1] := 0 ;
  mat[1,2] := 1 ;
  mat[2,1] := 1 ;
  mat[2,2] := 0 ;

	target[1,1] := 1 ;
  target[1,2] := 0 ;
  target[2,1] := 0 ;
  target[2,2] := 1 ;
	findRotation(mat,target,boo);
	Write('Output: ', boo);
	Readln
End.