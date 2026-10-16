program KuisKom;

var
  pilihan, skorTerakhir, skorTertinggi: integer;
  jawaban: char;
  benar, i, kunci: integer;
  pernahMain: boolean;

begin
  // Inisialisasi variabel
  pilihan := 0;
  skorTerakhir := 0;
  skorTertinggi := 0;
  pernahMain := false;

  // Menu utama berulang sampai pengguna memilih keluar
  repeat
    writeln('==============================');
    writeln('    KUIS PENGETAHUAN KOMPUTER');
    writeln('==============================');
    writeln('1. Mulai Kuis');
    writeln('2. Lihat Petunjuk');
    writeln('3. Lihat Skor dan Rekor');
    writeln('4. Keluar');
    write('Masukkan pilihan: ');
    readln(pilihan);

    // Menjalankan fitur sesuai pilihan menu
    case pilihan of

      1: begin
        benar := 0;

        writeln;
        writeln('===== MULAI KUIS =====');
        writeln('Pilih jawaban A, B, C, atau D.');
        writeln('Masukkan 0 jika ingin berhenti');
        writeln;

        // Mengulang pertanyaan sebanyak 5 kali
        for i := 1 to 5 do
        begin

          // Menampilkan soal berdasarkan nomor
          case i of
            1: begin
              writeln('1. Apa fungsi utama CPU?');
              writeln('A. Menampilkan gambar');
              writeln('B. Memproses instruksi');
              writeln('C. Mencetak dokumen');
              writeln('D. Menyimpan listrik');
              kunci := 2;
            end;

            2: begin
              writeln('2. Manakah yang termasuk sistem operasi?');
              writeln('A. Microsoft Word');
              writeln('B. Google Chrome');
              writeln('C. Windows');
              writeln('D. Microsoft Excel');
              kunci := 3;
            end;

            3: begin
              writeln('3. Perangkat input adalah...');
              writeln('A. Keyboard');
              writeln('B. Monitor');
              writeln('C. Speaker');
              writeln('D. Printer');
              kunci := 1;
            end;

            4: begin
              writeln('4. Perangkat untuk menampilkan gambar adalah...');
              writeln('A. Mouse');
              writeln('B. Monitor');
              writeln('C. Keyboard');
              writeln('D. Scanner');
              kunci := 2;
            end;

            5: begin
              writeln('5. Pascal merupakan bahasa...');
              writeln('A. Desain grafis');
              writeln('B. Pengolah kata');
              writeln('C. Pemrograman');
              writeln('D. Sistem operasi');
              kunci := 3;
            end;
          end;

          // Meminta jawaban dari pengguna
          write('Jawaban kamu (A/B/C/D): ');
          readln(jawaban);

          // Mengubah huruf kecil menjadi huruf besar
          case jawaban of
            'a': jawaban := 'A';
            'b': jawaban := 'B';
            'c': jawaban := 'C';
            'd': jawaban := 'D';
          end;

          // Menghentikan kuis jika pengguna memasukkan 0
          if jawaban = '0' then
          begin
            writeln('Kuis dihentikan.');
            break;
          end;

          // Memeriksa jawaban
          if ((kunci = 1) and (jawaban = 'A')) or
             ((kunci = 2) and (jawaban = 'B')) or
             ((kunci = 3) and (jawaban = 'C')) or
             ((kunci = 4) and (jawaban = 'D')) then
          begin
            writeln('Jawaban benar!');
            benar := benar + 1;
          end
          else
            writeln('Jawaban salah.');

          writeln;
        end;

        // Menghitung skor akhir
        skorTerakhir := benar * 20;
        pernahMain := true;

        // Memeriksa apakah skor menjadi rekor tertinggi
        if skorTerakhir > skorTertinggi then
        begin
          skorTertinggi := skorTerakhir;
          writeln('REKOR BARU! Skor tertinggi berhasil dipecahkan!');
        end;

        // Menampilkan hasil kuis
        writeln;
        writeln('===== HASIL KUIS =====');
        writeln('Jumlah jawaban benar: ', benar);
        writeln('Skor akhir: ', skorTerakhir);

        // Menampilkan komentar berdasarkan skor
        if (skorTerakhir >= 0) and
           (skorTerakhir <= 20) then
          writeln('Segini doang? Nenek gua lebih jago!')
        else if (skorTerakhir) <= 60 then
          writeln('KKM aja 70!')
        else if (skorTerakhir) <= 100 then
          writeln('Gelo, profesor!');

        writeln('Rekor skor tertinggi: ', skorTertinggi);
        writeln;
      end;

      2: begin
        // Menampilkan petunjuk kuis
        writeln;
        writeln('===== PETUNJUK KUIS =====');
        writeln('1. Kuis terdiri dari 5 pertanyaan');
        writeln('2. Pilih jawaban A, B, C, atau D');
        writeln('3. Setiap jawaban benar bernilai 20 poin');
        writeln('4. Masukkan 0 untuk menghentikan kuis');
        writeln;
      end;

      3: begin
        // Menampilkan skor terakhir dan rekor
        writeln;
        if pernahMain = true then
        begin
          writeln('Skor terakhir: ', skorTerakhir);
          writeln('Rekor tertinggi: ', skorTertinggi);
        end
        else
          writeln('Kamu belum pernah mengikuti kuis.');

        writeln;
      end;

      4: begin
        writeln('Terima kasih sudah bermain!');
      end;

    else
      // Menangani pilihan menu yang tidak valid
      writeln('Pilihan tidak valid. Silakan coba lagi.');
    end;

    writeln;

  until pilihan = 4;

  writeln('Program selesai.');
end.