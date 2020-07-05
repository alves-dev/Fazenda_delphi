unit Unit_StatusPastos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Unit_Modulo,
  Unit_Class_StatusPastos, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm_StatusPastos = class(TForm)
    DBGrid_StatusPastos: TDBGrid;
    SB_Novo: TSpeedButton;
    SB_Limpar: TSpeedButton;
    SB_Cancelar: TSpeedButton;
    SB_Salvar: TSpeedButton;
    SB_Excluir: TSpeedButton;
    SB_Alterar: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit_Codigo: TEdit;
    Edit_Status: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SB_AlterarClick(Sender: TObject);
    procedure SB_CancelarClick(Sender: TObject);
    procedure SB_ExcluirClick(Sender: TObject);
    procedure SB_LimparClick(Sender: TObject);
    procedure SB_NovoClick(Sender: TObject);
    procedure SB_SalvarClick(Sender: TObject);
    procedure DBGrid_StatusPastosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_StatusPastosKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_StatusPastosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_StatusPastosDblClick(Sender: TObject);
  private
    { Private declarations }
    modl: TDataModule1;
    stapa: StatusPastos;

    procedure carregarGrid;
    procedure limparEdit;
    procedure focusGrid;

  public
    { Public declarations }
  end;

var
  Form_StatusPastos: TForm_StatusPastos;
  Alterar: Boolean; // usado no botão alterar

implementation

{$R *.dfm}
{ TForm_StatusPastos }

procedure TForm_StatusPastos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  modl.Destroy;
  stapa.destrua_StatusPastos;
  Form_StatusPastos.Close;
end;

procedure TForm_StatusPastos.FormShow(Sender: TObject);
begin
  modl := TDataModule1.Create(nil);
  carregarGrid;
  self.DBGrid_StatusPastos.DataSource := modl.DataSource_StatusPastos;

  // iniciar instancia
  stapa := StatusPastos.Create;
  stapa.classStatusPastos;
end;

procedure TForm_StatusPastos.carregarGrid;
begin
  modl.IBDataSet_StatusPastos.Close;
  modl.IBDataSet_StatusPastos.SelectSQL.Text := 'select * from STATUS_PASTOS';
  modl.IBDataSet_StatusPastos.Open;
end;

procedure TForm_StatusPastos.limparEdit;
begin
  Edit_Codigo.Text := '';
  Edit_Status.Text := '';
end;

procedure TForm_StatusPastos.DBGrid_StatusPastosDblClick(Sender: TObject);
begin
  focusGrid;
end;

procedure TForm_StatusPastos.DBGrid_StatusPastosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  focusGrid;
end;

procedure TForm_StatusPastos.DBGrid_StatusPastosKeyPress(Sender: TObject;
  var Key: Char);
begin
  focusGrid;
end;

procedure TForm_StatusPastos.DBGrid_StatusPastosKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  focusGrid;
end;

procedure TForm_StatusPastos.focusGrid;
begin
  DBGrid_StatusPastos.SetFocus;

  Edit_Codigo.Text := DBGrid_StatusPastos.Columns[0].Field.Text;
  Edit_Status.Text := DBGrid_StatusPastos.Columns[1].Field.Text;

end;

procedure TForm_StatusPastos.SB_AlterarClick(Sender: TObject);
begin
  if Edit_Codigo.Text <> '' then
  begin
    Alterar := true;

    Edit_Status.Enabled := true;
    Edit_Status.Color := clWindow;

    SB_Novo.Enabled := false;
    SB_Excluir.Enabled := false;
    SB_Alterar.Enabled := false;
    SB_Cancelar.Enabled := true;
    SB_Salvar.Enabled := true;
  end;
end;

procedure TForm_StatusPastos.SB_CancelarClick(Sender: TObject);
begin
  limparEdit;

  SB_Limpar.Enabled := false;
  SB_Salvar.Enabled := false;
  SB_Cancelar.Enabled := false;
  SB_Novo.Enabled := true;
  SB_Excluir.Enabled := true;
  SB_Alterar.Enabled := true;

  Edit_Codigo.Color := clScrollBar;
  Edit_Status.Color := clScrollBar;
  Edit_Status.Enabled := false;

  stapa.classStatusPastos;
end;

procedure TForm_StatusPastos.SB_ExcluirClick(Sender: TObject);
begin
  if Edit_Codigo.Text <> '' then
  begin

    stapa.setCod_status(StrToInt(Edit_Codigo.Text));

    if not modl.IBTransaction1.Active then
      modl.IBTransaction1.StartTransaction;

    modl.IBDataSet_StatusPastos.Close;
    modl.IBDataSet_StatusPastos.Open;

    modl.IBDataSet_StatusPastos.Edit;

    modl.IBDataSet_StatusPastosCOD_STATUS.Value := stapa.getCod_status;

    modl.IBDataSet_StatusPastos.Delete;

    modl.IBTransaction1.Commit;
    carregarGrid;

    limparEdit;
    stapa.classStatusPastos;
  end;
end;

procedure TForm_StatusPastos.SB_LimparClick(Sender: TObject);
begin
  limparEdit;
end;

procedure TForm_StatusPastos.SB_NovoClick(Sender: TObject);
begin
  limparEdit;

  Edit_Status.Color := clWindow;
  Edit_Status.Enabled := true;

  SB_Limpar.Enabled := true;
  SB_Salvar.Enabled := true;
  SB_Cancelar.Enabled := true;
  SB_Novo.Enabled := false;
  SB_Excluir.Enabled := false;
  SB_Alterar.Enabled := false;
end;

procedure TForm_StatusPastos.SB_SalvarClick(Sender: TObject);
begin

  if Alterar = true then
    stapa.setCod_status(StrToInt(Edit_Codigo.Text));

  stapa.setStatus(Edit_Status.Text);

  if not modl.IBTransaction1.Active then
    modl.IBTransaction1.StartTransaction;

  modl.IBDataSet_StatusPastos.Close;
  modl.IBDataSet_StatusPastos.Open;

  if stapa.getCod_status = 0 then
  begin
    modl.IBDataSet_StatusPastos.Insert;
  end
  else
  begin
    modl.IBDataSet_StatusPastos.Edit;
  end;

  modl.IBDataSet_StatusPastosCOD_STATUS.Value := stapa.getCod_status;
  modl.IBDataSet_StatusPastosSTATUS.Value := stapa.getStatus;

  modl.IBDataSet_StatusPastos.Post;
  modl.IBTransaction1.Commit;

  Alterar := false;

  SB_Salvar.Enabled := false;
  SB_Cancelar.Enabled := false;
  SB_Limpar.Enabled := false;
  SB_Novo.Enabled := true;
  SB_Excluir.Enabled := true;
  SB_Alterar.Enabled := true;

  Edit_Status.Enabled := false;
  Edit_Status.Color := clScrollBar;
  limparEdit;

  carregarGrid;
  stapa.classStatusPastos;
end;

end.
