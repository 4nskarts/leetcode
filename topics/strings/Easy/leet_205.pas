Program leet_205;
Var
	s, t: String;


Function isIsomorphic(Var s, t: String): Boolean;
	Procedure replaceAll(v1, v2: Char; Var s: String);
	Var
		i: Integer;
	Begin
		For i:=1 To Length(s) Do
			If s[i] = v1 Then
				s[i] := v2
	End;
Var
	i, len: Integer;
Begin
	len := Length(s);
	For i:=1 To len Do
		If (s[i] <> s[i-1]) Or (i = 1) Then
			If (t[i] <> t[i-1]) Or (i = 1) Then
				replaceAll(s[i], t[i], s);
	Write(s, ' | ', t);
	If s = t Then
		isIsomorphic := True
	Else
		isIsomorphic := False
End;

Begin
	s := 'eggiogg';
	t := 'addplvv';
	Write('Output: ', isIsomorphic(s,t));
	Readln
End.