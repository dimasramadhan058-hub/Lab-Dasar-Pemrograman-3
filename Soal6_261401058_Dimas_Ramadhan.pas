program Soal6;
uses crt;

var
  tugas, uts, uas, nilaiAkhir, kehadiran: real;
  status: string;
  indeks: char;

begin
  clrscr;
  // Input komponen nilai dan persentase kehadiran dari pengguna
  write('Masukkan Nilai Tugas: '); 
  readln(tugas);
  write('Masukkan Nilai UTS  : '); 
  readln(uts);
  write('Masukkan Nilai UAS  : ');
   readln(uas);
  write('Masukkan Persentase Kehadiran (%): '); 
  readln(kehadiran);
  
  // 1. Hitung Nilai Akhir berdasarkan bobot (Tugas 30%, UTS 30%, UAS 40%)
  nilaiAkhir := (0.3 * tugas) + (0.3 * uts) + (0.4 * uas);
  
  // 2. Tentukan status LULUS jika Nilai Akhir >= 60 DAN Kehadiran >= 80%
  if (nilaiAkhir >= 60) and (kehadiran >= 80) then
    status := 'LULUS'
  else
    status := 'TIDAK LULUS';
    
  // 3. Tentukan Indeks Huruf berdasarkan rentang Nilai Akhir
  if nilaiAkhir >= 85 then
    indeks := 'A'
  else if nilaiAkhir >= 75 then
    indeks := 'B'
  else if nilaiAkhir >= 60 then
    indeks := 'C'
  else if nilaiAkhir >= 50 then
    indeks := 'D'
  else
    indeks := 'E';
    
  // Menampilkan seluruh hasil perhitungan ke layar
  writeln;
  writeln('=====================================');
  writeln('Nilai Akhir   : ', nilaiAkhir:0:2);
  writeln('Indeks Huruf  : ', indeks);
  writeln('Status Kuliah : ', status);
  readln;
end.