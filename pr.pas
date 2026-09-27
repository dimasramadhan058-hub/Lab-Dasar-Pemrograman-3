program dimas;
uses crt;

var 
makanan,jmlh_pesanan,status_pelanggan:integer;
harga_awal, diskon, total_harga, total_bayar:real;

begin
clrscr;

writeln('pilih menu makanan: ');
writeln('1. nasi goreng (Rp20.000)');
writeln('2. mie goreng (Rp18.000)');
writeln('3. ayam geprek (Rp25.000)');
writeln('4. steak (Rp50.000)');
writeln('masukkan pilihan menu');
readln(makanan);

writeln('masukkan jumlah pesanan: ');
readln(jmlh_pesanan);

writeln('status pelanggan');
writeln('1. member');
writeln('2. non member');
writeln('masukkan status pelanggan: ');
readln(status_pelanggan);

case makanan of
1:harga_awal:=20000;
2:harga_awal:=18000;
3:harga_awal:=25000;
4:harga_awal:=50000;
else
begin
writeln('pilihan menu tidak ada');
readln;
end;
end;

total_harga:=harga_awal*jmlh_pesanan;

if jmlh_pesanan<=0 then 
begin
writeln('jumlah pesanan tidak valid');
end

else if jmlh_pesanan>10 then
begin
writeln('pesanan terlalu banyak');
end

else if (status_pelanggan=1) and (total_harga>=100000) then
begin
diskon:=0.15*total_harga;
end

else if (status_pelanggan=1) and (total_harga>=50000) then
begin
diskon:=0.10*total_harga;
end

else if (status_pelanggan=1) and (total_harga<50000) then
begin
diskon:=0.05*total_harga;
end

else if (status_pelanggan=2) and (total_harga>=100000) then
begin
diskon:=0.05*total_harga;
end

else
begin
diskon:=0;
end;


total_bayar:=total_harga-diskon;

writeln;
writeln('harga makanan: Rp ', harga_awal:0:0);
writeln('total harga: Rp ',total_harga:0:0);
writeln('diskon: Rp ', diskon:0:0);
writeln('total yang harus dibayar: Rp ', total_bayar:0:0);

readln;
end.