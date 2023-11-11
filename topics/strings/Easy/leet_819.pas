Program leet_819;
Type
	Arr = Array[1..10] Of String;
Var
	paragraph: String;
	banned: Arr;

	(* My Idea is to brute force through the paragraph.
	we make a frequency array which contains every words
	with its frequency. After that, we test to see the
	word with the most frequency (assuming its not a banned
	one), and we return it *)
Function mostCommonWord(paragraph: String; banned: Arr): String;
Begin
	mostCommonWord := ''
End;

Begin
	paragraph := 'Bob hit a ball, the hit BALL flew far after it was hit.';
	banned[1] := 'hit';
	Write('Output: ', mostCommonWord(paragraph, banned));
	Readln
End.