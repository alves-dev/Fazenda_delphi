unit Unit_RacaAnimais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Unit_Modulo,
  Unit_Class_RacaAnimais,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TForm_RacaAnimais = class(TForm)
    DBGrid_RacaAnimais: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Edit_Codigo: TEdit;
    Edit_Descricao: TEdit;
    SB_Novo: TSpeedButton;
    SB_Limpar: TSpeedButton;
    SB_Cancelar: TSpeedButton;
    SB_Salvar: TSpeedButton;
    SB_Excluir: TSpeedButton;
    SB_Alterar: TSpeedButton;
    ComboBox_TipoAnimal: TComboBox;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SB_AlterarClick(Sender: TObject);
    procedure SB_CancelarClick(Sender: TObject);
    procedure SB_ExcluirClick(Sender: TObject);
    procedure SB_LimparClick(Sender: TObject);
    procedure SB_NovoClick(Sender: TObject);
    procedure SB_SalvarClick(Sender: TObject);
    procedure DBGrid_RacaAnimaisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_RacaAnimaisKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_RacaAnimaisKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_RacaAnimaisDblClick(Sender: TObject);
  private
    { Private declarations }
    modl: TDataModule1;
    raca: RacaAnimais;

    procedure carregarGrid;
    procedure limparEdit;
    procedure focusGrid;
    procedure carregaTipoAnimais;
  public
    { Public declarations }
  end;

var
  Form_RacaAnimais: TForm_RacaAnimais;
  Alterar: Boolean;

implementation

{$R *.dfm}
{ TForm_RacaAnimais }

procedure TForm_RacaAnimais.carregarGrid;
begin
  modl.IBDataSet_RacaAnimais.Close;
  modl.IBDataSet_RacaAnimais.SelectSQL.Text := 'select * from RACA_ANIMAIS';
  modl.IBDataSet_RacaAnimais.Open;
end;

procedure TForm_RacaAnimais.carregaTipoAnimais;
var
  cod, descricao, tipo: String;
begin

  ComboBox_TipoAnimal.Items.Clear;
  ComboBox_TipoAnimal.Items.Add('Selecionar');
  ComboBox_TipoAnimal.ItemIndex := 0;

  modl.IBDataSet_TipoAnimais.Close;
  modl.IBDataSet_TipoAnimais.SelectSQL.Text := 'select * from TIPO_ANIMAIS ';
  modl.IBDataSet_TipoAnimais.Open;

  while not modl.IBDataSet_TipoAnimais.Eof do
  begin

    cod := modl.IBDataSet_TipoAnimais.FieldByName('cod_tipo').Value;
    descricao := modl.IBDataSet_TipoAnimais.FieldByName('descricao').Value;
    tipo := cod + ' - ' + descricao;
    ComboBox_TipoAnimal.Items.Add(tipo);
    modl.IBDataSet_TipoAnimais.Next;
  end;

end;

procedure TForm_RacaAnimais.DBGrid_RacaAnimaisDblClick(Sender: TObject);
begin
  focusGrid;
end;

procedure TForm_RacaAnimais.DBGrid_RacaAnimaisKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  focusGrid;
end;

procedure TForm_RacaAnimais.DBGrid_RacaAnimaisKeyPress(Sender: TObject;
  var Key: Char);
begin
  focusGrid;
end;

procedure TForm_RacaAnimais.DBGrid_RacaAnimaisKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  focusGrid;
end;

procedure TForm_RacaAnimais.focusGrid;
var
  temp: String;
begin
  DBGrid_RacaAnimais.SetFocus;

  Edit_Codigo.Text := DBGrid_RacaAnimais.Columns[0].Field.Text;
  Edit_Descricao.Text := DBGrid_RacaAnimais.Columns[1].Field.Text;
  temp := DBGrid_RacaAnimais.Columns[3].Field.Text; // não funciona
  ComboBox_TipoAnimal.Items.Add(temp);
end;

procedure TForm_RacaAnimais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  modl.Destroy;
  raca.destrua_RacaAnimais;
  Form_RacaAnimais.Close;
end;

procedure TForm_RacaAnimais.FormShow(Sender: TObject);
begin
  modl := TDataModule1.Create(nil);
  carregarGrid;

  Self.DBGrid_RacaAnimais.DataSource := modl.DataSource_RacaAnimais;

  // iniciar instancia
  raca := RacaAnimais.Create;
  raca.classRacaAnimais;
end;

procedure TForm_RacaAnimais.limparEdit;
begin
  Edit_Codigo.Text := '';
  Edit_Descricao.Text := '';

  carregaTipoAnimais;
end;

procedure TForm_RacaAnimais.SB_AlterarClick(Sender: TObject);
begin
  if Edit_Codigo.Text <> '' then
  begin
    Alterar := true;

    carregaTipoAnimais;

    Edit_Descricao.Enabled := true;
    Edit_Descricao.Color := clWindow;

    ComboBox_TipoAnimal.Enabled := true;
    ComboBox_TipoAnimal.Color := clWindow;

    SB_Novo.Enabled := false;
    SB_Excluir.Enabled := false;
    SB_Alterar.Enabled := false;
    SB_Cancelar.Enabled := true;
    SB_Salvar.Enabled := true;
  end;
end;

procedure TForm_RacaAnimais.SB_CancelarClick(Sender: TObject);
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
  ComboBox_TipoAnimal.Enabled := false;
  ComboBox_TipoAnimal.Color := clScrollBar;

  raca.classRacaAnimais;
end;

procedure TForm_RacaAnimais.SB_ExcluirClick(Sender: TObject);
begin

  if Edit_Codigo.Text <> '' then
  begin

    raca.setCod_raca(StrToInt(Edit_Codigo.Text));

    if not modl.IBTransaction1.Active then
      modl.IBTransaction1.StartTransaction;

    modl.IBDataSet_RacaAnimais.Close;
    modl.IBDataSet_RacaAnimais.Open;

    modl.IBDataSet_RacaAnimais.Edit;

    modl.IBDataSet_RacaAnimaisCOD_RACA.Value := raca.getCod_raca;

    modl.IBDataSet_RacaAnimais.Delete;

    modl.IBTransaction1.Commit;
    carregarGrid;

    limparEdit;
    raca.classRacaAnimais;
  end;
end;

procedure TForm_RacaAnimais.SB_LimparClick(Sender: TObject);
begin
  limparEdit;
end;

procedure TForm_RacaAnimais.SB_NovoClick(Sender: TObject);
begin
  limparEdit;

  Edit_Descricao.Color := clWindow;
  Edit_Descricao.Enabled := true;
  ComboBox_TipoAnimal.Enabled := true;
  ComboBox_TipoAnimal.Color := clWindow;

  SB_Limpar.Enabled := true;
  SB_Salvar.Enabled := true;
  SB_Cancelar.Enabled := true;
  SB_Novo.Enabled := false;
  SB_Excluir.Enabled := false;
  SB_Alterar.Enabled := false;
end;

procedure TForm_RacaAnimais.SB_SalvarClick(Sender: TObject);
var
  selecao, tipo: String;
  cod: integer;
begin

  if ComboBox_TipoAnimal.Text <> 'Selecionar' then
  begin

    if Alterar = true then
    begin
      raca.setCod_raca(StrToInt(Edit_Codigo.Text));
    end;
    // separar a string codigo / tipo

    selecao := ComboBox_TipoAnimal.Text;

    tipo := Copy(selecao, 2, 1);
    if tipo = ' ' then
    begin
      tipo := Copy(selecao, 1, 1);
      cod := StrToInt(tipo);
    end
    else
    begin
      tipo := Copy(selecao, 1, 2);
      cod := StrToInt(tipo);
    end;

    tipo := Copy(selecao, Pos('- ', selecao));
    tipo := Copy(tipo, 3);
    // fim do separar

    raca.setCod_tipo(cod);
    raca.setTipoDescricao(tipo);
    raca.setRaca(Edit_Descricao.Text);

    if not modl.IBTransaction1.Active then
      modl.IBTransaction1.StartTransaction;

    modl.IBDataSet_RacaAnimais.Close;
    modl.IBDataSet_RacaAnimais.Open;

    if raca.getCod_raca = 0 then
    begin
      modl.IBDataSet_RacaAnimais.Insert;
    end
    else
    begin
      modl.IBDataSet_RacaAnimais.Edit;
    end;

    modl.IBDataSet_RacaAnimaisCOD_RACA.Value := raca.getCod_raca;
    modl.IBDataSet_RacaAnimaisRACA.Value := raca.getRaca;
    modl.IBDataSet_RacaAnimaisCOD_TIPO.Value := raca.getCod_tipo;
    modl.IBDataSet_RacaAnimaisTIPO_DESCRICAO.Value := raca.getTipoDescricao;

    modl.IBDataSet_RacaAnimais.Post;
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
    ComboBox_TipoAnimal.Enabled := false;
    ComboBox_TipoAnimal.Color := clScrollBar;
    limparEdit;

    carregarGrid;
    raca.classRacaAnimais;
  end;
end;

end.
