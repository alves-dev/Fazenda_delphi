unit Unit_Class_RacaAnimais;

interface

Type
  RacaAnimais = class

  private
    cod_raca: Integer;
    raca: String;
    cod_tipo: Integer;
    tipoDescricao: String;

  public

    constructor classRacaAnimais;

    procedure setCod_raca(pCod_raca: Integer);
    procedure setRaca(pRaca: String);
    procedure setCod_tipo(pCod_tipo: Integer);
    procedure setTipoDescricao(pTipoDescricao: String);

    function getCod_raca: Integer;
    function getRaca: String;
    function getCod_tipo: Integer;
    function getTipoDescricao: String;

    destructor destrua_RacaAnimais;

  end;

implementation

{ RacaAnimais }

constructor RacaAnimais.classRacaAnimais;
begin
  cod_raca := 0;
  raca := '';
  cod_tipo := 0;
  tipoDescricao := '';
end;

destructor RacaAnimais.destrua_RacaAnimais;
begin

end;

function RacaAnimais.getCod_raca: Integer;
begin
  result := cod_raca;
end;

function RacaAnimais.getCod_tipo: Integer;
begin
  result := cod_tipo;
end;

function RacaAnimais.getRaca: String;
begin
  result := raca;
end;

function RacaAnimais.getTipoDescricao: String;
begin
  result := tipoDescricao;
end;

procedure RacaAnimais.setCod_raca(pCod_raca: Integer);
begin
  cod_raca := pCod_raca;
end;

procedure RacaAnimais.setCod_tipo(pCod_tipo: Integer);
begin
  cod_tipo := pCod_tipo;
end;

procedure RacaAnimais.setRaca(pRaca: String);
begin
  raca := pRaca;
end;

procedure RacaAnimais.setTipoDescricao(pTipoDescricao: String);
begin
  tipoDescricao := pTipoDescricao;
end;

end.
