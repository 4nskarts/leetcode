Program leet_859;
Var
	s, goal: String;

Procedure swapp(Var c1, c2: Char);
Var
	temp: Char;
Begin
	temp := c1;
	c1 := c2;
	c2 := temp
End;

Function buddyStrings(Var s: String; goal: String): Boolean;
Var
	i, j: Integer;
	buddies: Boolean;
Begin
	buddies := False;
	i := 1;
	While (i < 6) And (Not buddies) Do
		Begin
			If i = 6-1 Then
				swapp(s[(i Mod 3)], s[(i Mod 3)+1])
			Else If (i Mod 3 = 0) Or (i > 3) Then // to be determined
				swapp(s[(i Mod 3)+1], s[(i Mod 3)+2])
			Else 
				swapp(s[(i Mod 3)], s[(i Mod 3)+1]);
			WriteLn(s);
			j := 1;
			While (j<Length(goal)) And (s[j] = goal[j]) Do
				j := j+1;
			If s[j] = goal[j] Then
				buddies := True
			Else
				i := i+1
		End;
	buddyStrings := buddies
End;

Begin
	s := 'abc';
	goal := 'acb';
	Write(buddyStrings(s, goal));
	Readln
End.

