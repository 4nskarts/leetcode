Program leet_409;
Var
	s: String;

Function longestPalindrome(s: String): Integer;
Var
	i, p, res: Integer;
	temp: String;
Begin
	temp := s;
	res := 0;
	i := 1;
	While (Length(temp) > 0) And (i <= Length(temp)) Do
		Begin
			p := Pos(temp[i],Copy(temp,i+1,Length(s)));
			If p > 0 Then
				Begin
					res := res + 2;
					Delete(temp,i,1);
					Delete(temp,p,1)
				End
			Else
				i := i+1
		End;
	If temp <> '' Then
		res := res + 1;
	longestPalindrome := res
End;

Begin
	s := 'caca';
	Write('Output: ', longestPalindrome(s));
	Readln
End.