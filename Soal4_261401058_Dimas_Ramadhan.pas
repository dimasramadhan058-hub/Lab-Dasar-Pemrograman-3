program Soal4;

var
  pilihan: integer;
  a, b: real;
  hasil: real;
  hasilDiv, hasilMod: integer;
  ulang: char;

begin
  repeat
    // Menampilkan menu operasi kalkulator
    writeln('===== KALKULATOR =====');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi: ');
    readln(pilihan);

    // Meminta dua angka yang akan dihitung
    write('Masukkan angka pertama: ');
    readln(a);

    write('Masukkan angka kedua: ');
    readln(b);

    writeln;

    // Menentukan operasi berdasarkan pilihan pengguna
    case pilihan of
    1:
     begin
      // Melakukan operasi penjumlahan
      hasil := a + b;
      writeln('Hasil = ', hasil:0:2);
     end;

    2:
    begin
      // Melakukan operasi pengurangan
      hasil := a - b;
      writeln('Hasil = ', hasil:0:2);
    end;

    3:
    begin
      // Melakukan operasi perkalian
      hasil := a * b;
      writeln('Hasil = ', hasil:0:2);
    end;

    4:
    begin
      // Memastikan pembagi tidak sama dengan nol
      if b <> 0 then
      begin
        hasil := a / b;
        writeln('Hasil = ', hasil:0:2);
      end
      else
        writeln('Error: Tidak dapat membagi dengan nol.');
    end;

    5:
    begin
      // Mengubah nilai real menjadi integer untuk operasi DIV dan MOD
      hasilDiv := trunc(a) div trunc(b);
      hasilMod := trunc(a) mod trunc(b);

      writeln('Hasil DIV = ', hasilDiv);
      writeln('Hasil MOD = ', hasilMod);
    end;

    else
      // Menampilkan pesan jika pilihan tidak tersedia
      writeln('Pilihan tidak valid.');
    end;

    writeln;

    // Menanyakan apakah pengguna ingin melakukan perhitungan lagi
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);
    writeln;

  // Perulangan berhenti jika pengguna memilih T
  until (ulang = 'T') or (ulang = 't');

  writeln('Program selesai.');
  readln;
end.