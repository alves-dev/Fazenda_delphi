unit Unit_Status;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBCustomDataSet, IBTable,
  IBDatabase, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Unit_Modulo, Unit_Class_Status;

type
  TForm_Status = class(TForm)
    SB_Novo: TSpeedButton;
    SB_Limpar: TSpeedButton;
    SB_Cancelar: TSpeedButton;
    SB_Salvar: TSpeedButton;
    SB_Excluir: TSpeedButton;
    DBGrid_Status: TDBGrid;
    Edit_Codigo: TEdit;
    Edit_Status: TEdit;
    SB_Alterar: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure SB_NovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SB_SalvarClick(Sender: TObject);
    procedure SB_LimparClick(Sender: TObject);
    procedure SB_AlterarClick(Sender: TObject);
    procedure DBGrid_StatusDblClick(Sender: TObject);
    procedure DBGrid_StatusKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SB_ExcluirClick(Sender: TObject);
    procedure SB_CancelarClick(Sender: TObject);
    procedure DBGrid_StatusKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_StatusKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    modl: TDataModule1;
    statu: Status;

    procedure carregarGrid;
    procedure limparEdit;
    procedure focusGrid;

  public
    { Public declarations }
  end;

var
  Form_Status: TForm_Status;
  Alterar: Boolean; // usado no botão alterar

implementation

{$R *.dfm}
{ TForm_Status }

procedure TForm_Status.carregarGrid;
begin
  modl.IBDataSet_Status.Close;
  modl.IBDataSet_Status.SelectSQL.Text := 'select * from STATUS';
  modl.IBDataSet_Status.Open;
end;

procedure TForm_Status.DBGrid_StatusDblClick(Sender: TObject);
begin
  focusGrid;
end;

procedure TForm_Status.DBGrid_StatusKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  focusGrid;

end;

procedure TForm_Status.DBGrid_StatusKeyPress(Sender: TObject; var Key: Char);
begin
  focusGrid;
end;

procedure TForm_Status.DBGrid_StatusKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  focusGrid;
end;

procedure TForm_Status.focusGrid;
begin
  DBGrid_Status.SetFocus;

  Edit_Codigo.Text := DBGrid_Status.Columns[0].Field.Text;
  Edit_Status.Text := DBGrid_Status.Columns[1].Field.Text;
end;

procedure TForm_Status.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  modl.Destroy;
  statu.destrua_Status;
  Form_Status.Close;
end;

procedure TForm_Status.FormShow(Sender: TObject);
begin
  modl := TDataModule1.Create(nil);
  carregarGrid;

  self.DBGrid_Status.DataSource := modl.DataSource_Status;

  // iniciar instancia
  statu := Status.Create;
  statu.classStatus;
end;

procedure TForm_Status.limparEdit;
begin
  Edit_Status.Text := '';
  Edit_Codigo.Text := '';
end;

procedure TForm_Status.SB_AlterarClick(Sender: TObject);
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

procedure TForm_Status.SB_CancelarClick(Sender: TObject);
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

  statu.classStatus;
end;

procedure TForm_Status.SB_ExcluirClick(Sender: TObject);
begin

  if Edit_Codigo.Text <> '' then
  begin

    statu.setCod_status(StrToInt(Edit_Codigo.Text));

    if not modl.IBTransaction1.Active then
      modl.IBTransaction1.StartTransaction;

    modl.IBDataSet_Status.Close;
    modl.IBDataSet_Status.Open;

    modl.IBDataSet_Status.Edit;

    modl.IBDataSet_StatusCOD_STATUS.Value := statu.getCod_status;

    modl.IBDataSet_Status.Delete;

    modl.IBTransaction1.Commit;
    carregarGrid;

    limparEdit;
    statu.classStatus;
  end;
end;

procedure TForm_Status.SB_LimparClick(Sender: TObject);
begin
  limparEdit;

end;

procedure TForm_Status.SB_NovoClick(Sender: TObject);
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

procedure TForm_Status.SB_SalvarClick(Sender: TObject);
begin

  if Alterar = true then
    statu.setCod_status(StrToInt(Edit_Codigo.Text));

  statu.setStatus(Edit_Status.Text);

  if not modl.IBTransaction1.Active then
    modl.IBTransaction1.StartTransaction;

  modl.IBDataSet_Status.Close;
  modl.IBDataSet_Status.Open;

  if statu.getCod_status = 0 then
  begin
    modl.IBDataSet_Status.Insert;
  end
  else
  begin
    modl.IBDataSet_Status.Edit;
  end;

  modl.IBDataSet_StatusCOD_STATUS.Value := statu.getCod_status;
  modl.IBDataSet_StatusSTATUS.Value := statu.getStatus;

  modl.IBDataSet_Status.Post;
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
  statu.classStatus;
end;

end.
