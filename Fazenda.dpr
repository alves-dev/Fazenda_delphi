program Fazenda;

uses
  Vcl.Forms,
  Unit_Carregamento in 'Unit_Carregamento.pas' {Form_Carregamento} ,
  Unit_Login in 'Unit_Login.pas' {Form_Login} ,
  Unit_Principal in 'Unit_Principal.pas' {Form_Principal} ,
  Unit_Class_Animais in 'Unit_Class_Animais.pas',
  Unit_Class_FazendaConfinamento in 'Unit_Class_FazendaConfinamento.pas',
  Unit_Class_Status in 'Unit_Class_Status.pas',
  Unit_Class_TipoAnimais in 'Unit_Class_TipoAnimais.pas',
  Unit_Class_RacaAnimais in 'Unit_Class_RacaAnimais.pas',
  Unit_Status in 'Unit_Status.pas' {Form_Status} ,
  Unit_Modulo in 'Unit_Modulo.pas' {DataModule1: TDataModule} ,
  Unit_Class_StatusPastos in 'Unit_Class_StatusPastos.pas',
  Unit_Class_Pastos in 'Unit_Class_Pastos.pas',
  Unit_TipoAnimais in 'Unit_TipoAnimais.pas' {Form_TipoAnimais} ,
  Unit_StatusPastos in 'Unit_StatusPastos.pas' {Form_StatusPastos} ,
  Unit_RacaAnimais in 'Unit_RacaAnimais.pas' {Form_RacaAnimais} ,
  Unit_Pastos in 'Unit_Pastos.pas' {Form_Pastos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Carregamento, Form_Carregamento);
  Application.CreateForm(TForm_RacaAnimais, Form_RacaAnimais);
  Application.CreateForm(TForm_Pastos, Form_Pastos);
  Application.Run;

end.
