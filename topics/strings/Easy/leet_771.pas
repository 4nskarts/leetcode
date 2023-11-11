Program leet_771;
Var
	jewels, stones: String;

Function numJewelsInStones(j, s: String): Integer;
Var
	i, res: Integer;
Begin
	res := 0;
	For i:=1 To Length(s) Do
		If Pos(s[i],j) > 0 Then
			res := res + 1;
	numJewelsInStones := res
End;

Begin
	jewels := 'aA';
	stones := 'aAAbbbb';
	Write('Output: ', numJewelsInStones(jewels,stones));
	Readln
End.