Program leet_392;
Var
	s,t: String;

Function isSubsequence(s,t: String; k: Integer): Boolean;
Var
	i, j, cpt: Integer;
	run: Boolean;
Begin
	run := True;
	cpt := 0;
	While (run) And (cpt < k) Do
		Begin
			i := 1;
			j := 1;
			While (i <= Length(t)) And (j <= Length(s)) Do
				Begin
					If t[i] = s[j] Then
						Begin
							Delete(t,i,1);
							j := j+1
						End
					Else
						i := i+1
				End;
				If j > Length(s) Then
					cpt := cpt+1
				Else
					run := False
		End;
	If cpt = k Then
		isSubsequence := True
	Else
		isSubsequence := False
End;

Begin
	s := 'abc';
	t := 'ahabgbdcc';
	Write('Output: ', isSubsequence(s,t,2));
	Readln
End.