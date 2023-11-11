Program leet_1275;
Type
	ttt = Array[1..3,1..3] Of Char;
	tmp = Array[1..m,1..n] Of Integer;
Var
	moves: tmp;
	grid: ttt;

(*
	Algorithm analysis:
the idea is to keep track of each row and column,
and the two diagonals (how many X's or O's are there)
we do that as follows:
*)

Function tictactoe(moves: tmp): String;
Var
	i, j: Integer;
	rows, cols: Array[1..3] Of Integer;
	d1, d2, turn: Integer;
	res := '';
Begin
	i := 1;
	While (i <= m) And (res = '') Do
		Begin
			j := 1;
			While (j <= n) And (res = '') Do
				Begin
					rows[i] := rows[i] + turn;
					cols[i] := cols[i] + turn;
					// You have to keep track of this AFTER you have filled the grid
				End;
		End;
End;