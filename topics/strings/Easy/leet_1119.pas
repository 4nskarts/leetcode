Program leet_1119;
Var
	s: String;

Procedure removeVowels(Var s: String);
Var
	i: Integer;
	vowels: String;
Begin
	vowels := 'aeiou';
	i := 1;
	While (i <= Length(s)) Do
		If Pos(s[i],vowels) > 0 Then
			Delete(s,i,1)
		Else
			i := i+1
End;

Begin
	s := 'leetcodeisacommunityforcoders';
	removeVowels(s);
	Write('Output: ', s = 'ltcdscmmntyfrcdrs');
	Readln
End.