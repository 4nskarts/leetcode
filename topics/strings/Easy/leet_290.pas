Program leet_290;
Type
	sp = Array[1..300] Of Integer;
Var
	s, pattern: String;
Procedure replace(substr: String; Var s: String; idx,len: Integer);
Begin
	Delete(s, idx, len);
	Insert(substr, s, idx)
End;

Begin
	pattern := 'ababaaaaa';
	s := 'dog cat cat dog';
	replace(pattern, s, 1,3);
	Write('Output: ', s);
	Readln
End.