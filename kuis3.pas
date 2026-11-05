program DeretFibonacci;
uses crt;

procedure tampilkanFibonacci(n: integer);
var
    i: integer;
    f1, f2, f3: integer;
begin
    f1 := 1;
    f2 := 1;
    
 write('Output -> Deret Fibonacci : ');
 for i := 1 to n do
begin
if i = 1 then
 write(f1, ' ')
else if i = 2 then
 write(f2, ' ')
else
begin
 f3 := f1 + f2;
write(f3, ' ');
 f1 := f2;
 f2 := f3;
end;
end;
 writeln;
end;

var
    nilai: integer;
begin
    clrscr;
    write('Input -> Nilai : '); 
    readln(nilai);
    tampilkanFibonacci(nilai);
    readln;
end.