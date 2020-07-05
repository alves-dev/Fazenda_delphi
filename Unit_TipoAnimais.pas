unit Unit_TipoAnimais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.StdCtrls, Unit_Modulo, Unit_Class_TipoAnimais;

type
  TForm_TipoAnimais = class(TForm)
    DBGrid_TipoAnimais: TDBGrid;
    SB_Novo: TSpeedButton;
    SB_Limpar: TSpeedButton;
    SB_Cancelar: TSpeedButton;
    SB_Salvar: TSpeedButton;
    SB_Excluir: TSpeedButton;
    SB_Alterar: TSpeedButton;
    Edit_Codigo: TEdit;
    Edit_Descricao: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure SB_NovoClick(Sender: TObject);
    procedure SB_LimparClick(Sender: TObject);
    procedure SB_AlterarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SB_SalvarClick(Sender: TObject);
    procedure DBGrid_TipoAnimaisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_TipoAnimaisKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_TipoAnimaisKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_TipoAnimaisDblClick(Sender: TObject);
    procedure SB_CancelarClick(Sender: TObject);
    procedure SB_ExcluirClick(Sender: TObject);

  private
    { Private declarations }
    modl: TDataModule1;
    tipani: TipoAnimais;

    procedure carregarGrid;
    procedure limparEdit;
    procedure focusGrid;

  public
    { Public declarations }
  end;

var
  Form_TipoAnimais: TForm_TipoAnimais;
  Alterar: Boolean;

implementation

{$R *.dfm}
{ TForm_TipoAnimais }

procedure TForm_TipoAnimais.carregarGrid;
begin
  modl.IBDataSet_TipoAnimais.Close;
  modl.IBDataSet_TipoAnimais.SelectSQL.Text := 'select * from TIPO_ANIMAIS';
  modl.IBDataSet_TipoAnimais.Open;
end;

procedure TForm_TipoAnimais.DBGrid_TipoAnimaisDblClick(Sender: TObject);
begin
  focusGrid;
end;

procedure TForm_TipoAnimais.DBGrid_TipoAnimaisKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  focusGrid;
end;

procedure TForm_TipoAnimais.DBGrid_TipoAnimaisKeyPress(Sender: TObject;
  var Key: Char);
begin
  focusGrid;
end;

procedure TForm_TipoAnimais.DBGrid_TipoAnimaisKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  focusGrid;
end;

procedure TForm_TipoAnimais.focusGrid;
begin
  DBGrid_TipoAnimais.SetFocus;

  Edit_Codigo.Text := DBGrid_TipoAnimais.Columns[0].Field.Text;
  Edit_Descricao.Text := DBGrid_TipoAnimais.Columns[1].Field.Text
end;

procedure TForm_TipoAnimais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  modl.Destroy;
  tipani.destrua_TipoAnimais;
  Form_TipoAnimais.Close;
end;

procedure TForm_TipoAnimais.FormShow(Sender: TObject);
begin
  modl := TDataModule1.Create(nil);
  carregarGrid;

  self.DBGrid_TipoAnimais.DataSource := modl.DataSource_TipoAnimais;

  tipani := TipoAnimais.Create;
  tipani.classTipoAnimais;
end;

procedure TForm_TipoAnimais.limparEdit;
begin
  Edit_Codigo.Text := '';
  Edit_Descricao.Text := '';
end;

procedure TForm_TipoAnimais.SB_AlterarClick(Sender: TObject);
begin
  if Edit_Codigo.Text <> '' then
  begin
    Alterar := true;

    Edit_Descricao.Enabled := true;
    Edit_Descricao.Color := clWindow;

    SB_Novo.Enabled := false;
    SB_Excluir.Enabled := false;
    SB_Alterar.Enabled := false;
    SB_Cancelar.Enabled := true;
    SB_Salvar.Enabled := true;
  end;
end;

procedure TForm_TipoAnimais.SB_CancelarClick(Sender: TObject);
begin
  limparEdit;

  SB_Limpar.Enabled := false;
  SB_Salvar.Enabled := false;
  SB_Cancelar.Enabled := false;
  SB_Novo.Enabled := true;
  SB_Excluir.Enabled := true;
  SB_Alterar.Enabled := true;

  Edit_Codigo.Color := clScrollBar;
  Edit_Descricao.Color := clScrollBar;
  Edit_Descricao.Enabled := false;

  tipani.classTipoAnimais;
end;

procedure TForm_TipoAnimais.SB_ExcluirClick(Sender: TObject);
begin

  if Edit_Codigo.Text <> '' then
  begin

    tipani.setCod_tipo(StrToInt(Edit_Codigo.Text));

    if not modl.IBTransaction1.Active then
      modl.IBTransaction1.StartTransaction;

    modl.IBDataSet_TipoAnimais.Close;
    modl.IBDataSet_TipoAnimais.Open;

    modl.IBDataSet_TipoAnimais.Edit;

    modl.IBDataSet_TipoAnimaisCOD_TIPO.Value := tipani.getCod_tipo;

    modl.IBDataSet_TipoAnimais.Delete;

    modl.IBTransaction1.Commit;
    carregarGrid;

    limparEdit;
    tipani.classTipoAnimais;
  end;
end;

procedure TForm_TipoAnimais.SB_LimparClick(Sender: TObject);
begin
  limparEdit;
end;

procedure TForm_TipoAnimais.SB_NovoClick(Sender: TObject);
begin
  limparEdit;

  Edit_Descricao.Color := clWindow;
  Edit_Descricao.Enabled := true;

  SB_Limpar.Enabled := true;
  SB_Salvar.Enabled := true;
  SB_Cancelar.Enabled := true;
  SB_Novo.Enabled := false;
  SB_Excluir.Enabled := false;
  SB_Alterar.Enabled := false;

end;

procedure TForm_TipoAnimais.SB_SalvarClick(Sender: TObject);
begin

  if Alterar = true then
    tipani.setCod_tipo(StrToInt(Edit_Codigo.Text));

  tipani.setDescricao(Edit_Descricao.Text);

  if not modl.IBTransaction1.Active then
    modl.IBTransaction1.StartTransaction;

  modl.IBDataSet_TipoAnimais.Close;
  modl.IBDataSet_TipoAnimais.Open;

  if tipani.getCod_tipo = 0 then
  begin
    modl.IBDataSet_TipoAnimais.Insert;
  end
  else
  begin
    modl.IBDataSet_TipoAnimais.Edit;
  end;

  modl.IBDataSet_TipoAnimaisCOD_TIPO.Value := tipani.getCod_tipo;
  modl.IBDataSet_TipoAnimaisDESCRICAO.Value := tipani.getDescricao;

  modl.IBDataSet_TipoAnimais.Post;
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
  limparEdit;

  carregarGrid;
  tipani.classTipoAnimais;
end;

end.
