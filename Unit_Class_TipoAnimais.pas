unit Unit_Class_TipoAnimais;

interface

Type
  TipoAnimais = class

  private
    cod_tipo: Integer;
    descricao: String;

  public

    constructor classTipoAnimais;

    procedure setCod_tipo(pCod_tipo: Integer);
    procedure setDescricao(pDescricao: String);

    function getCod_tipo: Integer;
    function getDescricao: String;

    destructor destrua_TipoAnimais;

  end;

implementation

{ TipoAnimais }

constructor TipoAnimais.classTipoAnimais;
begin
  cod_tipo := 0;
  descricao := '';
end;

destructor TipoAnimais.destrua_TipoAnimais;
begin

end;

function TipoAnimais.getCod_tipo: Integer;
begin
  result := cod_tipo;
end;

function TipoAnimais.getDescricao: String;
begin
  result := descricao;
end;

procedure TipoAnimais.setCod_tipo(pCod_tipo: Integer);
begin
  cod_tipo := pCod_tipo;
end;

procedure TipoAnimais.setDescricao(pDescricao: String);
begin
  descricao := pDescricao;
end;

end.
