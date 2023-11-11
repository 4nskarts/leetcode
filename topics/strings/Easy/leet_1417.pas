Program leet_1417;
Var
	s: String;

Function reformat(s: String): String;
Var
	i, j: Integer;
	alpha, num, res: String;
Begin
	alpha := '';
	num := '';
	For i:=1 To Length(s) Do
		If (s[i] >= 'a') And (s[i] <= 'z') Then
			alpha := alpha + s[i]
		Else
			num := num + s[i];

	If Abs(Length(num)-Length(alpha)) > 1 Then
		reformat := 'Empty-string'
	Else
		Begin
			i := 1;
			j := 1;
			While (i <= Length(alpha)) Or (j <= Length(num)) Do
				Begin
					If i <= Length(alpha) Then
						res := res + alpha[i];
					If j <= Length(num) Then
						res := res + num[j];
					i := i+1;
					j := j+1
				End;
			reformat := res
		End;
End;

Begin
	s := '0zab12c';
	Write('Output: ', reformat(s));
	Readln
End.