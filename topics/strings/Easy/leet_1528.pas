Program leet_1528;
Type
	T = Array[1..8] Of Integer;
Var
	s: String;
	indices: T;

Function restoreString(Var s: String; idx: T): String;
	Procedure swapChar(Var c1,c2: Char);
	Var
		temp: Char;
	Begin
		temp := c1;
		c1 := c2;
		c2 := temp
	End;
	
	Procedure swapInt(Var v1,v2: Integer);
	Var
		temp: Integer;
	Begin
		temp := v1;
		v1 := v2;
		v2 := temp
	End;
Var
	i: Integer;
	res: String;
Begin
	res := s;
	For i:=1 To Length(s) Do
		Begin
			While (i <> idx[i]) Do
				Begin
					swapChar(res[i],res[idx[i]]);
					swapInt(idx[i],idx[idx[i]])
				End;
		End;
	restoreString := res
End;

Begin
	s := 'codeleet';
	indices[1] := 5;
	indices[2] := 6;
	indices[3] := 7;
	indices[4] := 8;
	indices[5] := 1;
	indices[6] := 3;
	indices[7] := 2;
	indices[8] := 4;
	Write('Output: ', restoreString(s,indices));
	Readln
End.