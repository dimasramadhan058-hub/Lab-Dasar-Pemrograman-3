program Soal7;
uses crt;

var
  jenis: char;
  lamaJam: integer;
  tarif: longint;

begin
  clrscr;
  // Meminta input kode kendaraan dan lama durasi parkir
  write('Masukkan Kode Kendaraan (M/K/B): '); 
  readln(jenis);
  write('Masukkan Lama Parkir (jam)     : '); 
  readln(lamaJam);
  
  // Mengubah input huruf kecil menjadi kapital agar seragam
  jenis := upcase(jenis);
  tarif := 0;
  
  // Menentukan tarif dasar menggunakan struktur 'case-of'
  case jenis of
    'M': // Mobil
      begin
        if lamaJam > 10 then
          tarif := 30000 // Tarif Maksimal Flat
        else if lamaJam >= 1 then
          tarif := 5000 + ((lamaJam - 1) * 3000);
      end;
    'K': // Motor
      begin
        if lamaJam > 10 then
          tarif := 10000 // Tarif Maksimal Flat
        else if lamaJam >= 1 then
          tarif := 2000 + ((lamaJam - 1) * 1000);
      end;
    'B': // Bus
      begin
        if lamaJam > 10 then
          tarif := 50000 // Tarif Maksimal Flat
        else if lamaJam >= 1 then
          tarif := 10000 + ((lamaJam - 1) * 5000);
      end;
    else
      writeln('Kode kendaraan tidak valid!');
  end;
  
  // Menampilkan hasil perhitungan jika kode valid
  if (jenis = 'M') or (jenis = 'K') or (jenis = 'B') then
  begin
    writeln('Total Tarif Parkir             : Rp', tarif);
  end;
  
  readln;
end.