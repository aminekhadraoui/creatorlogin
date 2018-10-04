program creator_site;
uses wincrt;
type
tab=array[1..90]of string;
var
t:tab;
f:text;
procedure login (var t:tab);
var
ch,ch1,ch2,ch3,ch4,ch5:string;
begin

t[1]:='<!DOCTYPE html>';
t[2]:='<html>';
t[3]:='<head>';
t[4]:='<meta name="viewport" content="width=device-width, initial-scale=1">';
t[5]:='<style>';
t[6]:='body {font-family: Arial, Helvetica, sans-serif;}';
writeln('donner le coleur du cadre');
readln(ch);
t[7]:='form {border: 3px solid #'+ch+';}';
t[8]:='input[type=text], input[type=password] {';
t[9]:='    width: 100%;';
t[10]:='    padding: 12px 20px;';
t[11]:='    margin: 8px 0;';
t[12]:='    display: inline-block;';
t[13]:='    border: 1px solid #ccc;';
t[14]:='    box-sizing: border-box;';
t[15]:='}';
writeln('donner le coleur du button');
readln(ch1);
writeln('donner le coleur du text de button');
readln(ch2);
t[16]:='button {';
t[17]:='    background-color: #'+ch1+';';
t[18]:='    color: '+ch2+';';
t[19]:='    padding: 14px 20px;';
t[20]:='    margin: 8px 0;';
t[21]:='    border: none;';
t[22]:='    cursor: pointer;';
t[23]:='    width: 100%;';
t[24]:='}';
t[25]:='button:hover {';
t[26]:='    opacity: 0.8;';
t[27]:='}';
writeln('donner le coleur du button de cancel');
readln(ch3);
t[28]:='.cancelbtn {';
t[29]:='    width: auto;';
t[30]:='    padding: 10px 18px;';
t[31]:='    background-color: #'+ch3+';';
t[32]:='}';
t[33]:='.imgcontainer {';
t[34]:='    text-align: center;';
t[35]:='    margin: 24px 0 12px 0;';
t[36]:='}';
t[37]:='img.avatar {';
t[38]:='    width: 40%;';
t[39]:='    border-radius: 50%;';
t[40]:='}';
t[41]:='.container {';
t[42]:='    padding: 16px;';
t[43]:='}';
t[44]:='span.psw {';
t[45]:='    float: right;';
t[46]:='    padding-top: 16px;';
t[47]:='}';
t[48]:='/* Change styles for span and cancel button on extra small screens */';
t[49]:='@media screen and (max-width: 300px) {';
t[50]:='    span.psw {';
t[51]:='       display: block;';
t[52]:='       float: none;';
t[53]:='    }';
t[54]:='    .cancelbtn {';
t[55]:='       width: 100%;';
t[56]:='    }';
t[57]:='}';
t[58]:='</style>';
t[59]:='</head>';
t[60]:='<body>';
writeln('donner le nom du form');
readln(ch4);
t[61]:='<h2>'+ch4+'</h2>';
t[62]:='<form action="/action_page.php">';
t[63]:='  <div class="imgcontainer">';
writeln('donner le nom d avatar pour le form');
readln(ch5);
t[64]:='    <img src="'+ch5+'" alt="Avatar" class="avatar">';
t[65]:='  </div>';
t[66]:='  <div class="container">';
t[67]:='    <label for="uname"><b>Username</b></label>';
t[68]:='    <input type="text" placeholder="Enter Username" name="uname" required>';
t[69]:='    <label for="psw"><b>Password</b></label>';
t[70]:='    <input type="password" placeholder="Enter Password" name="psw" required>';
t[71]:='   <button type="submit">Login</button>';
t[72]:='    <label>';
t[73]:='      <input type="checkbox" checked="checked" name="remember"> Remember me';
t[74]:='    </label>';
t[75]:='  </div>';
t[76]:='  <div class="container" style="background-color:#f1f1f1">';
t[77]:='    <button type="button" class="cancelbtn">Cancel</button>';
t[78]:='    <span class="psw">Forgot <a href="#">password?</a></span>';
t[79]:='  </div>';
t[80]:='</form>';
t[81]:='</body>';
t[82]:='</html>';
end;
procedure remplire (var f:text;t:tab);
var
i:integer;
begin
rewrite(f);
for i:=1 to 82 do
begin
writeln(f,t[i]);
end;

end;

begin
assign(f,'loginform.html');
login(t);
remplire(f,t);
close(f);
end.