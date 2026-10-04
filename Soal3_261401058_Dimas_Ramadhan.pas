program Soal3;
uses crt;

var 
n, pilihan, i:integer;

begin
clrscr;
//meminta batas akhir deret
write ('masukkan nilai n: ');
readln(n);

//meminta pilihan kategori deret
writeln('pilih kategori deret: ');
writeln('1. ganjil');
writeln('2. genap');
write('pilihan: ');
readln(pilihan);

writeln;
writeln('hasil penyaringan: ');

//memulai perulangan dari angka 1
i:=1;

//mengulang angka sampai n
while i <= n do
begin 
//melewati angka yang merupakan kelipatan 5
if i mod 5 = 0 then
begin 
i:= i+1;
continue;
end;

//jika memilih kategori ganjil, lewati angka genap
if pilihan = 1 then
begin 
if 1 mod 2 = 0 then
begin 
i := i+1;
continue;
end;
end

//jika memilih kategori genap, lewati angka ganjil
else if pilihan = 2 then 
begin 
if i mod 2 <> 0 then 
begin 
i := i + 1;
continue;
end;
end;

//menampilkan angka yang lolos penyaringan 
write(i,' ');
i:=i+1;
end;

writeln;
readln;
end.