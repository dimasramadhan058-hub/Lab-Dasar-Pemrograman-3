program dimas;
uses crt;

var 
jenis_film, hari, jumlah_tiket: integer;
harga_dasar, harga_per_tiket, harga_awal, diskon, total_bayar: real;

begin
clrscr;

writeln('pilih jenis film : ');
writeln('1. Reguler (Rp30.000)');
writeln('2. 3D (Rp45.000)');
writeln('3. IMAX (Rp60.000)');
writeln('masukkan pilihan jenis film : ');
readln(jenis_film);

writeln('pilih hari: ');
writeln('1. senin-kamis ');
writeln('2. jumat ');
writeln('3. sabtu-minggu ');
writeln('masukkan pilihan hari (1-3) : ');
readln(hari);

writeln('masukkan jumlah tiket: ');
readln(jumlah_tiket);


case jenis_film of
1: harga_dasar :=30000;
2 : harga_dasar :=45000;
3 : harga_dasar :=60000;
else
begin
writeln('pilihan jenis film tidak valid');
readln;
exit;
end;
end;

case hari of
1: harga_per_tiket:= harga_dasar;
2: harga_per_tiket:= harga_dasar+5000;
3: harga_per_tiket:= harga_dasar+10000;
else 
begin 
writeln('pilihan hari tidak valid');
readln;
exit;
end;
end;

harga_awal := harga_per_tiket * jumlah_tiket;

if harga_awal >=200000 then
diskon:= 0.10*harga_awal
else if harga_awal>=100000 then
diskon:=0.05*harga_awal
else
diskon:=0;


total_bayar := harga_awal-diskon;

writeln;
writeln('harga awal : Rp ', harga_awal:0:0);
writeln('diskon : Rp ', diskon:0:0);
writeln('total bayar : Rp ', total_bayar:0:0);

readln;
end.