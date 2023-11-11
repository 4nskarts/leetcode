Program leet_1071;
Var
	str1, str2: String;

Function gcdOfStrings(str1,str2: String): String;
	Function secondLargestPrefix(x: String; p: Integer): String;
	Var
		res: String;
	Begin
		res := Copy(x,1,p);
		While Length(res) < Length(x) Do
			res := res + res;

		If res = x Then
			secondLargestPrefix := Copy(x,1,p)
		Else
			secondLargestPrefix := ''
	End;
	
Var
	i, p, u: Integer;
	temp, t: String;
Begin
	temp := '';
	For i:=1 To Length(str1) Div Length(str2) Do
		temp := temp + str2;

	gcdOfStrings := '_';
	If (temp = str1) Then
		gcdOfStrings := str2
	Else
		Begin
			p := Length(str2) Div 2;
			While p > 0 Do
				Begin
					temp  := '';
					t 		:= secondLargestPrefix(str2,p);
					For i:=1 To Length(str1) Div Length(t) Do
						temp := temp + t;
					If temp = str1 Then
						Begin
							gcdOfStrings := t;
							p := 0
						End
					Else
						p := p-1
				End
		End
End;

(*
 the idea is to create a function which test if str2 divides str1.
 if True, then we return str2, else we take a copy of str2 (secondlargestPrefix)
*)

Begin
	str1 := 'ABABAB';
	str2 := 'ABAB';
	Write('Output: ', gcdOfStrings(str1,str2));
	Readln
End.