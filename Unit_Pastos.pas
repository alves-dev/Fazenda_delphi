unit Unit_Pastos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, unit_Modulo,
  Unit_class_Pastos,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ComCtrls, DateUtils;

type
  TForm_Pastos = class(TForm)
    DBGrid_Pastos: TDBGrid;
    SB_Novo: TSpeedButton;
    SB_Limpar: TSpeedButton;
    SB_Cancelar: TSpeedButton;
    SB_Salvar: TSpeedButton;
    SB_Excluir: TSpeedButton;
    SB_Alterar: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit_Codigo: TEdit;
    Edit_Descricao: TEdit;
    ComboBox_StatusPastos: TComboBox;
    Label4: TLabel;
    Edit_Area: TEdit;
    Date_Cadastro: TDateTimePicker;
    Date_DataAlteracao: TDateTimePicker;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SB_NovoClick(Sender: TObject);
    procedure SB_LimparClick(Sender: TObject);
    procedure SB_CancelarClick(Sender: TObject);
    procedure SB_AlterarClick(Sender: TObject);
    procedure SB_ExcluirClick(Sender: TObject);
    procedure SB_SalvarClick(Sender: TObject);
    procedure DBGrid_PastosDblClick(Sender: TObject);
    procedure DBGrid_PastosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_PastosKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_PastosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    modl: TDataModule1;
    pas: Pastos;

    procedure carregarGrid;
    procedure limparEdit;
    procedure focusGrid;
    procedure carregaStatusPastos;
  public
    { Public declarations }
  end;

var
  Form_Pastos: TForm_Pastos;
  Alterar: Boolean;

implementation

{$R *.dfm}
{ TForm_Pastos }

procedure TForm_Pastos.carregarGrid;
begin
  modl.IBDataSet_Pastos.Close;
  modl.IBDataSet_Pastos.SelectSQL.Text := 'select * from PASTOS';
  modl.IBDataSet_Pastos.Open;
end;

procedure TForm_Pastos.carregaStatusPastos;
var
  cod, descricao, status: String;
begin

  ComboBox_StatusPastos.Items.Clear;
  ComboBox_StatusPastos.Items.Add('Selecionar');
  ComboBox_StatusPastos.ItemIndex := 0;

  modl.IBDataSet_StatusPastos.Close;
  modl.IBDataSet_StatusPastos.SelectSQL.Text := 'select * from STATUS_PASTOS ';
  modl.IBDataSet_StatusPastos.Open;

  while not modl.IBDataSet_StatusPastos.Eof do
  begin

    cod := modl.IBDataSet_StatusPastos.FieldByName('cod_status').Value;
    descricao := modl.IBDataSet_StatusPastos.FieldByName('status').Value;
    status := cod + ' - ' + descricao;
    ComboBox_StatusPastos.Items.Add(status);
    modl.IBDataSet_StatusPastos.Next;
  end;

end;

procedure TForm_Pastos.DBGrid_PastosDblClick(Sender: TObject);
begin
  focusGrid;
end;

procedure TForm_Pastos.DBGrid_PastosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  focusGrid;
end;

procedure TForm_Pastos.DBGrid_PastosKeyPress(Sender: TObject; var Key: Char);
begin
  focusGrid;
end;

procedure TForm_Pastos.DBGrid_PastosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  focusGrid;
end;

procedure TForm_Pastos.focusGrid;
var
  temp: String;
begin
  DBGrid_Pastos.SetFocus;

  Edit_Codigo.Text := DBGrid_Pastos.Columns[0].Field.Text;
  Edit_Descricao.Text := DBGrid_Pastos.Columns[1].Field.Text;
  Edit_Area.Text := DBGrid_Pastos.Columns[4].Field.Text;
  Date_Cadastro.Date := StrToDate(DBGrid_Pastos.Columns[5].Field.Text);
  Date_DataAlteracao.Date := StrToDate(DBGrid_Pastos.Columns[6].Field.Text);

  temp := DBGrid_Pastos.Columns[3].Field.Text; // não funciona
  ComboBox_StatusPastos.Items.Add(temp);
end;

procedure TForm_Pastos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  modl.Destroy;
  pas.destrua_Pastos;
  Form_Pastos.Close;
end;

procedure TForm_Pastos.FormShow(Sender: TObject);
begin
  modl := TDataModule1.Create(nil);
  carregarGrid;

  self.DBGrid_Pastos.DataSource := modl.DataSource_Pastos;

  // iniciar instancia
  pas := Pastos.Create;
  pas.classPastos;

  Date_DataAlteracao.Date := Date;
  Date_Cadastro.Date := Date;

end;

procedure TForm_Pastos.limparEdit;
begin

  Edit_Codigo.Text := '';
  Edit_Descricao.Text := '';
  Edit_Area.Text := '';

  Date_Cadastro.Date := Date;
  Date_DataAlteracao.Date := Date;

  carregaStatusPastos;
end;

procedure TForm_Pastos.SB_AlterarClick(Sender: TObject);
begin
  if Edit_Codigo.Text <> '' then
  begin
    Alterar := true;

    carregaStatusPastos;

    Date_DataAlteracao.Date := Date;

    Edit_Descricao.Enabled := true;
    Edit_Descricao.Color := clWindow;
    Edit_Area.Enabled := true;
    Edit_Area.Color := clWindow;

    ComboBox_StatusPastos.Enabled := true;
    ComboBox_StatusPastos.Color := clWindow;

    SB_Novo.Enabled := false;
    SB_Excluir.Enabled := false;
    SB_Alterar.Enabled := false;
    SB_Cancelar.Enabled := true;
    SB_Salvar.Enabled := true;
  end;
end;

procedure TForm_Pastos.SB_CancelarClick(Sender: TObject);
begin
  limparEdit;

  SB_Limpar.Enabled := false;
  SB_Salvar.Enabled := false;
  SB_Cancelar.Enabled := false;
  SB_Novo.Enabled := true;
  SB_Excluir.Enabled := true;
  SB_Alterar.Enabled := true;

  Edit_Area.Enabled := false;
  Edit_Area.Color := clScrollBar;
  Edit_Descricao.Color := clScrollBar;
  Edit_Descricao.Enabled := false;
  ComboBox_StatusPastos.Enabled := false;
  ComboBox_StatusPastos.Color := clScrollBar;

  pas.classPastos;
end;

procedure TForm_Pastos.SB_ExcluirClick(Sender: TObject);
begin
  if Edit_Codigo.Text <> '' then
  begin

    pas.setCod_Pasto(StrToInt(Edit_Codigo.Text));

    if not modl.IBTransaction1.Active then
      modl.IBTransaction1.StartTransaction;

    modl.IBDataSet_Pastos.Close;
    modl.IBDataSet_Pastos.Open;

    modl.IBDataSet_Pastos.Edit;

    modl.IBDataSet_PastosCOD_PASTO.Value := pas.getCod_Pasto;

    modl.IBDataSet_Pastos.Delete;

    modl.IBTransaction1.Commit;
    carregarGrid;

    limparEdit;
    pas.classPastos;
  end;
end;

procedure TForm_Pastos.SB_LimparClick(Sender: TObject);
begin
  limparEdit;
end;

procedure TForm_Pastos.SB_NovoClick(Sender: TObject);
begin
  limparEdit;

  Edit_Descricao.Color := clWindow;
  Edit_Descricao.Enabled := true;
  Edit_Area.Color := clWindow;
  Edit_Area.Enabled := true;
  ComboBox_StatusPastos.Enabled := true;
  ComboBox_StatusPastos.Color := clWindow;

  SB_Limpar.Enabled := true;
  SB_Salvar.Enabled := true;
  SB_Cancelar.Enabled := true;
  SB_Novo.Enabled := false;
  SB_Excluir.Enabled := false;
  SB_Alterar.Enabled := false;
end;

procedure TForm_Pastos.SB_SalvarClick(Sender: TObject);
var
  selecao, status: String;
  cod: integer;
begin

  if (ComboBox_StatusPastos.Text <> 'Selecionar') and (Edit_Area.Text <> '')
  then
  begin

    if Alterar = true then
    begin
      pas.setCod_Pasto(StrToInt(Edit_Codigo.Text));

    end
    else
    begin
      pas.setDtCadastro(Date_Cadastro.Date);
    end;
    // separar a string codigo / tipo

    selecao := ComboBox_StatusPastos.Text;

    status := Copy(selecao, 2, 1);
    if status = ' ' then
    begin
      status := Copy(selecao, 1, 1);
      cod := StrToInt(status);
    end
    else
    begin
      status := Copy(selecao, 1, 2);
      cod := StrToInt(status);
    end;

    status := Copy(selecao, Pos('- ', selecao));
    status := Copy(status, 3);
    // fim do separar

    pas.setCod_Status(cod);
    pas.setStatus(status);
    pas.setPasto(Edit_Descricao.Text);
    pas.setArea(StrToInt(Edit_Area.Text));
    pas.setDtCadastro(Date_Cadastro.Date);
    pas.setUltimaAlteracao(Date_DataAlteracao.Date);

    if not modl.IBTransaction1.Active then
      modl.IBTransaction1.StartTransaction;

    modl.IBDataSet_Pastos.Close;
    modl.IBDataSet_Pastos.Open;

    if pas.getCod_Pasto = 0 then
    begin
      modl.IBDataSet_Pastos.Insert;
    end
    else
    begin
      modl.IBDataSet_Pastos.Edit;
    end;

    modl.IBDataSet_PastosCOD_PASTO.Value := pas.getCod_Pasto;
    modl.IBDataSet_PastosPASTO.Value := pas.getPasto;
    modl.IBDataSet_PastosCOD_STATUS.Value := pas.getCod_Status;
    modl.IBDataSet_PastosSTATUS.Value := pas.getStatus;
    modl.IBDataSet_PastosAREA.Value := pas.getArea;
    modl.IBDataSet_PastosDTCADASTRO.Value := pas.getDtCadastro;
    modl.IBDataSet_PastosDTULTIMAALTERACAO.Value := pas.getUltimaAlteracao;

    modl.IBDataSet_Pastos.Post;
    modl.IBTransaction1.Commit;

    Alterar := false;

    SB_Salvar.Enabled := false;
    SB_Cancelar.Enabled := false;
    SB_Limpar.Enabled := false;
    SB_Novo.Enabled := true;
    SB_Excluir.Enabled := true;
    SB_Alterar.Enabled := true;

    Edit_Descricao.Enabled := false;
    Edit_Descricao.Color := clScrollBar;
    Edit_Area.Color := clScrollBar;
    Edit_Area.Enabled := false;

    ComboBox_StatusPastos.Enabled := false;
    ComboBox_StatusPastos.Color := clScrollBar;
    limparEdit;

    carregarGrid;
    pas.classPastos;
  end;
end;

end.
