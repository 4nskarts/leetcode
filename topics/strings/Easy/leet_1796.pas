Program leet_1796;
Var
	s: String;

Function secondHighest(s: String): Char;
Var
	i, j, k: Integer;
	x: Char;
	t: Array[1..500] Of Char;
Begin
	k := 1;
	For i:=1 To Length(s) Do
		If (Ord(s[i]) >= Ord('0')) And (Ord(s[i]) <= Ord('9')) Then
			Begin
				t[k] := s[i];
				k := k+1
			End;

	For i:=1 To (k-1)-1 Do
		For j:=1  To k-i Do
			If t[j] < t[j+1] Then
				Begin
					x := t[j];
					t[j] := t[j+1];
					t[j+1] := x
				End;

	i := 2;
	While (i <= k-1) And (t[i] = t[i-1]) Do
		i := i+1;
	secondHighest := t[i]
End;

Begin
	s := 'dfa1233321afd';
	Write('Output: ', secondHighest(s));
	Readln
End.