program CekPrima;
uses crt;

function isPrima(n: integer): boolean;
var
    i: integer;
    prima: boolean;
begin
if n <= 1 then
 prima := false
begin
 prima := true;
for i := 2 to trunc(sqrt(n)) do
begin
if n mod i = 0 then
begin
 prima := false;
 break;
end;
end;
end;
    isPrima := prima;
end;

var
    angka: integer;
begin
    clrscr;
    write('Input -> Angka : '); 
    readln(angka);
    
    write('Output -> ');
    if isPrima(angka) then
        writeln('Prima')
    else
        writeln('Non-Prima');
    readln;
end.