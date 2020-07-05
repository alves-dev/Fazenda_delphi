unit Unit_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm_Login = class(TForm)
    Edit_Usuario: TEdit;
    Edit_Senha: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Login: TForm_Login;

implementation

{$R *.dfm}

uses Unit_Principal;

procedure TForm_Login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Halt(1);
end;

procedure TForm_Login.SpeedButton1Click(Sender: TObject);
begin
  try
    Form_Login.Destroy;
    Application.CreateForm(TForm_Principal, Form_Principal);
    Form_Principal.ShowModal;
  finally
    Form_Principal.Free;
  end;

end;

procedure TForm_Login.SpeedButton2Click(Sender: TObject);
begin
  Edit_Usuario.Text := '';
  Edit_Senha.Text := '';
end;

procedure TForm_Login.SpeedButton3Click(Sender: TObject);
begin
  Form_Login.Destroy;
  Halt(1);
end;

end.
