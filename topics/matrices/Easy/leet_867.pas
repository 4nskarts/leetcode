Program leet_867;
Const
	m = 3;
  n = 3;
Type
  t = Array[1..m,1..n] Of Integer;
Var
  mat: t;
	i,j: Integer;

Procedure Swapp(Var v1, v2: Integer);
	Var
		temp: Integer;
	Begin
		temp := v1;
		v1 := v2;
		v2 := temp
	End;
	
Procedure transpose(Var mat: t);
Var
	i, j: Integer;
Begin
	For i:=1 To m Do
		For j:=i+1 To n Do
			Swapp(mat[i,j], mat[j,i]);
End;

Begin
	mat[1,1] := 2 ;
  mat[1,2] := 4 ;
  mat[1,3] := -1 ;

	mat[2,1] := -10 ;
  mat[2,2] := 5 ;
  mat[2,3] := 11 ;

	mat[3,1] := 18 ;
  mat[3,2] := -7 ;
  mat[3,3] := 6 ;
	transpose(mat);
	WriteLn('Output:');
	For i:=1 To m Do
		Begin
			For j:=1 To n Do
				Write(mat[i,j], ' // ');
			WriteLn
		End;
	Readln
End.