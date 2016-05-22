unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TFlatButtonUnit, jpeg, ExtCtrls, TFlatEditUnit,
  TFlatGroupBoxUnit;

type
  TForm2 = class(TForm)
    FlatButton1: TFlatButton;
    FlatButton2: TFlatButton;
    FlatButton3: TFlatButton;
    FlatButton4: TFlatButton;
    Memo1: TMemo;
    Image1: TImage;
    procedure FlatButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FlatButton1Click(Sender: TObject);
var
qdt:String;
begin


qdt:=inputbox('Atenção','Quantidade de dados para o calculo?','');

end;

end.
