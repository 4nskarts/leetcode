Program leet_2273;
Const
  N = 5;
Type
  t = Array[1..N] Of String;
Var
  mots: t;
  i: Integer;

Procedure removeAnagrams(Var mots: t);
Function canConstruct(ransomNote, magazine: String): Boolean;
Var
  i, p: Integer;
  b: Boolean;
  temp: String;
Begin
  If Length(ransomNote) = Length(magazine) Then
    Begin
      temp := magazine;
      i := 1;
      b := True;
      While (i <= Length(ransomNote)) And (p > 0) Do
        Begin
          p := Pos(ransomNote[i],temp);
          Delete(temp,p,1);
          i := i+1
        End;
      canConstruct := i > Length(ransomNote)
    End
End;
Var
  i, p: Integer;
  temp: Array[1..5] Of Integer;
Begin
  For i:=2 To N Do
    If canConstruct(mots[i],mots[i-1]) Then
      temp[i-1] := i;
  For i:=1 To N Do
    Begin
      p := temp[i];
      If p < N Then
        mots[p] := '0'
    End
End;

Begin
  mots[1] := 'abba';
  mots[2] := 'baba';
  mots[3] := 'bbaa';
  mots[4] := 'cd';
  mots[5] := 'cd';
  removeAnagrams(mots);
  For i:=1 To N Do
    Write(mots[i], ' -- ');
  Readln
End.
