program Soal10;
uses crt;

var
  noHari: integer;
  namaHari: string;

begin
  clrscr;
  // Minta input urutan nomor hari
  write('Input : '); 
  readln(noHari);
  
  // Mengonversi angka menjadi string nama hari
  case noHari of
    1: namaHari := 'Hari Senin';
    2: namaHari := 'Hari Selasa';
    3: namaHari := 'Hari Rabu';
    4: namaHari := 'Hari Kamis';
    5: namaHari := 'Hari Jumat';
    6: namaHari := 'Hari Sabtu';
    7: namaHari := 'Hari Minggu';
    else namaHari := 'Nomor hari tidak valid! (Pilih 1-7)';
  end;
  
  // Menampilkan output nama hari ke layar
  writeln('Output: ', namaHari);
  
  readln;
end.