Program leet_482;
Var
	s: String;
	k: Integer;

Function licenseKeyFormatting(s: String; k: Integer): String;
	Procedure deleteAll(v: Char; Var s: String);
	Var
		i: Integer;
	Begin
		For i:=1 To Length(s) Do
			If s[i] = v Then
				Delete(s,i,1)
	End;
Var
	i: Integer;
	temp: String;
Begin
	temp := s;
	deleteAll('-',temp);
	For i:=1 To Length(temp) Do
		If Ord(temp[i]) >= Ord('a') Then
			temp[i] := Chr(Ord(temp[i])-(Ord('a')-Ord('A')));
	i := Length(temp);
	While (i > k) Do
		Begin
			Insert('-',temp,(i-k)+1);
			i := i-k
		End;
	licenseKeyFormatting := temp
End;

Begin
	s := 'EF3Z-2e-9-w';
	k := 4;
	Write('Output: ', licenseKeyFormatting(s, k));
	Readln
End.