Program leet_344;
Var
	s: String;

Procedure flipString(Var s: String);
	Procedure swapChar(Var c1,c2: Char);
	Var
		temp: Char;
	Begin
		temp := c1;
		c1 := c2;
		c2 := temp
	End;
Var
	l, r: Integer;
Begin
	l := 1;
	r := Length(s);
	While l < r Do
		Begin
			swapChar(s[l],s[r]);
			r := r - 1;
			l := l + 1
		End
End;

Begin
	s := 'edocteel';
	flipString(s);
	Write('Output: ', s);
	Readln
End.