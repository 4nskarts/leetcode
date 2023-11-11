Program leet_1030;
Const
	rows = 4;
	cols = 4;
Type
	t = Array[1..rows,1..cols] Of Integer;
Var
	grid: t;

Procedure allCellsDistOrder(rCenter, cCenter: Integer; Var grid: t);
Var
	i, j	: Integer;
	temp	: Array[1..2,1..rows*cols] Of Integer;
	dx, dy: Integer;
Begin
	For i:=1 To rows Do
		For j:=1 To cols Do
			Begin
				dx := Abs(rCenter - i);
				dy := Abs(rCenter - j);
				// Fill the temp Matrix
			End;
End;

(*
The idea is to fill an array of couples and then sort them
use a record of three integer (x, y and distance)
*)

Begin
	Readln
End.