program hit;
uses crt;

var 
a, b : integer;

begin 
clrscr;
a := 5;
b := 2;
writeln(' a And b: ', a And b);
writeln('a Or b: ', a Or b);
writeln('a Xor b: ', a Xor b);
writeln('not a: ', not a);
writeln('a shl b: ', a shl b);
writeln('a shr b: ', a shr b);
end.