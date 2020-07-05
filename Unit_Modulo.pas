unit Unit_Modulo;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBCustomDataSet, IBDatabase;

type
  TDataModule1 = class(TDataModule)
    IBDatabase_Banco: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBDataSet_Status: TIBDataSet;
    DataSource_Status: TDataSource;
    IBDataSet_TipoAnimais: TIBDataSet;
    DataSource_TipoAnimais: TDataSource;
    IBDataSet_TipoAnimaisCOD_TIPO: TIntegerField;
    IBDataSet_TipoAnimaisDESCRICAO: TIBStringField;
    IBDataSet_StatusCOD_STATUS: TIntegerField;
    IBDataSet_StatusSTATUS: TIBStringField;
    IBDataSet_RacaAnimais: TIBDataSet;
    DataSource_RacaAnimais: TDataSource;
    IBDataSet_StatusPastos: TIBDataSet;
    DataSource_StatusPastos: TDataSource;
    IBDataSet_Pastos: TIBDataSet;
    DataSource_Pastos: TDataSource;
    IBDataSet_RacaAnimaisCOD_RACA: TIntegerField;
    IBDataSet_RacaAnimaisRACA: TIBStringField;
    IBDataSet_RacaAnimaisCOD_TIPO: TIntegerField;
    IBDataSet_RacaAnimaisTIPO_DESCRICAO: TIBStringField;
    IBDataSet_StatusPastosCOD_STATUS: TIntegerField;
    IBDataSet_StatusPastosSTATUS: TIBStringField;
    IBDataSet_PastosCOD_PASTO: TIntegerField;
    IBDataSet_PastosPASTO: TIBStringField;
    IBDataSet_PastosCOD_STATUS: TIntegerField;
    IBDataSet_PastosSTATUS: TIBStringField;
    IBDataSet_PastosAREA: TIntegerField;
    IBDataSet_PastosDTCADASTRO: TDateField;
    IBDataSet_PastosDTULTIMAALTERACAO: TDateField;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{ %CLASSGROUP 'System.Classes.TPersistent' }

{$R *.dfm}

end.
