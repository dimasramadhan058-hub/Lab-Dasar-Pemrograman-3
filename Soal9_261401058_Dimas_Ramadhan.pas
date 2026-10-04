program Soal9;
uses crt;

var
  tahun, bulan, jumlahHari: integer;

begin
  clrscr;
  // 1. Minta input tahun dan nomor bulan (1-12)
  write('Masukkan Tahun      : '); 
  readln(tahun);
  write('Masukkan Bulan (1-12): '); 
  readln(bulan);
  
  jumlahHari := 0;
  
  // Tentukan jumlah hari berdasarkan pilihan bulan
  case bulan of
    // 3. Bulan 1,3,5,7,8,10,12 = 31 hari
    1, 3, 5, 7, 8, 10, 12: jumlahHari := 31;
    
    // Bulan 4,6,9,11 = 30 hari
    4, 6, 9, 11: jumlahHari := 30;
    
    // Bulan 2 membutuhkan pengecekan tahun kabisat terlebih dahulu
    2: 
      begin
        // 2. Cek Tahun Kabisat menggunakan operator mod
        // Habis dibagi 400 ATAU (habis dibagi 4 tetapi tidak habis dibagi 100)
        if (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0)) then
          jumlahHari := 29 // Kabisat
        else
          jumlahHari := 28; // Bukan Kabisat
      end;
    else
      writeln('Nomor bulan salah! Harap masukkan angka 1-12.');
  end;
  
  // Cetak hasil jumlah hari ke layar jika input bulan benar
  if (bulan >= 1) and (bulan <= 12) then
  begin
    writeln('Jumlah Hari pada bulan tersebut adalah: ', jumlahHari, ' hari.');
  end;
  
  readln;
end.