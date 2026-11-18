program DuaPointerSatuVariabel;
uses crt, sysutils;

var
  angka: integer;
  pointer1, pointer2: ^integer;

begin
  clrscr;
  angka := 100;

  pointer1 := @angka;
  pointer2 := @angka;

  writeln('a. Nilai variabel               : ', angka);
  writeln('b. Alamat variabel              : ', IntToHex(PtrUInt(@angka), 8));
  writeln('c. Nilai yang ditunjuk pointer1 : ', pointer1^);
  writeln('  Nilai yang ditunjuk pointer2 : ', pointer2^);
  
  readln;
end.