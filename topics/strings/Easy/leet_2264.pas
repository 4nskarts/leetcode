Program leet_2264;
Var
	num: String;

Function largestGoodInteger(num: String): String;
	Function valid(s: String): Boolean;
	Begin
		If (s[1] = s[2]) And (s[2] = s[3]) Then
			valid := True
		Else
			valid := False
	End;
Var
	i: Integer;
	temp, max: String;
Begin
	i := 1;
	While num[i] = '0' Do
		i := i+1;

	max := '';
	For i:=i To Length(num)-3 + 1 Do
		Begin
			temp := Copy(num,i,3);
			If valid(temp) Then
				If temp > max Then
					max := temp
		End;
	largestGoodInteger := max
End;

Begin
	num := '6777133339';
	Write('Output: ', largestGoodInteger(num));
	Readln
End.