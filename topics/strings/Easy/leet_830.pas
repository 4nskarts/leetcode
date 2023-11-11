Program leet_830;
Type
	mat = Array[1..1,1..2] Of Integer;
Var
	s: String;
	l: mat;

Procedure largeGroupPositions(s: String; Var l: mat);
Var
	i, j: Integer;
Begin
	i := 1; // Marks the start of each group
	For j:=1 To Length(s)-1 Do
		If s[j] <> s[j+1] Then
			Begin
				If j-i + 1 >= 3 Then
					Begin
						l[1,1] := i;
						l[1,2] := j // Which marks the ending
					End;
				i := j+1
			End
End;

Begin
	s := 'abbxxxxzzy';
	largeGroupPositions(s,l);
	Write('Output: (', l[1,1], ', ', l[1,2], ').');
	Readln
End.