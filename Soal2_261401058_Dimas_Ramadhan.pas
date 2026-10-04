program Soal2;
uses crt;

var 
password:string;
percobaan:integer;
berhasil:boolean;

begin
clrscr;
//mengatur jumlah awal 
percobaan := 0;
berhasil := false;

//mengulang proses login sampai berhasil atau 3 kali percobaan
repeat
   percobaan := percobaan + 1;

   write('masukkan kata sandi: ');
   readln(password);

   //memeriksa apakah kata sandi yang dimasukkan benar
   if password = 'pascal123' then
   begin 
   writeln('login berhasil selamat datang');
   berhasil:=true;

   //menghentikan perulangan jika login berhasil
   break;
   end
   else
   writeln('kata sandi salah');

   until percobaan = 3;

   //menampilkan pesan jika pengguna gagal 3 kali
   if not berhasil then 
   writeln('akses ditolak! akun terkunci.');

   readln;

end.