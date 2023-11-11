Program	leet_1678;
Var
	command: String;

Function interpret(command: String): String;
Var
	i: Integer;
	res: String;
Begin
	res := '';
	For i:=1 To Length(command) Do
		If command[i] = 'G' Then
			res := res + command[i]
		Else If command[i] = '(' Then
			If command[i+1] = ')' Then
				res := res + 'o'
			Else
				res := res + 'al';
	interpret := res
End;

Begin
	command := 'G()(al)';
	Write('Output: ', interpret(command));
	Readln
End.