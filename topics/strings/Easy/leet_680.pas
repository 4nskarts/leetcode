Program leet_680;
Var
	s: String;

Function isPalindrome(s: String): Boolean;
Var
	l, r : Integer;
	valid: Boolean;
Begin
	l := 1;
	r := Length(s);
	valid := True;
	While (l < r) And (valid) Do
		If s[l] <> s[r] Then
			valid := False
		Else
			Begin
				l := l+1;
				r := r-1
			End;
	isPalindrome := valid
End;

Function validPalindrome(s: String): Boolean;
Var
	l, r	: Integer;
	valid : Boolean;
Begin
	l := 1;
	r := Length(s);
	valid := True;
	While (l < r) And (valid) Do
		Begin
			If s[l] <> s[r] Then
				Begin
					If (isPalindrome(Copy(s,l+1,Length(s)))) Or (isPalindrome(Copy(s,l,Length(s)-r))) Then
						valid := True
					Else
						valid := False
				End;
			l := l+1;
			r := r-1
		End;
		validPalindrome := valid
End;

Begin
	s := 'abca';
	Write('Output: ', validPalindrome(s));
	Readln
End.