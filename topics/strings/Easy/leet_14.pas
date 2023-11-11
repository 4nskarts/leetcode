Program leet_14;
Type
	arr = Array[1..3] Of String;
Var
	strs: arr;

Function longestCommonPrefix(strs: arr): String;
Var
	i, j: Integer;
	temp: String;
	running: Boolean;
Begin
	temp := '';
	j 	 := 1;
	running := True;
	While (j <= Length(strs[1])) And (running)  Do
		Begin
			i := 2;
			While (i <= 3) And (running) Do
				If (i > Length(strs[i])) Or (strs[i][j] <> strs[1][j]) Then
					running := False
				Else
					i := i+1;
			If running Then
				Begin
					temp := temp + strs[1][j];
					j 	 := j+1
				End
		End;
	longestCommonPrefix := temp
End;

Begin
	strs[1] := 'flower';
	strs[2] := 'flow';
	strs[3] := 'flight';
	Write('Output: ', longestCommonPrefix(strs));
	Readln
End.