Program leet_1556;
Var
	n: Integer;

Function thousandSeparator(n: Integer): String;
Var
	temp, r, count: Integer;
	res : String;
Begin
	temp := n;
	res := '';
	count := 0;
	While temp > 0 Do
		Begin
			r := temp Mod 10;
			If ((Length(res)-count) Mod 3 = 0) And (Length(res) >= 3) Then
				Begin
					count := count + 1;
					res := Chr(r + Ord('0')) + '.' +  res
				End
			Else
				res := Chr(r + Ord('0')) +  res;
			temp := temp Div 10
		End;
	thousandSeparator := res
End;

Begin
	n := 987;
	Write('Output: ', thousandSeparator(n));
	Readln
End.