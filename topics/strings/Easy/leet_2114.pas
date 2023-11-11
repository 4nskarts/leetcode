Program leet_2114;
Const
	n = 3;
Type
	arr = Array[1..n] Of String;
Var
	sent: arr;

Function mostWordsFound(sentences: arr): Integer;
	Function wc(s: String): Integer;
	Var
		i, res: Integer;
	Begin
		res := 1; // There's at least one word
		For i:=2 To Length(s)-1 Do
			If (s[i] = ' ') And (s[i+1] <> ' ') Then
				res := res + 1;
		wc := res
	End;
Var
	i, max: Integer;
Begin
	max := wc(sentences[1]);
	For i:=2 To n Do
		If wc(sentences[i]) > max Then
			max := wc(sentences[i]);
	mostWordsFound := max
End;

Begin
	sent[1] := 'alice and bob love leetcode';
	sent[2] := 'i think so too';
	sent[3] := 'this is great thanks very much';
	Write('Output: ', mostWordsFound(sent));
	Readln 
End.