Program leet_1957;
Var
	s: String;

Function makeFancyString(s: String): String;
Var
	i: Integer;
	res: String;
Begin
	res := '';
	For i:=1 To Length(s) Do
		If Length(res) < 2 Then
			res := res + s[i]
		Else
			If (s[i] = res[Length(res)]) And (s[i] = res[Length(res)-1]) Then
			Else
				res := res + s[i];
	makeFancyString := res
End;

Begin
	s := 'aaabbbbbbbbaaaa';
	Write('Output: ', makeFancyString(s));
	Readln
End.