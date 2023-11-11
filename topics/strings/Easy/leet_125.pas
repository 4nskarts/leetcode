Program leet_125;
Var
	s: String;

Function isPalindrome(s: String): Boolean;
Var
	i: Integer;
	temp: String;
	valid: Boolean;
Begin
	temp := '';
	If s = '' Then
		isPalindrome := True
	Else
		Begin
			For i:=1 To Length(s) Do
				Begin
					If ((Ord(s[i]) >= Ord('A')) And (Ord(s[i]) <= Ord('Z'))) Then
						s[i] := Chr(Ord(s[i])+(Ord('a')-Ord('A')));
					If ((Ord(s[i]) >= Ord('a')) And (Ord(s[i]) <= Ord('z'))) Then
						temp := temp + s[i]
				End;
			valid := True;
			i := 1;
			While (i <= Length(temp) Div 2 + 1) And (valid) Do
				Begin
					//WriteLn('i: ', i, ' // len+1 - i: ', Length(temp)+1 - i);
					If temp[i] <> temp[Length(temp)+1 - i] Then
						valid := False
					Else
						i := i+1
				End;
			isPalindrome := valid
		End
End;

Begin
	s := 'Was it a car or a cat I saw?';
	WriteLn('Output: ', isPalindrome(s));
	Readln
End. 