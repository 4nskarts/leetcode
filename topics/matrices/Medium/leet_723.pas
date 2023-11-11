Program leet_723;
Const
	m = 4;
	n = 5;
Type
	candy = Array[1..m,1..n] Of Integer;
Var
	board: candy;

Procedure candyCrush(Var board: candy);
Var
	i, j, num1, num2, num3, idx, row: Integer;
	done: Boolean;
Begin
	done := True;
	// 1. CRUSH THE ROWS
	For i:=1 To m Do
		For j:=1 To (n-3)+1 Do
			Begin
				num1 := Abs(board[i,j]);
				num2 := Abs(board[i,j+1]);
				num3 := Abs(board[i,j+2]);
				If (num1 = num2) And (num2 = num3) Then
					Begin
						board[i,j]	 := -num1;
						board[i,j+1] := -num2;
						board[i,j+2] := -num3;
						done := False
					End
			End;

	// 2. CRUSH THE COLUMNS
	For j:=1 To n Do
		For i:=1 To (m-3)+1 Do
			Begin
				num1 := Abs(board[i,j]);
				num2 := Abs(board[i+1,j]);
				num3 := Abs(board[i+2,j]);
				If (num1 = num2) And (num2 = num3) Then
					Begin
						board[i,j]	 := -num1;
						board[i+1,j] := -num2;
						board[i+2,j] := -num3;
						done := False
					End
			End;

	// 3. GRAVITY
	If Not done Then
		For j:=1 To n Do
			Begin
				idx := m;
				row := m;
				While (row > 0) Do
					Begin
						If board[row,j] > 0 Then
							Begin
								board[idx,j] := board[row,j];
								idx := idx - 1
							End;
						row := row - 1
					End;

				row := idx;
				While (row > 0) Do
					Begin
						board[row,j] := 0;
						row := row - 1
					End
			End;
End;

Procedure print(grid: candy);
Var
	i, j: Integer;
Begin
	For i:=1 To m Do
		Begin
			Write(' |');
			For j:=1 To n Do
				Write(grid[i,j]:2, ' |');
			WriteLn
		End
End;

Begin
	board[1,1] := 1;
	board[1,2] := 1;
	board[1,3] := 1;
	board[1,4] := 1;
	board[1,5] := 4;

	board[2,1] := 1;
	board[2,2] := 3;
	board[2,3] := 3;
	board[2,4] := 4;
	board[2,5] := 4;

	board[3,1] := 2;
	board[3,2] := 2;
	board[3,3] := 4;
	board[3,4] := 5;
	board[3,5] := 4;

	board[4,1] := 2;
	board[4,2] := 2;
	board[4,3] := 1;
	board[4,4] := 1;
	board[4,5] := 1;
	candyCrush(board);
	print(board);
	Readln
End.