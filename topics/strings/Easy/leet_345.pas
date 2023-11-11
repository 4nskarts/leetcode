Program leet_345;
Var
	s: String;

Procedure reverseVowels(Var s: String);
	Function isVowel(c: Char): Boolean;
	Begin
		isVowel := False;
		If c ='a' Then
			isVowel := True;
		If c = 'e' Then
			isVowel := True;
		If c = 'i' Then
			isVowel := True;
		If c = 'o' Then
			isVowel := True;
		If c = 'u' Then
			isVowel := True
	End;
Var
	i, len: Integer;
	temp  : String;
Begin
	temp := '';
	For i:=1 To Length(s) Do
		If isVowel(s[i]) Then
			temp := temp + s[i];

	len := Length(temp);
	i 	:= 1;
	While (i <= Length(s)) And (len > 0) Do
		Begin
			If isVowel(s[i]) Then
				Begin
					s[i] := temp[len];
					len := len - 1
				End;
			i 	:= i + 1
		End
End;

(* a more optimized solution would've taken
a left and right pointers that make the swapping if they
both are equal to a vowel *)
Begin
	s := 'leetcode';
	reverseVowels(s);
	Write('Output: ', s);
	Readln
End.