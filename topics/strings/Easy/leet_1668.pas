Program leet_1668;
Var
	sequence, mot: String;

Function maxRepeating(sequence, mot: String): Integer;
Var
	p, cpt: Integer;
Begin
	cpt := 0;
	p 	:= Length(sequence)-Length(mot)+1;
	While p > 0 Do
		Begin
			If Pos(mot, Copy(sequence, p, Length(mot))) > 0 Then
				cpt := cpt+1;
			p 	:= p-1
		End;
	maxRepeating := cpt
End;

Begin
	sequence := 'ababc';
	mot			 := 'abab';
	Write('Output: ', maxRepeating(sequence, mot));
	Readln
End.