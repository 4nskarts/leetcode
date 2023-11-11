Program leet_1672;
Type
	mat = Array[1..50,1..50] Of Integer;
Var
	accounts: mat;

Function maximumWealth(accounts: mat): Integer;
Var
	i, j, max, temp: Integer;
Begin
	max := 0;
	// Comparing every temp Max to Max
	// And updating the position
	For i:=1 To 50 Do
		Begin
			temp := 0;
			For j:=1 To 50 Do
				temp := temp + accounts[i][j];
			If temp > max Then
				max := temp
		End;
	maximumWealth := max
End;

Begin
	accounts[1][1] := 1;
	accounts[1][2] := 2;
	accounts[1][3] := 3;
	accounts[2][1] := 3;
	accounts[2][2] := 2;
	accounts[2][3] := 1;
	Write('Output: ', maximumWealth(accounts));
	Readln
End.