Program leet_1165;
Var
	keyboard, mot: String;

Function calculateTime(keyboard, mot: String): Integer;
Var
	curPos, desPos, i, res: Integer;
Begin
	res := 0;
	curPos := 1;
	For i:=1 To Length(mot) Do
		Begin
			desPos := Pos(mot[i],keyboard);
			res := res + Abs(curPos - desPos);
			curPos := desPos
		End;
	calculateTime := res
End;

Begin
	keyboard := 'pqrstuvwxyzabcdefghijklmno';
	mot := 'leetcode';
	Write('Output: ', calculateTime(keyboard,mot));
	Readln
End.