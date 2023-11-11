Program leet_415;
Var
	num1, num2: String;

Function addStrings(num1, num2: String): String;
Var
	res : String;
	i, j: Integer;
	sum, carry: Integer;
Begin
	carry := 0;
	res := '';
	i := Length(num1);
	j := Length(num2);
	While (i > 0) Or (j > 0) Do
		Begin
			sum := carry;
			If i > 0 Then
				sum := sum + Ord(num1[i]) - Ord('0');
			If j > 0 Then
				sum := sum + Ord(num2[j]) - Ord('0');

			res := Chr(sum Mod 10 + Ord('0')) + res;
			carry := sum Div 10;

			j := j-1;
			i := i-1
		End;
	If carry > 0 Then
		res := Chr(carry + Ord('0')) + res;
	addStrings := res
End;

Begin
	num1 := '149';
	num2 := '95';
	Write('Output: ', addStrings(num1, num2));
	Readln
End.