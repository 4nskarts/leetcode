Program leet_2287;
Var
	s, target: String;

Function rearrangeCharacters(s, target: String): Integer;
Var
	i, p, res: Integer;
	temp: String;
Begin
	i := Length(target)+1;
	temp := s;
	res := -1;
	p := 1;
	While p > 0 Do
		Begin
			res := res+1;
			i := 1;
			While (i <= Length(target)) And (p > 0) Do
				Begin
					p := Pos(target[i],temp);
					Delete(temp,p,1);
					i := i+1
				End
		End;
	rearrangeCharacters := res
End;

Begin
	s := 'abbaccaddaeea';
	target := 'aaaaa';
	Write('Output: ', rearrangeCharacters(s,target));
	Readln
End.