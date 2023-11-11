Program leet_2011;
Const
	n = 3;
Type
	arr = Array[1..n] Of String;
Var
	op: arr;

Function finalValueAfterOperations(operations: arr): Integer;
Var
	i, res: Integer;
Begin
	res := 0;
	For i:=1 To n Do
		If (operations[i] = 'X++') Or (operations[i] = '++X') Then
			res := res + 1
		Else
			res := res - 1;
	finalValueAfterOperations := res
End;

Begin
	op[1] := '--X';
	op[2] := 'X++';
	op[3] := '++X';
	Write('Output: ', finalValueAfterOperations(op));
	Readln
End.