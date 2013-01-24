program bonus;

const m = 10;

type vettoreIntero = array[1..m] of integer;

var posNow,buff,c:integer;
    v1:vettoreIntero;
procedure makeDefault(var v:vettoreIntero);
var i:integer;
begin
	for i := 1 to m do
		v[i] := 0;
end;

procedure push(var v:vettoreIntero;var elemento, posizione:integer);
begin
	posizione := posizione + 1;
	if ( posizione <= m ) then
		v[posizione] := elemento;
end;

procedure pop(var v:vettoreIntero;var posizione:integer);
begin
	v[posizione] := 0;
	if posizione > 1 then
		posizione := posizione - 1;
end;
procedure stampaVettore(v:vettoreIntero);
var i:integer;
begin
	for i := 1 to m do
		write(' ', v[i], ' ');
	writeln;
end;

begin
	makeDefault(v1);
	posNow := 0;
repeat
	writeln('                 .,-:;//;:=,');
	writeln('          . :H@@@MM@M#H/.,+%;,');
	writeln('       ,/X+ +M@@M@MM%=,-%HMMM@X/,');
	writeln('     -+@MM; $M@@MH+-,;XMMMM@MMMM@+-');
	writeln('    ;@M@@M- XM@X;. -+XXXXXHHH@M@M#@/.');
	writeln('  ,%MM@@MH ,@%=             .---=-=:=,.');
	writeln('  =@#@@@MX.,                -%HX$$%%%:;');
	writeln(' =-./@M@M$                   .;@MMMM@MM:');
	writeln(' X@/ -$MM/                    . +MM@@@M$');
	writeln(',@M@H: :@:                    . =X#@@@@-');
	writeln(',@@@MMX, .                    /H- ;@M@M=');
	writeln('.H@@@@M@+,                    %MM+..%#$.');
	writeln(' /MMMM@MMH/.                  XM@MH; =;');
	writeln('  /%+%$XHH@$=              , .H@@@@MX,');
	writeln('   .=--------.           -%H.,@@@@@MX,');
	writeln('   .%MM@@@HHHXX$$$%+- .:$MMX =M@@MM%.');
	writeln('     =XMMM@MM@MM#H;,-+HMM@M+ /MMMX=');
	writeln('       =%@M@M#@$-.=$@MM@@@M; %M%=');
	writeln('         ,:+$+-,/H#MMMMMMM@= =,');
	writeln('               =++%%%%+/:-.');
	write('Vettore attuale: ');
	stampavettore(v1);
	writeln('1. Aggiungi elemento       2. Elimina ultimo elemento');
	write('fai la tua scelta: ');
	readln(c);
	if ( c = 1 ) then begin
		writeln('inserisci l''elemento: ');
		readln(buff);
		if posNow >= m then begin
			writeln('Buffer Overflow trovato, uso l''ultima posizione');
			posNow := m;
		end;
		push(v1, buff, posNow);
	end;
	if ( c = 2 ) then
		pop(v1, posNow);
			
until c = 0;
	writeln('ciao e grazie :D');
end.
