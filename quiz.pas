program dimas;
uses crt;


var  
x, y : boolean;

begin
clrscr;
x := true;
y := false;

writeln('x and y: ', x and y);
writeln('x or y: ', x or y);
writeln('Not x: ', Not x);
writeln('x Xor y: ', x Xor y);
end.