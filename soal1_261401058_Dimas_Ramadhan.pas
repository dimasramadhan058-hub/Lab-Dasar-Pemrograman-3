program Soal1;
uses crt;

var 
n, i : integer;
harga, total, diskon, totalbayar : real;

begin 
clrscr;
// meminta jumlah barang yang dibeli
write('masukkan jumlah barang: ');
readln(n);

// mengawali total belanja dari 0
total:=0;

//menginput harga setiap barang dan menjalankan totalnya
for i:=1 to n do 
begin 
write('masukkan harga barang ke-', i, ': Rp');
readln(harga);
total:=total+harga;
end;

// menentukan diskon berdasarkan total belanja 
if total < 100000 then 
diskon:=0
else if total < 500000 then 
diskon:= total * 0.10
else 
diskon := total * 0.20;

//menghitung total yang harus dibayar setelah diskon
totalbayar:= total-diskon;

//menampilkan rincian hasil belanja 
writeln;
writeln('total sebelum diskon: Rp', total:0:2);
writeln('besar diskon        : Rp', diskon:0:2);
writeln('total bayar akhir   : Rp', totalbayar:0:2);

readln;
end.