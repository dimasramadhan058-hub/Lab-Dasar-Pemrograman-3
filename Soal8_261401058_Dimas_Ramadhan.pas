program Soal8;
uses crt;

var
  golongan: char;
  jamKerja, jamLembur: integer;
  gajiPokok, lembur, bonus, totalGaji: real;

begin
  clrscr;
  // Input Golongan dan total Jam Kerja dalam seminggu
  write('Masukkan Golongan Karyawan (A/B/C): '); 
  readln(golongan);
  write('Masukkan Jumlah Jam Kerja/Minggu  : '); 
  readln(jamKerja);
  
  golongan := upcase(golongan);
  gajiPokok := 0;
  lembur := 0;
  bonus := 0;
  
  // Menentukan Gaji Pokok berdasarkan Golongan
  case golongan of
    'A': gajiPokok := 1500000;
    'B': gajiPokok := 2000000;
    'C': gajiPokok := 2500000;
    else 
      begin
        writeln('Golongan tidak valid!');
        exit; // Menghentikan program jika input salah
      end;
  end;
  
  // 1. Hitung jam lembur jika jam kerja standar (> 40 jam) terlewati
  if jamKerja > 40 then
  begin
    jamLembur := jamKerja - 40;
    lembur := jamLembur * 20000; // Tarif lembur Rp20.000/jam
  end;
  
  // 2. Khusus Golongan 'C', jika total jam kerja > 50 jam diberi bonus tambahan
  if (golongan = 'C') and (jamKerja > 50) then
  begin
    bonus := 100000; // Bonus Rp100.000
  end;
  
  // Hitung Total Gaji Akhir
  totalGaji := gajiPokok + lembur + bonus;
  
  // Tampilkan seluruh rincian komponen pendapatan ke layar
  writeln;
  writeln('--- Rincian Gaji Karyawan ---');
  writeln('Gaji Pokok : Rp', gajiPokok:0:0);
  writeln('Lembur     : Rp', lembur:0:0);
  writeln('Bonus      : Rp', bonus:0:0);
  writeln('-----------------------------');
  writeln('Total Gaji : Rp', totalGaji:0:0);
  
  readln;
end.