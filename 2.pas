program due;
const MAX = 5;
type vettore = array[1..MAX] of integer;

var v1:vettore;
procedure leggi(var v:vettore;dim:integer);
var b,i:integer;
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
	checkInt9 := TRUE;
	for i:= 1 to dim do
		if ( v[i] mod 9 <> 0 ) then
			checkInt9 := FALSE;
end;

begin
	leggi(v1,MAX);
	if ( checkInt9(v1,MAX)) then
		writeln('sono tutti multipli...')
	else
		writeln('no, sorry non sono multipli');
end.
