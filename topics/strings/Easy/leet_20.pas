Program leet_20;
Var
	s: String;

(*
	an input is valid iff:
		1. open brackets are closed by the same type
		of brackets
		2. open brackets must be closed in the correct
		order
		3. every closing bracket has a corresponding open
		bracket
*)

(*
	we can check if the string is valid if it starts
	with an open bracket (can't start with a closed one)
	and follows with a closed bracket OF THE SAME TYPE

	THE STACK IS ONLY AN ARRAY WE APPEND TO AND THEN
	WE POP FROM (first in last out)

	1st we check if the first element of the String
	is a closing bracket, then we return False
	else, we push the first element to the stack
*)

Function sameButClosed(s1: Char; s2: String): Boolean;
Begin
	If (s1 = ')') And (s2 = '(') Then
		 sameButClosed := True
	Else If (s1 = '}') And (s2 = '{') Then
		sameButClosed := True
	Else If (s1 = ']') And (s2 = '[') Then
		sameButClosed := True
	Else
		sameButClosed := False
End;

Function isValid(s: String): Boolean;
Var
	stack: String;
	i: Integer;
Begin
	stack := '';
	For i:=1 To Length(s) Do
		Begin
			If (s[i]=')') Or (s[i]=']') Or (s[i]='}') Then
				If (stack <> '') And (sameButClosed(s[i], stack[Length(stack)])) Then
					Delete(stack, Length(stack), 1)
			Else Else
				stack := stack + s[i]
		End;
		If stack = '' Then
			isValid := True
		Else
			isValid := False
End;

Begin
	s := '()[({})]{}';
	Write('Output: ', isValid(s));
	Readln
End.