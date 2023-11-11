Program leet_419;
Const
	m = 4;
	n = 4;
Type
	mat = Array[1..m,1..n] Of Char;
Var
	board: mat;

// THIS SOLUTION WORKS BECAUSE WE ARE GUARANTEED
// TO HAVE A VALID BOARD (NO ADJACENT BATTLESHIPS)
Function countBattleShips(board: mat): Integer;
Var
	battleShips, i, j: Integer;
Begin
	battleShips := 0;
	For i:=1 To m Do
		For j:=1 To n Do
			Begin
				If board[i,j] = '.' Then
				Else If (i > 1) And (board[i-1,j] = 'X') Then
				Else If (j > 1) And (board[i,j-1] = 'X') Then
				Else
					battleShips := battleShips + 1
			End;
	countBattleShips := battleShips
End;

Begin
	board[1,1] := 'X';
	board[1,2] := '.';
	board[1,3] := '.';
	board[1,4] := 'X';

	board[2,1] := '.';
	board[2,2] := '.';
	board[2,3] := '.';
	board[2,4] := 'X';

	board[3,1] := '.';
	board[3,2] := '.';
	board[3,3] := '.';
	board[3,4] := 'X';

	board[4,1] := '.';
	board[4,2] := '.';
	board[4,3] := '.';
	board[4,4] := '.';
	Write('Output: ', countBattleShips(board));
	Readln
End.