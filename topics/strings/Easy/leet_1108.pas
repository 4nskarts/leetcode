Program leet_1108;
Var
	address: String;

Procedure degangIPaddr(Var address: String);
Var
	i: Integer;
Begin
	i := 1;
	While (i <= Length(address)) Do
		Begin
			If address[i] = '.' Then
				Begin
					Insert('[', address, i);
					Insert(']', address, i+2);
					i := i+2
				End;
			i := i+1
		End
End;

Begin
	address := '1.1.1.1';
	degangIPaddr(address);
	Write('Output: ', address);
	Readln
End.