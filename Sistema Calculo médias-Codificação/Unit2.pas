unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TFlatButtonUnit, jpeg, ExtCtrls, TFlatEditUnit,
  TFlatGroupBoxUnit,math, TFlatPanelUnit;

type
  TForm2 = class(TForm)
    FlatButton1: TFlatButton;
    FlatButton2: TFlatButton;
    FlatButton3: TFlatButton;
    FlatButton4: TFlatButton;
    FlatButton5: TFlatButton;
    FlatButton6: TFlatButton;
    Edit1: TEdit;
    di: TImage;
    FlatPanel1: TFlatPanel;
    Label2: TLabel;
    procedure FlatButton1Click(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure FlatButton5Click(Sender: TObject);
    procedure FlatButton2Click(Sender: TObject);
    procedure FlatButton3Click(Sender: TObject);
    procedure FlatButton4Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FlatButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure diClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  acu,acu2:Double;
  sema,cont,int,veri:Integer;
  vetor: array[1..20] of Double;
implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.FlatButton1Click(Sender: TObject);
var
qdt:String;
Media:Double;
begin
//showmessage(floattostr(acu));
//showmessage(inttostr(cont));
media:=acu/cont;
media:=strtofloat(formatfloat('#0.00',media));
label2.Caption:=floattostr(media);
//sema:=0;
//cont:=0;
//acu:=0;
flatbutton1.Enabled:=false;
flatbutton2.Enabled:=false;
flatbutton3.Enabled:=false;
flatbutton4.Enabled:=false;

//qdt:=inputbox('Atenção','Quantidade de dados para o calculo?','');
  //val (qdt , N, C);
     // if c = 0 then
        // begin
           //  Showmessage('Funcionando! vc te numeros');
           //end
           //else
           //showmessage('Digite apenas Numeros!');
end;

procedure TForm2.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
if (not(KEY in ['0'..'9',chr(8),chr(13),','])) and (KEY<>#0) then
begin
//showmessage('Soh eh permitido números!');
KEY := #0;
end;
if (key=#13)  then
flatbutton5.Click;
end;
procedure TForm2.FlatButton5Click(Sender: TObject);

begin

if (Edit1.Text='') or (edit1.Text='0') or (edit1.Text=',') or (edit1.Text='Digite os Dados')then
begin
showmessage('Dado inválido');
edit1.clear;
end
else
begin
cont:=cont+1;
if (sema=0)then
Begin
int:=1;
vetor[int]:=strtofloat(Edit1.Text);
//showmessage(floattostr(vetor[int]));
acu:=strtofloat(Edit1.Text);
acu2:=strtofloat(Edit1.Text);
//showmessage('Entrou');
Edit1.Clear;
sema:=1;
flatbutton1.Enabled:=True;
flatbutton2.Enabled:=True;
flatbutton3.Enabled:=True;
flatbutton4.Enabled:=True;
label2.Caption:='';
end
  else
  begin
  int:=int+1;
  vetor[int]:=strtofloat(Edit1.Text);
  //showmessage(floattostr(vetor[int]));
  //showmessage(inttostr(int));
acu:=acu+strtofloat(Edit1.Text);
acu2:= acu2*strtofloat(Edit1.Text);
Edit1.Clear;
flatbutton1.Enabled:=True;
flatbutton2.Enabled:=True;
flatbutton3.Enabled:=True;
flatbutton4.Enabled:=True;
label2.Caption:='';

end;
//label1.Caption:=floattostr(vetor[0]);
//label2.Caption:=floattostr(acu2);
end;
end;
procedure TForm2.FlatButton2Click(Sender: TObject);
var
media:Double;
begin
//showmessage(floattostr(acu2));
//showmessage(inttostr(cont));
media:= Power(acu2,1/cont);
label2.Caption:=floattostr(media);
//sema:=0;
//cont:=0;
//acu2:=1;
media:=strtofloat(formatfloat('#0.00',media));
label2.Caption:=floattostr(media);
flatbutton1.Enabled:=false;
flatbutton2.Enabled:=false;
flatbutton3.Enabled:=false;
flatbutton4.Enabled:=false;

end;

procedure TForm2.FlatButton3Click(Sender: TObject);
var
i:Integer;
soma,peso,media:Double;
nomevar : String;
N, C : integer;
begin
i:=1;
soma:=0;
while (i<=cont) do
begin

//showmessage(inttostr(cont));
//showmessage(floattostr(vetor[i]));
nomevar:=(inputbox('Atenção','Para a entrada '+floattostr(vetor[i])+'  Insera o peso',''));
val (nomevar , N, C);
if (c = 0) then
begin
peso:=strtofloat(nomevar);
end
else
begin

showmessage('Entrada invalida, Foi Digitado:'+(nomevar)+' Esperado apenas Números');
i:=0;
soma:=0;
end;
soma:=soma+vetor[i]*peso;
 i:=i+1;
end;

//showmessage(floattostr(soma));
media:=soma/cont;
media:=strtofloat(formatfloat('#0.00',media));
//showmessage(floattostr(media));
//showmessage(inttostr(cont));
//media:= Power(acu2,1/cont);
//label1.Caption:=floattostr(media);
//sema:=0;
//cont:=0;
//acu2:=1;
flatbutton1.Enabled:=false;
flatbutton2.Enabled:=false;
flatbutton3.Enabled:=false;
flatbutton4.Enabled:=false;
label2.Caption:=floattostr(media);
end;

procedure TForm2.FlatButton4Click(Sender: TObject);
var
i:Integer;
soma,peso,media:Double;
begin
i:=1;
soma:=0;
while (i<=cont) do
begin

//showmessage(inttostr(cont));
//showmessage(floattostr(vetor[i]));
//peso:=strtofloat(inputbox('Atenção','Insera o peso?',''));
soma:=soma+1/vetor[i];
 i:=i+1;
 end;
 media:=cont/soma;
//showmessage(floattostr(media));
media:=strtofloat(formatfloat('#0.00',media));
label2.Caption:=floattostr(media);
flatbutton1.Enabled:=false;
flatbutton2.Enabled:=false;
flatbutton3.Enabled:=false;
flatbutton4.Enabled:=false;
end;

procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if (not(KEY in ['0'..'9',chr(8),chr(13),','])) and (KEY<>#0) then
begin
KEY := #0;
//showmessage('aqui');
end;
  if (key in [DecimalSeparator]) and (Pos(DecimalSeparator, Edit1.Text) <> 0) then
    key := #0;

if (key=#13)  then
begin
flatbutton5.Click;
end;
 end;
 //else
  //KEY := #0;

procedure TForm2.FlatButton6Click(Sender: TObject);
var
i,contador:Integer;
dec:String;
begin
 if messagebox(handle,' Deseja Repetir com Novos Valores?','Atenção', mb_IconQuestion + mb_YesNo + mb_DefButton1 ) = idyes then
 begin
flatbutton1.Enabled:=false;
flatbutton2.Enabled:=false;
flatbutton3.Enabled:=false;
flatbutton4.Enabled:=false;
  i:=1;
contador:=20;
acu:=0;
acu2:=0;
  sema:=0;
  cont:=0;
  int:=0;
 while(i<=20)do
 begin

 vetor[i]:=0;
 i:=i+1;
 end;

   label2.Caption:='';
  end
  else
  if (acu=0) or (acu2=0) then
  showmessage(' O sistema não encontrou nenhum dado,Insira Valores Por favor')
  else
  begin
  flatbutton1.Enabled:=True;
flatbutton2.Enabled:=True;
flatbutton3.Enabled:=True;
flatbutton4.Enabled:=True;
label2.Caption:='';
end;

end;

procedure TForm2.FormShow(Sender: TObject);
begin
edit1.Enabled:=False;

edit1.Text:='Digite os Dados';
flatbutton1.Enabled:=false;
flatbutton2.Enabled:=false;
flatbutton3.Enabled:=false;
flatbutton4.Enabled:=false;

end;

procedure TForm2.FormCreate(Sender: TObject);
begin

DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);

    end;
procedure TForm2.Edit1Click(Sender: TObject);
begin

//edit1.Enabled:=True;
edit1.clear;

end;

procedure TForm2.Edit1Enter(Sender: TObject);
begin
if Edit1.Text = 'Informe o nome' then
Begin
Edit1.Clear;
Edit1.Font.Color:= clWindowText;
End;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
edit1.Font.Color:=clblack;
//edit1.Enabled:=True;
end;

procedure TForm2.diClick(Sender: TObject);
begin
edit1.Font.Color:=clSilver;
edit1.Enabled:=True;
end;

procedure TForm2.Edit1Exit(Sender: TObject);
begin

edit1.Text:='Digite os Dados';
edit1.Font.Color:=clSilver;
end;

end.
