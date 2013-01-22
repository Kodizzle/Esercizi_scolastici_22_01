program primo;

(*
 * Un programma che legga 3 vettori di n dimensione, e ne stampi la somma degli elementi ( singolarmente per vettore )
 * se l'elemento è > 0
 *)

const MAX = 10;

var v1,v2,v3:array[1..MAX] of real;

procedure leggiVettoreReale(var v:array of real);
var i:integer;
begin
	for i := 1 to MAX do begin
		write('inserisci l''elemento ',i,' :');
		readln(v[i]);
	end;
end;

function sommaTuttiElementi(v:array of real):real;
var r:real;
    i:integer;
begin
	r := 0;
	for i := 1 to MAX do
		if v[i] > 0 then
			r := r + v[i];
	sommaTuttiElementi := r;
end;

begin
	leggiVettoreReale(v1);
	leggiVettoreReale(v2);
	leggiVettoreReale(v3);

	writeln('la somma del primo vettore e'' ',sommaTuttiElementi(v1));
	writeln('la somma del secondo vettore e'' ',sommaTuttiElementi(v2));
	writeln('la somma del terzo vettore e'' ',sommaTuttiElementi(v3));
	
end.
