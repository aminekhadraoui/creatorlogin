program ex;
uses wincrt;
var
f:text;
filename:string;
procedure readnamefile (var f:text;var filename:string);
begin
writeln('Put the name of the file to check :');
readln(filename);
assign(f,filename);
end;
procedure sql(var f:text;filename:string);
var
ch2,ch:string;
v:boolean;
begin
v:=true;
ch2:='mysqli_real_escape_string';
writeln('sql');
reset(f);
while not(eof(f))do
begin
readln(f,ch);
if (pos(ch2,ch)<>0) then
v:=false;
end;
if (v=true) then
begin
writeln('file :',filename,' is affected !');
end
else
writeln('file :',filename,' not affected');
end;

procedure xss(var f:text;filename:string);
var
ch2,ch:string;
v:boolean;
begin
v:=true;
ch2:='htmlspecialchars';
writeln('XSS :');
reset(f);
while not(eof(f))do
begin
readln(f,ch);
if ((pos(ch2,ch)<>0) or (pos('htmlentities',ch)<>0) or (pos('strip_tags',ch)<>0) )  then
v:=false;
end;
if (v=true) then
begin
writeln('file :',filename,' is affected !');
end
else
writeln('file :',filename,' not affected');
end;



begin
readnamefile(f,filename);
sql(f,filename);
xss(f,filename);
close(f);
end.