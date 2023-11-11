Program leet_1961;
Const
	len = 4;
Type
	t = Array[1..len] Of String;
Var
	s: String;
	words: t;

Function isPrefixString(s: String; words: t): Boolean;
Var
	isPrefix: Boolean;
	temp: String;
	i: Integer;
Begin
	isPrefix := False;
	temp := words[1];
	i := 2;
	While (i <= len) And (Not isPrefix) Do
		Begin
			If temp = s Then
				isPrefix := True
			Else
				If Pos(temp,s) = 0 Then
					i := len+1
			Else
				Begin
					temp := temp + words[i];
					i := i+1
				End
		End;
	isPrefixString := isPrefix
End;

Begin
	s := 'iloveleetcode';
	words[1] := 'apples';
	words[2] := 'i';
	words[3] := 'love';
	words[4] := 'leetcode';
	Write('Output: ', isPrefixString(s,words));
	Readln
End.