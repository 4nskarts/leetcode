Program leet_67;
Var
	a, b: String;

Function addBinary(a,b: String): String;
Var
	i, j, sum, carry: Integer;
	res: String;
Begin
	i := Length(a);
	j := Length(b);
	carry := 0;
	res := '';
	While (i > 0) Or (j > 0) Do
		Begin
			sum := carry;
			If i > 0 Then
				sum := sum + Ord(a[i]) - Ord('0');
			If j > 0 Then
				sum := sum + Ord(b[i]) - Ord('0');

			res := Chr(sum Mod 2 + Ord('0')) + res;
			carry := sum Div 2;
			
			i := i-1;
			j := j-1
		End;
	If carry > 0 Then
		res := '1' + res;
	addBinary := res
End;

Begin
	a := '1010';
	b := '1011';
	Write('Output: ', addBinary(a,b));
	Readln
End.