program due;
(*
 * Copyleft none (c) 2013 Aperture Laboratories, Inc. All rights free.
 *
 * @TROLLING_LICENSE
 * This file contains Original code of this,if you want pirate free, 
 * You are a pirate.
 *
 *
 *
 * The latest innovation in human-developing interaction. Our scientist have
 * shown in extensive tests that humans operating our fail project  on their
 * PC experience 33% more joy in life while smimultaneosly the likelihood of
 * being maimed or killed by falling pace debris is significantly reduced.
 * Also preliminary human trial indicate that it might offer some protection
 * against lethal dosages of gamma radiation and blows to  the head  with  a
 * rodlike object
 *
 * Kodizzle <not(dot)kodizzle(at)gmail(dot)com>
 * 
 *)
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
