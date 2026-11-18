program dimas;
uses crt;

var
angka:integer;
i:^word;
ptrangka:^integer;

begin 
clrscr;

angka:=10;
writeln('angkanya: ',angka);

ptrangka := @angka;
writeln(ptrangka^);

i:=addr(ptrangka);
writeln('alamat memorinya: ', i^);

end.