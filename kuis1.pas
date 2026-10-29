program PenjumlahanMatriks;
uses crt;

var
  matrik1, matrik2, hasil : array[1..5, 1..5] of integer;
  baris1, kolom1, baris2, kolom2 : integer;
  i, j : integer;

begin
  clrscr;
  writeln('Program Penjumlahan Matriks');
  
  write('Masukkan jumlah baris matriks 1 (max 5): ');
   readln(baris1);
  write('Masukkan jumlah kolom matriks 1 (max 5): '); 
  readln(kolom1);
  
  write('Masukkan jumlah baris matriks 2 (max 5): ');
   readln(baris2);
  write('Masukkan jumlah kolom matriks 2 (max 5): ');
   readln(kolom2);
  
  writeln;
  
  if (baris1 <> baris2) or (kolom1 <> kolom2) then
  begin
    writeln('Error: Kedua matriks tidak dapat dijumlahkan karena ukurannya berbeda!');
  end
  else
  begin
    writeln('Masukkan elemen Matriks 1:');
    for i := 1 to baris1 do
    begin
      for j := 1 to kolom1 do
      begin
        write('Matriks 1 [', i, ',', j, ']: '); readln(matrik1[i, j]);
      end;
    end;
    
    writeln;

    writeln('Masukkan elemen Matriks 2:');
    for i := 1 to baris2 do
    begin
      for j := 1 to kolom2 do
      begin
        write('Matriks 2 [', i, ',', j, ']: ');
         readln(matrik2[i, j]);
      end;
    end;
    
    for i := 1 to baris1 do
    begin
      for j := 1 to kolom1 do
      begin
        hasil[i, j] := matrik1[i, j] + matrik2[i, j];
      end;
    end;
    
    writeln;
    
    writeln('Hasil Penjumlahan Matriks:');
    for i := 1 to baris1 do
    begin
      for j := 1 to kolom1 do
      begin
        write(hasil[i, j]:4);
      end;
      writeln;
    end;
  end;
  
  readln;
end.