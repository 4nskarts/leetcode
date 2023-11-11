Program leet_925;
Var
	nom, typed: String;

Function isLongPressedName(nom, typed: String): Boolean;
Var
	i, j, k: Integer;
	found	 : Boolean;
Begin
	found := False;
	i := 1;
	While (i <= Length(typed)-Length(nom)+1) And (Not found) Do
		Begin
			k := i;
			j := 1;
			While (j < Length(nom)) And (typed[k] = nom[j]) Do
			Begin
					While typed[k+1] = typed[k] Do
						k := k+1;
					j := j+1;
					k := k+1;
			End;
			If j = Length(nom) Then
				found := True
			Else
				i := i+1
		End;
	isLongPressedName := found
End;

Begin
	nom := 'anas';
	typed := 'aaaannnaaaass'; // Expected Output -> True
	Write(isLongPressedName(nom, typed));
	Readln
End.