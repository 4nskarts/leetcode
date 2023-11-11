Program  leet_1624;
Var
	s: String;

Function maxLengthBetweenCharacters(s: String): Integer;
Var
	i, j, max, res: Integer;
Begin
	res := -1;
	For i:=1 To Length(s)-1 Do
		Begin
			max := 0;
			j := i+1;
			While (j < Length(s)) And (s[i] <> s[j]) Do
				Begin
					max := max + 1;
					j := j+1
				End;
			If s[i] = s[j] Then
				If max > res Then
					res := max
		End;
	maxLengthBetweenCharacters := res
End;

Begin
	s := 'aa';
	Write('Output: ', maxLengthBetweenCharacters(s));
	Readln 
End.