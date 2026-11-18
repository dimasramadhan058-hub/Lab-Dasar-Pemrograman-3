program dimas;
uses crt;

var 
angka:integer;
pAngka:^integer;

begin 
angka:=10;

pAngka:=@angka;

writeln('nilai angka nya: ', angka);
writeln('nilai pointernya: ', pAngka^);

end.