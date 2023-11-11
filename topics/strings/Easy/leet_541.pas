Program leet_345;
Var
	s: String;

Procedure reverseStr(Var s: String; k: Integer);
	Procedure swapp(Var x: String);
	Var
		i, len: Integer;
		temp: Char;
	Begin
		i := 1;
		len := Length(x);
		While i < len Do
			Begin
				temp := x[i];
				x[i] := x[len];
				x[len] := temp;

				i := i+1;
				len := len-1
			End;
		WriteLn(x);
	End;
Var
	temp, res: String;
	i: Integer;
Begin
	res := '';
	i := 1;
	While i <= Length(s) Do
		Begin
			temp := Copy(s,i,k);
			swapp(temp);
			res := res + temp;
			i := i+2*k;
		End;
	s := res;
End;

(*
The idea of nassim is: we take a copy of length k starting from
position i, we put that in string temp, inverse it and replace
it in the same position, we continue until Length(s)
*)

Begin
	s := 'abcdefg';
	reverseStr(s, 2);
	Write('Output: ', s);
	Readln
End.