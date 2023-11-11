Program leet_2269;
Var
	num, k: Integer;

Function divisorSubstring(num, k: Integer): Integer;
	Function isDivisible(num: Integer; s: String): Boolean;
		Function converted(s: String): Integer;
		Var
			i, res: Integer;
		Begin
			res := 0;
			For i:=1 To Length(s) Do
				res := res*10 + (Ord(s[i]) - Ord('0'));
			converted := res
		End;
	Var
		temp: Integer;
	Begin
		temp := converted(s);
		isDivisible := False;
		If temp > 0 Then
			If num Mod converted(s) = 0 Then
				isDivisible := True
	End;
Var
	i, n: Integer;
	temp: String;
Begin
	n := num;
	temp := '';
	While n > 0 Do
		Begin
			temp := Chr(n Mod 10 + Ord('0')) + temp;
			n := n Div 10;
		End;

	For i:=1 To Length(temp)-k + 1 Do
		If isDivisible(num,Copy(temp,i,k)) Then
			n := n+1;
	divisorSubstring := n
End;

Begin
	num := 240;
	k := 2;
	Write('Output: ', divisorSubstring(num,k));
	Readln
End.