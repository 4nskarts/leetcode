Program leet_1496;
Const
	len = 5;
Type
	road = Record
		y: Integer;
		x: Integer
	End;
	T = Array[1..len] Of road;
Var
	path: String;

Function isPathCrossing(path: String): Boolean;
	Procedure updatePos(Var t: road; c: Char);
	Begin
		Case c Of
			'N': t.y := t.y + 1;
			'S': t.y := t.y - 1;
			'E': t.x := t.x + 1;
			'W': t.x := t.x - 1;
		End
	End;

	Function reachedAlready(t: road; arr: T): Boolean;
	Var
		i: Integer;
		b: Boolean;
	Begin
		b := False;
		i := 1;
		While (i <= len) And (Not b) Do
			If (arr[i].x = t.x) And (arr[i].y = t.y) Then
				b := True
			Else
				i := i+1;
		reachedAlready := b
	End;
Var
	i: Integer;
	cur: road;
	crossed: Boolean;
	Positions: T;
Begin
	crossed := False;
	cur.y := 0;
	cur.x := 0;
	Positions[1].x := cur.x;
	Positions[1].y := cur.y;
	i := 1;
	While (i <= Length(path)) And (Not crossed) Do
		Begin
			updatePos(cur,path[i]);
			WriteLn('(',cur.y,', ',cur.x,')');
			If Not reachedAlready(cur,Positions) Then
				Begin
					i := i+1;
					Positions[i].x := cur.x;
					Positions[i].y := cur.y
				End
			Else
				crossed := True
		End;
	isPathCrossing := crossed
End;

Begin
	path := 'NESWW';
	Write('Output: ', isPathCrossing(path));
	Readln
End.