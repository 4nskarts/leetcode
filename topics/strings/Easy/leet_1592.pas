Program leet_;
Var
	txt: String;

Procedure reorderSpaces(Var txt: String);
Var
	i, cptS, cptW, needed, len: Integer;
	temp, temp2: String;
Begin
	cptS := 0; cptW := 0;

	If txt[1] <> ' ' Then
		cptS := cptS + 1;
	For i:=2 To Length(txt) Do
		Begin
			If txt[i] = ' ' Then
				cptS := cptS + 1;
			If (*(txt[i] <> ' ') Or*) ((txt[i-1] = ' ') And (txt[i] <> ' ')) Then
				cptW := cptW + 1
		End; // Now we know how many spaces and words are there
	(*Write('cptS: ', cptS);
	Write('cptW: ', cptW);*)
	needed := cptS Div (cptW-1);
	// to know the rest, we use cptS Mod (cptW-1)
	temp := '';
	For i:=1 To needed Do
		temp := temp + '_';

	temp2 := '';
	len := Length(txt);
	For i:=1 To len-1 Do
		If (txt[i] <> ' ') Then
		Begin
			temp2 := temp2 + txt[i];
			If txt[i+1] = ' ' Then
				temp2 := temp2 + temp
		End;
	txt := temp2
End;

Begin
	txt := '  this   is  a sentence ';
	reorderSpaces(txt);
	Write('Output: ', txt);
	Readln
End.