Program leet_1198;
Const
	m = 4;
	n = 5;
Type
	mat = Array[1..m,1..n] Of Integer;
Var
	grid: mat;


// Simple Solution 'O(m*n*log_n)' Time complexity
// The idea is to go through each element of the first row
// And verify if it's common in all rows
Function commonInAllRows(grid: mat): Integer;
	Function isCommon(grid: mat; v: Integer): Boolean;
		Function there(grid: mat; i,v: Integer): Boolean;
		Var
			 j: Integer;
			 isThere: Boolean;
		Begin
			isThere := False;
			j := 1;
			While (j <= n) And (Not isThere) Do
				If grid[i,j] = v Then
					isThere := True
				Else
					j := j+1;
			there := isThere
		End;
	Var
		i: Integer;
	Begin
		i := 2;
		While (i < m) And (there(grid,i,v)) Do
			i := i+1;
		isCommon := there(grid,i,v)
	End;
Var
	j: Integer;
Begin
	j := 1;
	While (j < n) And (Not isCommon(grid,grid[1,j])) Do
		j := j+1;
		
	If isCommon(grid,grid[1,j]) Then
		commonInAllRows := grid[1,j]
	Else
		commonInAllRows := -1
End;

// More Elegant solution 'O(m*n)' solution
(* The idea is to start from the last column of every row. If elements at all last columns are same,
then we found the common element. Otherwise we find the minimum of all last columns. Once we find a minimum element,
 we know that all other elements in last columns cannot be a common element,
 so we reduce last column index for all rows except for the row which has minimum value.
 We keep repeating these steps till either all elements at current last column don’t become same,
 or a last column index reaches 0. *)
Begin
	grid[1,1] := 1;
	grid[1,2] := 2;
	grid[1,3] := 3;
	grid[1,4] := 4;
	grid[1,5] := 5;

	grid[2,1] := 2;
	grid[2,2] := 4;
	grid[2,3] := 3;
	grid[2,4] := 8;
	grid[2,5] := 10;

	grid[3,1] := 3;
	grid[3,2] := 5;
	grid[3,3] := 7;
	grid[3,4] := 9;
	grid[3,5] := 11;

	grid[4,1] := 1;
	grid[4,2] := 3;
	grid[4,3] := 5;
	grid[4,4] := 7;
	grid[4,5] := 9;
	Write('Output: ', commonInAllRows(grid));
	Readln 
End.