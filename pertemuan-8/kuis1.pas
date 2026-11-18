program HargaMakananPointer;
uses crt;

type
  TMakanan = record
    nama: string[50];
    harga: longint;
  end;
  PMakanan = ^TMakanan;

var
  daftar: array[1..100] of TMakanan;
  pTermahal, pTermurah: PMakanan;
  n, i: integer;

begin
  clrscr;
  write('Masukkan jumlah data makanan: ');
  readln(n);
  writeln;

  for i := 1 to n do
  begin
    writeln('Data Makanan ke-', i);
    write('  Nama Makanan  : '); 
    readln(daftar[i].nama);
    write('  Harga Makanan : Rp'); 
    readln(daftar[i].harga);
    writeln;
  end;

  pTermahal := @daftar[1];
  pTermurah := @daftar[1];

  for i := 2 to n do
  begin
    if daftar[i].harga > pTermahal^.harga then
      pTermahal := @daftar[i];

    if daftar[i].harga < pTermurah^.harga then
      pTermurah := @daftar[i];
      end;

  writeln('HASIL PENCARIAN');
  writeln('a. Makanan Termahal : ', pTermahal^.nama, ' (Rp', pTermahal^.harga, ')');
  writeln('b. Makanan Termurah : ', pTermurah^.nama, ' (Rp', pTermurah^.harga, ')');
  readln;
end.
