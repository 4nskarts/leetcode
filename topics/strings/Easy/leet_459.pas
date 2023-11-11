Program leet_459;
Var
	s: String;

Function repeatedSubstringPattern(s: String): Boolean;
Var
	i, idx, len: Integer;
	pattern: String;
	found: Boolean;
Begin
	len := 1;
	found := False;
	pattern := Copy(s,1,len);
	While (len <= Length(s) Div 2) And (Not found) Do
		Begin
			idx := 1;
			While (idx <= Length(s)) And (Not found) Do
				Begin
					If Length(s) Mod idx = 0 Then
					Begin
						Write('len = ', Length(s) Div len);
						For i:=1 To Length(s) Div len Do
							pattern := pattern + pattern;
						//WriteLn(pattern, ' --- ');
					End;
					If pattern = s Then
							found := True
					Else
						Begin
							idx := idx + 1;
							pattern := '';
							pattern := Copy(s,idx,len)
						End
				End;
				len := len+1
		End;
	repeatedSubstringPattern := found;
End;

Begin
	s := 'abcabcabc';
	Write('Output: ', repeatedSubstringPattern(s));
	Readln 
End.