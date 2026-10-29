program KelulusanMahasiswaArray;
uses crt;

var
  nilaiKomponen : array[1..5, 1..4] of real;
  rataRata : array[1..5] of real;
  status : array[1..5] of string;
  
  n, i : integer;

begin
  clrscr;
  writeln('Program Hitung Kelulusan');
  
  repeat
    write('Masukkan jumlah mahasiswa (1-5): '); readln(n);
  until (n >= 1) and (n <= 5);
  
  writeln;
  
  for i := 1 to n do
  begin
    writeln('Masukkan nilai untuk mahasiswa ke-', i, ':');
    write('  Nilai Tugas : ');
     readln(nilaiKomponen[i, 1]);
    write('  Nilai Kuis  : ');
     readln(nilaiKomponen[i, 2]);
    write('  Nilai UTS   : ');
     readln(nilaiKomponen[i, 3]);
    write('  Nilai UAS   : ');
     readln(nilaiKomponen[i, 4]);
    
    rataRata[i] := (nilaiKomponen[i, 1] + nilaiKomponen[i, 2] + nilaiKomponen[i, 3] + nilaiKomponen[i, 4]) / 4;
    
    if rataRata[i] >= 70 then
      status[i] := 'LULUS'
    else
      status[i] := 'TIDAK LULUS';
    writeln;
  end;
  
  writeln('No  Tugas   Kuis    UTS     UAS     Rata-rata   Keterangan');
  for i := 1 to n do
  begin
    writeln(i:2, 
            nilaiKomponen[i, 1]:8:1, 
            nilaiKomponen[i, 2]:8:1, 
            nilaiKomponen[i, 3]:8:1, 
            nilaiKomponen[i, 4]:8:1, 
            rataRata[i]:12:1, 
            '   ', status[i]);
  end;
  
  readln;
end.