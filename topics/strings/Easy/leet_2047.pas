Program leet_2047;
Var
	sentence: String;


// Sentence broken into 'tokens' <=> contain ' ' (space)
// Token is valid If And Only If:
(*
		1. Token has no digits
		2. Token has ZERO or ONE '-' (if present, has to be surrounded)
		3. Token has ZERO or ONE '!' '.' ',' (if present, has to be at the end)
*)

// Hint1: Iterate through the string to split it by spaces.
// Hint2: Count the number of characters of each type (letters, numbers, hyphens, and punctuations).

// Important note: if you wanna check if a character is in a range of characters (a-z)
// then you should check if (c < a) Or (c > z)
Function countValidWords(sentence: String): Integer;
Begin
	Readln
End;

Begin
	sentence := 'cat and  dog';
	Write('Output: ', countValidWords(sentence));
	Readln
End;











