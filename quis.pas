 program task;
uses crt;

var 
 nama: string;
 uang_awal, harga_makanan, harga_minuman: longint;
 total_pengeluaran, sisa_uang: longint;

begin 
   clrscr;
   writeln('program menghitung sisa uang mahasiswa');

   writeln('masukkan nama mahasiswa : ');
   readln(nama);
   writeln('masukkan uang awal : ');
   readln(uang_awal);
   writeln('masukkan harga makanan : ');
   readln(harga_makanan);
   writeln('masukkan harga minuman : ');
   readln(harga_minuman);

   total_pengeluaran := (harga_makanan+harga_minuman);
   sisa_uang := (uang_awal-total_pengeluaran);
   writeln;
   writeln('total_pengeluaran: ', total_pengeluaran);
   writeln('sisa_uang ', nama, 'adalah : ', sisa_uang);

end.