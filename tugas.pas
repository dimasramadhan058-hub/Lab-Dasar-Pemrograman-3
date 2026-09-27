program dimas;
uses crt;

var 
IPK:real;
penghasilan_ortu, jmlh_prestasi:integer;

begin
clrscr;

writeln('masukkan nilai IPK : ');
readln(IPK);
writeln('masukkan penghasilan orang tua: ');
readln(penghasilan_ortu);
writeln('masukkan jumlah prestasi: ');
readln(jmlh_prestasi);

if (IPK>=3.75) and (penghasilan_ortu<=5000000) and (jmlh_prestasi>=2) then
begin 
writeln('beasiswa penuh');
end

else if (IPK>=3.50) and (penghasilan_ortu<=7000000) and (jmlh_prestasi>=1) then
begin
writeln('beasiswa sebagian');
end

else if IPK<2.75 then
begin  
writeln('IPK tidak memenuhi syarat');
end

else if penghasilan_ortu>7000000 then 
begin
writeln('penghasilan tidak memenuhi syarat');
end

else
begin 
writeln('tidak mendapat beasiswa');
end;

end.

