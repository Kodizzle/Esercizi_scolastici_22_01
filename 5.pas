program cinque;

const DIM = 4;

type vett = array[1..DIM] of integer;

var v1:vett;
procedure leggi(var v:vett;dim:integer);
var b,i:integer;
begin
        for i := 1 to dim do begin
                write('inserisci l''elemento ',i,' :');
                readln(b);
                v[i] := b;
        end;
end;

procedure shiftDelete(var v:vett;pos1,dim:integer);
var m:integer;
begin
	pos1 := pos1 + 1;
	for m := pos1 to dim do
		v[pos1-1] := v[pos1];
	v[pos1] := 0;
end;
procedure stampa(var v:vett;dim:integer);
var i:integer;
begin
	for i := 1 to dim do
		write(' ',v[i],' ');
	writeln;
end;

procedure checkMerda(var v:vett;dim:integer);
var x,i:integer;
begin
	for i:=1 to dim do begin
		if (v[i] <= 0) then
			for x := i to dim do
				shiftDelete(v,x,dim);
	end;
end;

begin
	leggi(v1,dim);
	writeln('prima:');
	stampa(v1,dim);
	checkMerda(v1,dim);
	writeln('dopo:');
	stampa(v1,dim);
end.
		

