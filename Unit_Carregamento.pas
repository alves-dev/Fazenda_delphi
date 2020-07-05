unit Unit_Carregamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls;

type
  TForm_Carregamento = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    barra: TProgressBar;
    Lb_porcentagen: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Carregamento: TForm_Carregamento;

implementation

{$R *.dfm}
{ TForm_Carregamento }

uses Unit_Login;

procedure TForm_Carregamento.Timer1Timer(Sender: TObject);
begin
  barra.Position := barra.Position + 1;
  Lb_porcentagen.Caption := IntToStr(barra.Position) + '%';

  if barra.Position = 100 then

  begin
    try
      Form_Carregamento.Destroy;
      Application.CreateForm(TForm_Login, Form_Login);
      Form_Login.ShowModal;
    finally
      Form_Login.Free;
    end;

  end;

end;

end.
