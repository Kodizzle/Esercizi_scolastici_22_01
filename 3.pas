program due;
const MAX = 5;
type vettore = array[1..MAX] of char;

var v1:vettore;
procedure leggi(var v:vettore;dim:integer);
var i:integer;
    b:char;
begin
	for i := 1 to dim do begin
		write('inserisci l''elemento ',i,' :');
		readln(b);
		v[i] := b;
	end;
end;

function checkInt9(v:vettore;dim:integer):boolean;
var i:integer;
begin
	checkInt9 := FALSE;
	for i:= 1 to dim do
		if ( v[i] = '*' ) then
			checkInt9 := TRUE;

end;

begin
	leggi(v1,MAX);
	if ( checkInt9(v1,MAX)) then
		writeln('c''e quel fottuto carattere,si');
	else
		writeln('no, sorry suvvia,non piangere');
end.
