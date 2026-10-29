program UrutNilaiUAS;
uses crt;

var
  nilai : array[1..10] of real;
  n, i, j : integer;
  temp : real;

begin
  clrscr;
  writeln('Program Urut Nilai UAS');
  
  repeat
    write('Masukkan jumlah mahasiswa (1-10): ');
     readln(n);
  until (n >= 1) and (n <= 10);
  
  writeln;
  
  for i := 1 to n do
  begin
    write('Masukkan nilai UAS mahasiswa ke-', i, ': ');
     readln(nilai[i]);
  end;
  
  for i := 1 to n - 1 do
  begin
    for j := i + 1 to n do
    begin
      if nilai[i] > nilai[j] then
      begin
        temp := nilai[i];
        nilai[i] := nilai[j];
        nilai[j] := temp;
      end;
    end;
  end;
  
  writeln;
  
  writeln('Nilai UAS setelah diurutkan (terendah ke tertinggi):');
  for i := 1 to n do
  begin
    writeln('Mahasiswa ke-', i, ': ', nilai[i]:0:2);
  end;
  
  readln;
end.