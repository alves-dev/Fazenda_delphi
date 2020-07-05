unit Unit_Class_Pastos;

interface

Type
  Pastos = Class

  private

    cod_pasto: Integer;
    pasto: String;
    cod_status: Integer;
    status: String;
    area: Integer;
    dtCadastro: TDate;
    dtUltimaAlteracao: TDate;

  public

    constructor classPastos;

    procedure setCod_Pasto(pCod_Pasto: Integer);
    procedure setPasto(pPasto: String);
    procedure setCod_Status(pCod_Status: Integer);
    procedure setStatus(pStatus: String);
    procedure setArea(pArea: Integer);
    procedure setDtCadastro(pDtCadastro: TDate);
    procedure setUltimaAlteracao(pUltimaAlteracao: TDate);

    function getCod_Pasto: Integer;
    function getPasto: String;
    function getCod_Status: Integer;
    function getStatus: String;
    function getArea: Integer;
    function getDtCadastro: TDate;
    function getUltimaAlteracao: TDate;

    destructor destrua_Pastos;

  End;

implementation

{ Pastos }

constructor Pastos.classPastos;
begin
  cod_pasto := 0;
  pasto := '';
  cod_status := 0;
  status := '';
  area := 0;
  dtCadastro := 00 / 00 / 0000;
  dtUltimaAlteracao := 00 / 00 / 0000;
end;

destructor Pastos.destrua_Pastos;
begin

end;

function Pastos.getArea: Integer;
begin
  Result := area;
end;

function Pastos.getCod_Pasto: Integer;
begin
  Result := cod_pasto;
end;

function Pastos.getCod_Status: Integer;
begin
  Result := cod_status;
end;

function Pastos.getDtCadastro: TDate;
begin
  Result := dtCadastro;
end;

function Pastos.getPasto: String;
begin
  Result := pasto;
end;

function Pastos.getStatus: String;
begin
  Result := status;
end;

function Pastos.getUltimaAlteracao: TDate;
begin
  Result := dtUltimaAlteracao
end;

procedure Pastos.setArea(pArea: Integer);
begin
  area := pArea;
end;

procedure Pastos.setCod_Pasto(pCod_Pasto: Integer);
begin
  cod_pasto := pCod_Pasto;
end;

procedure Pastos.setCod_Status(pCod_Status: Integer);
begin
  cod_status := pCod_Status;
end;

procedure Pastos.setDtCadastro(pDtCadastro: TDate);
begin
  dtCadastro := pDtCadastro;
end;

procedure Pastos.setPasto(pPasto: String);
begin
  pasto := pPasto;
end;

procedure Pastos.setStatus(pStatus: String);
begin
  status := pStatus;
end;

procedure Pastos.setUltimaAlteracao(pUltimaAlteracao: TDate);
begin
  dtUltimaAlteracao := pUltimaAlteracao;
end;

end.
