Program leet_520;
Var
	s: String;

Function detectCapitalUse(s: String): Boolean;
Var
	i, upperCase: Integer;
Begin
	upperCase := 0;
	For i:=1 To Length(s) Do
		If s[i] < 'a' Then
			upperCase := upperCase + 1;

	If (upperCase = Length(s)) Or ((upperCase = 1) And (s[1] < 'a')) Then
		detectCapitalUse := True
	Else
		detectCapitalUse := False
End;

Begin
	s := 'Flag';
	Write('Output: ', detectCapitalUse(s));
	Readln
End.