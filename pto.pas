program dimas;
uses crt;

var 
angka:integer;
p:^integer;
pp:^pinteger;

begin 

angka:=7;
p:=@angka;
pp:=@p;
writeln('angkanya: ', angka);
writeln('pointer 1: ', p^);
writeln('pointer to another pointer: ',pp^^);
end.