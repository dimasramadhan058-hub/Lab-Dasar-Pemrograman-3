program Soal5;
uses crt;
var
  M, N, i, j: integer;
  nilai, total, rataRata: real;
  lulus, tidakLulus: integer;

begin
  clrscr;
  // Meminta jumlah mahasiswa dan jumlah tugas
  write('Masukkan jumlah mahasiswa: ');
  readln(M);

  write('Masukkan jumlah tugas: ');
  readln(N);

  // Mengawali jumlah mahasiswa lulus dan tidak lulus
  lulus := 0;
  tidakLulus := 0;

  writeln;
  writeln('===== HASIL NILAI MAHASISWA =====');

  // Perulangan untuk setiap mahasiswa
  for i := 1 to M do
  begin
    // Mengawali total nilai mahasiswa dari 0
    total := 0;

    writeln;
    writeln('Mahasiswa ke-', i);

    // Menginput nilai setiap tugas mahasiswa
    for j := 1 to N do
    begin
      write('Nilai tugas ke-', j, ': ');
      readln(nilai);
      total := total + nilai;
    end;

    // Menghitung rata-rata nilai mahasiswa
    rataRata := total / N;

    write('Rata-rata = ', rataRata:0:2);

    // Menentukan status kelulusan berdasarkan rata-rata
    if rataRata >= 65 then
    begin
      writeln(' -> LULUS');
      lulus := lulus + 1;
    end
    else
    begin
      writeln(' -> TIDAK LULUS');
      tidakLulus := tidakLulus + 1;
    end;
  end;

  // Menampilkan jumlah mahasiswa yang lulus dan tidak lulus
  writeln;
  writeln('===== REKAPITULASI =====');
  writeln('Total mahasiswa LULUS       : ', lulus);
  writeln('Total mahasiswa TIDAK LULUS : ', tidakLulus);

  readln;
end.