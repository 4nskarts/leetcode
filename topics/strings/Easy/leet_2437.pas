Program leet_2437;
Var
	time: String;

Function countTime(time: String): Integer;
Var
	i, comb: Integer;
Begin
	comb := 1;
	For i:=1 To 5 Do
		Begin
			If ((i=1) And (time[i]='?')) And ((time[i+1] < '4') Or (time[i+1] = '?')) Then
				comb := comb*3
			Else If ((i=1) And (time[i]='?')) And (time[i+1] > '3') Then
				comb := comb*2;

			If ((i=2) And (time[i]='?')) And ((time[i-1] < '2') Or (time[i+1] = '?')) Then
				comb := comb*10
			Else If ((i=2) And (time[i]='?')) And (time[i-1] = '2') Then
				comb := comb*4;

			If (i=4) And (time[i]='?') Then
				comb := comb*6;

			If (i=5) And (time[i]='?') Then
				comb := comb*10
		End;
	countTime := comb
End; // DO IT REVERSELY LMAO (start with i=5)

Begin
	time := '??:??';
	Write('Output: ', countTime(time));
	Readln
End.