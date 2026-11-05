program FaktorialRekursif;
uses crt;

function faktorial(n: integer): longint;
begin
    if (n = 0) or (n = 1) then
        faktorial := 1
    else
        faktorial := n * faktorial(n - 1);
end;

var
    nilai: integer;
begin
    clrscr;
    write('Input  Nilai : '); 
    readln(nilai);
    writeln('Output -> Hasil : ', faktorial(nilai));
    readln;
end.