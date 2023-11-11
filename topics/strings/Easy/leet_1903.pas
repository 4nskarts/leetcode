Program leet_1903;
Var
	num: String;

Function largestOddNumber(num: String): String;
Var
	i: Integer;
	res: String;
	running: Boolean;
Begin
	i := Length(num);
	running := True;
	res := '';
	While (i > 0) And (running) Do
		Begin
			If (Ord(num[i]) - Ord('0')) Mod 2 <> 0 Then
				Begin
					res := Copy(num,1,i);
					running := False
				End
			Else
				i := i-1
		End;
	largestOddNumber := res
End;

Begin
	num := '52';
	Write('Output: ', largestOddNumber(num));
	Readln
End.