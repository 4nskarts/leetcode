Program leet2423;
Type
  element = Record
    letter: Char;
    occu : Integer;
  End;
	frequency = Array[1..26] Of element;
Var
	mot: String;
	freq: frequency;
	k: Integer;

Function occ(idx: Integer; mot: String): Integer;
Var
	temp, i: Integer;
Begin
	temp := 0;
	For i:=idx To Length(mot) Do
		Begin
			If mot[i] = mot[idx] Then
				temp := temp+1
		End;
	occ := temp
End; // How many times mot[idx] occurred

Procedure fillFreq(Var freq: frequency; mot: String);
Var
	i, j: Integer;
Begin
	j := 1;
	i := 1;
	While (i<=26) And (j <= Length(mot)) Do
		Begin
			freq[i].letter := mot[j];
			freq[i].occu   := occ(j, mot);
			While (mot[j+1] = mot[j]) And (j < Length(mot)) Do
				j := j+1;
			j := j+1;
			i := i+1
		End
End; // Filling the frequency array

Function equalFrequency(Var freq: frequency): Boolean;
Var
	i, j: Integer;
	equal, temp: Boolean;
Begin
	equal := False;
	i := 1;
	While ((i<=26) And (freq[i].occu > 0)) And (Not equal) Do
		Begin
			temp := True;
			j := 1;
			freq[i].occu := freq[i].occu - 1;
			While ((j < 26) And (freq[j+1].occu > 0)) And (temp) Do
				Begin
					If freq[j].occu <> freq[j+1].occu Then
						temp := False
					Else
						j := j+1
				End;
			If temp Then
				equal := True
			Else
				Begin
					freq[i].occu := freq[i].occu + 1;
					i := i+1
				End
		End;
	If equal Then
		equalFrequency := True
	Else
		equalFrequency := False
End;

Begin
	mot := 'aabbccddrrr';
	fillFreq(freq, mot);
	For k:=1 To 4 Do
		Begin
			WriteLn('letter: ', freq[k].letter);
			WriteLn('freque: ', freq[k].occu)
		End;
	WriteLn;
	Write(equalFrequency(freq));
	Readln
End.