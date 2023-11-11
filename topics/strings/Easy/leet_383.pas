Program leet_383;
Var
	ransomNote, magazine: String;

Function canConstruct(ransomNote, magazine: String): Boolean;
Var
	i, p: Integer;
	b: Boolean;
	temp: String;
Begin
	If Length(magazine) < Length(ransomNote) Then
		canConstruct := False
	Else
		Begin
			temp := magazine;
			i := 1;
			b := True;
			While (i <= Length(ransomNote)) And (p > 0) Do
				Begin
					p := Pos(ransomNote[i],temp);
					Delete(temp,p,1);
					i := i+1
				End;
			canConstruct := i > Length(ransomNote)
		End
End;

Begin
	ransomNote := 'aa';
	magazine := 'aab';
	Write('Output: ', canConstruct(ransomNote, magazine));
	Readln
End.