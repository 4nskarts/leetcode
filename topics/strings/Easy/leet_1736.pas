Program leet_1736;
Var
	time: String;

Function maximumTime(time: String): String;
Var
	temp: String;
Begin
	temp := time;
	If temp[5] = '?' Then
		temp[5] := '9';

	If temp[4] = '?' Then
		temp[4] := '5';

	If (temp[2] = '?') And (temp[1] = '?') Then
		Begin
			temp[2] := '3';
			temp[1] := '2'
		End
	Else If (temp[1] <> '2') And (temp[2] = '?') Then
		temp[2] := '9'
	Else If (temp[1] = '2') Then
		temp[2] := '3';
	maximumTime := temp
End;

Begin
	time := '1?:22';
	Write('Output: ', maximumTime(time));
	Readln
End.