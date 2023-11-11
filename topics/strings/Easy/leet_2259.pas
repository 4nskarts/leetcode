Program leet_2259;
Var
	number, digit: String;


	(*
		Iterate through the digits of number and
		every time we see digit, try removing it.

		-> use two variables temp1 and temp2, Delete
		one occurrence and store it in temp1, compare it
		with temp2 which is now = '', then store the Max
		in answer, repeat the process until you delete all occurrences
	*)
Function removeDigit(number, digit: String): String;
Var
	i: Integer;
	running: Boolean;
	temp: String;
Begin
	i := Length(number);
	running := True;
	temp := number;
	while (running) And (i > 0) Do
		If number[i] = digit Then
			Begin
				Delete(temp,i,1);
				running := False
			End
		Else
			i := i-1;
	removeDigit := temp;
End;

Begin
	number := '1231';
	digit  := '1';
	Write('Output: ', removeDigit(number, digit));
	Readln
End.