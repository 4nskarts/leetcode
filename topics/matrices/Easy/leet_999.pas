Program leet_999;
Type
  t = Array[1..8,1..8] Of Char;
Var
	board: t;
	
Function numRookCaptures(board: t): Integer;
Function Hori(i, j: Integer; board: t): Integer;
Var
  col, s: Integer;
Begin
  s := 0;
  col := j;
  For col:=j+1 To 8 Do
    If board[i,col] = 'B' Then
      Exit
    Else If board[i,col] = 'p' Then
           Begin
             s := s+1;
             Exit
           End;
  For col:=j-1 Downto 1 Do
    If board[i,col] = 'B' Then
      Exit
    Else If board[i,col] = 'p' Then
           Begin
             s := s+1;
             Exit
           End;
  Hori := s;
End;

Function Vert(i, j: Integer; board: t): Integer;
Var
  row, s: Integer;
Begin
  s := 0;
  row := i;
  For row:=i+1 To 8 Do
    If board[row,j] = 'B' Then
      Exit
    Else If board[row,j] = 'p' Then
           Begin
             s := s+1;
             Exit
           End;
  For row:=i-1 Downto 1 Do
    If board[row,j] = 'B' Then
      Exit
    Else If board[row,j] = 'p' Then
           Begin
             s := s+1;
             Exit
           End;
  Vert := s;
End;
Var
  i, j: Integer;
  rook: Boolean;
Begin
  i := 1;
  rook := False;
  While (i <= 8) And (Not rook) Do
    Begin
      j := 1;
      While (j <= 8) And (Not rook) Do
        If board[i,j] = 'R' Then
          rook := True
        Else
          j := j+1;
      If Not rook Then
        i := i+1
    End;
  If rook Then
    numRookCaptures := Hori(i,j,board) + Vert(i,j,board)
  Else
    numRookCaptures := 0
End;
Begin
  board[1,1] := '.' ;
  board[1,2] := '.' ;
  board[1,3] := '.' ;
  board[1,4] := '.' ;
  board[1,5] := '.' ;
  board[1,6] := '.' ;
  board[1,7] := '.' ;
  board[1,8] := '.';
  board[2,1] := '.' ;
  board[2,2] := '.' ;
  board[2,3] := '.' ;
  board[2,4] := 'p' ;
  board[2,5] := '.' ;
  board[2,6] := '.' ;
  board[2,7] := '.' ;
  board[2,8] := '.';
  board[3,1] := '.' ;
  board[3,2] := '.' ;
  board[3,3] := '.' ;
  board[3,4] := 'p' ;
  board[3,5] := '.' ;
  board[3,6] := '.' ;
  board[3,7] := '.' ;
  board[3,8] := '.';
  board[4,1] := 'p' ;
  board[4,2] := 'p' ;
  board[4,3] := '.' ;
  board[4,4] := 'R' ;
  board[4,5] := '.' ;
  board[4,6] := 'p' ;
  board[4,7] := 'B' ;
  board[4,8] := '.';
  board[5,1] := '.' ;
  board[5,2] := '.' ;
  board[5,3] := '.' ;
  board[5,4] := '.' ;
  board[5,5] := '.' ;
  board[5,6] := '.' ;
  board[5,7] := '.' ;
  board[5,8] := '.' ;
  board[6,1] := '.' ;
  board[6,2] := '.' ;
  board[6,3] := '.' ;
  board[6,4] := 'B' ;
  board[6,5] := '.' ;
  board[6,6] := '.' ;
  board[6,7] := '.' ;
  board[6,8] := '.' ;
  board[7,1] := '.' ;
  board[7,2] := '.' ;
  board[7,3] := '.' ;
  board[7,4] := 'p' ;
  board[7,5] := '.' ;
  board[7,6] := '.';
  board[7,7] := '.' ;
  board[7,8] := '.' ;
  board[8,1] := '.' ;
  board[8,2] := '.' ;
  board[8,3] := '.' ;
  board[8,4] := '.' ;
  board[8,5] := '.' ;
  board[8,6] := '.' ;
  board[8,7] := '.' ;
  board[8,8] := '.';
  Write('Output: ', numRookCaptures(board));
  Readln
End.

// we can define two arrays which will hold the
// steps which we'll traverse with
