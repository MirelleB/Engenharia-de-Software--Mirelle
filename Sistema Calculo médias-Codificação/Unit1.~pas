unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, ComCtrls, XPMan;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    XPManifest1: TXPManifest;
    Label2: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
progressbar1.Position:= 0;

while progressBar1.Position < 100 do
begin
 Progressbar1.Position:=Progressbar1.Position +10;
 case Progressbar1.Position of
 10:label2.caption:='Carregando.....';
 20:label2.caption:='Abrindo Arquivos.......';
 30: label2.Caption:='Inializando o Programa.......';
 end;
 form1.Update;
 sleep(500);
 end;

 form1.Update;
 sleep(200);

form1.Destroy;
form2.show;

end;

end.
