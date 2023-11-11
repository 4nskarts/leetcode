Program leet_2299;
Var
	password: String;

Function strongPasswordCheckerII(password: String): Boolean;
Var
	i, flag: Integer;
	special: String;
Begin
	flag := -3;
	special := '!@#$%^&*()-+';
	If Length(password) < 8 Then
		strongPasswordCheckerII := False
	Else
		Begin
			i := 1;
			For i:=1 To Length(password) Do
				Begin
					If (password[i] >= 'A') And (password[i] <= 'Z') Then
						flag := flag + 1;
					If (password[i] >= 'a') And (password[i] <= 'z') Then
						flag := flag + 1;
					If (password[i] >= '0') And (password[i] <= '9') Then
						flag := flag + 1;
					If Pos(password[i],special) > 0 Then
						flag := flag + 1;
					If i < Length(password) Then
						If password[i] = password[i+1] Then
							flag := -Length(password)
				End;
			If flag > 0 Then
				strongPasswordCheckerII := True
			Else
				strongPasswordCheckerII := False
		End
End;

Begin
	password := 'IIloveLe3tcode!';
	Write('Output: ', strongPasswordCheckerII(password));
	Readln
End.