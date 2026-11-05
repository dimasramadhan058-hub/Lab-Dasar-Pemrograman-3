program dimas;
uses crt;

var 
kursi : array [1..100] of integer;
i, n : integer;

begin 
clrscr;

write ('masukkan batas index: ');
readln(n);

for i := 1 to n do 
begin 
write('masukkan index ke', i,' :');
readln(kursi[i]);
end;

for i :=1 to n do
begin 
write(kursi[i], ' ');
end;
writeln;

for i := n downto i do
begin 
write(kursi[i], ' ');
end;

end.