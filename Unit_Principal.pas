unit Unit_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.Menus,
  Vcl.Buttons;

type
  TForm_Principal = class(TForm)
    M_menu: TMainMenu;
    Fazenda: TMenuItem;
    Cadastros: TMenuItem;
    Relatrios: TMenuItem;
    Vendas: TMenuItem;
    Compras: TMenuItem;
    Fazenda2: TMenuItem;
    Status: TMenuItem;
    TipodeAnimais: TMenuItem;
    RacadeAnimais: TMenuItem;
    StatusPastos: TMenuItem;
    Pastos: TMenuItem;
    Vendas2: TMenuItem;
    Compras2: TMenuItem;
    SpeedButton1: TSpeedButton;
    procedure Fazenda2Click(Sender: TObject);

    procedure StatusClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure TipodeAnimaisClick(Sender: TObject);
    procedure StatusPastosClick(Sender: TObject);
    procedure RacadeAnimaisClick(Sender: TObject);
    procedure PastosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Principal: TForm_Principal;

implementation

{$R *.dfm}

uses Unit_Status, Unit_TipoAnimais, Unit_StatusPastos, Unit_RacaAnimais,
  Unit_Pastos;

procedure TForm_Principal.Fazenda2Click(Sender: TObject);
begin
  // Form_Animais.ShowModal;
  Form_Principal.Destroy;
end;

procedure TForm_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Halt(1);
end;

procedure TForm_Principal.PastosClick(Sender: TObject);
begin
  try
    Application.CreateForm(TForm_Pastos, Form_Pastos);
    Form_Pastos.ShowModal;
  finally
    Form_Pastos.Free;
  end;
end;

procedure TForm_Principal.RacadeAnimaisClick(Sender: TObject);
begin
  try
    Application.CreateForm(TForm_RacaAnimais, Form_RacaAnimais);
    Form_RacaAnimais.ShowModal;
  finally
    Form_RacaAnimais.Free;
  end;
end;

procedure TForm_Principal.TipodeAnimaisClick(Sender: TObject);
begin
  try
    Application.CreateForm(TForm_TipoAnimais, Form_TipoAnimais);
    Form_TipoAnimais.ShowModal;
  finally
    Form_TipoAnimais.Free;
  end;
end;

procedure TForm_Principal.StatusClick(Sender: TObject);
begin
  try
    Application.CreateForm(TForm_Status, Form_Status);
    Form_Status.ShowModal;
  finally
    Form_Status.Free;
  end;
end;

procedure TForm_Principal.StatusPastosClick(Sender: TObject);
begin
  try
    Application.CreateForm(TForm_StatusPastos, Form_StatusPastos);
    Form_StatusPastos.ShowModal;
  finally
    Form_StatusPastos.Free;
  end;
end;

end.
