Program leet_1576;
Var
	s: String;

Function modifytemptring(s: String): String;
Var
	i, j: Integer;
	temp: String;
Begin
	temp := s;
	For i:=1 To Length(s) Do
		Begin
			j := 0;
			If temp[i] = '?' Then
				Begin
					Repeat
						temp[i] := Chr(Ord('a')+j);
						j := j+1
					Until (j > 25) Or ((temp[i] <> temp[i+1]) And (temp[i-1] <> temp[i]))
				End
		End;
	modifytemptring := temp
End;

Begin
	s := 'ucb?a';
	Write('Output: ', modifytemptring(s));
	Readln
End.