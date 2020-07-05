unit Unit_Class_Animais;

interface

type
  Animais = class

  private
    identificacao: Integer;
    identificacao2: String;
    cod_status: Integer;
    status: String;
    cod_tipoAnimal: Integer;
    tipoAnimal: String;
    cod_raca: Integer;
    raca: String;
    idadeMesses: Integer;
    cod_pasto: Integer;
    pasto: String;
    loteCompra: Integer;
    loteVenda: Integer;
    sexo: Char;
    obs: String;
    dtCadastro: TDate;
    dtUltimaAlteracao: TDate;
    vivo: Char;

  public

    constructor classAnimais;

    procedure setIdentificacao(pIdentificacao: Integer);
    procedure setIdentificacao2(pIdentificacao2: String);
    procedure setCod_status(pCod_status: Integer);
    procedure setStatus(pStatus: String);
    procedure setCod_tipoAnimal(pCod_tipoAnimal: Integer);
    procedure setTipoAnimal(pTipoAnimal: String);
    procedure setCod_raca(pCod_raca: Integer);
    procedure setRaca(pRaca: String);
    procedure setIdadeMesses(pIdadeMesses: Integer);
    procedure setCod_pasto(pCod_pasto: Integer);
    procedure setPasto(pPasto: String);
    procedure setLoteCompra(pLoteCompra: Integer);
    procedure setLoteVenda(pLoteVenda: Integer);
    procedure setSexo(pSexo: Char);
    procedure setObs(pObs: String);
    procedure setDtCadastro(pDtCadastro: TDate);
    procedure setDtUltimaAlteracao(pDtUltimaAlteracao: TDate);
    procedure setVivo(pVivo: Char);

    function getIdentificacao: Integer;
    function getIdentificacao2: String;
    function getCod_status: Integer;
    function getStatus: String;
    function getCod_tipoAnimal: Integer;
    function getTipoAnimal: String;
    function getCod_raca: Integer;
    function getRaca: String;
    function getIdadeMesses: Integer;
    function getCod_pasto: Integer;
    function getPasto: String;
    function getLoteCompra: Integer;
    function getLoteVenda: Integer;
    function getSexo: Char;
    function getObs: String;
    function getDtCadastro: TDate;
    function getDtUltimaAlteracao: TDate;
    function getVivo: Char;

    destructor destrua_Animais;

  end;

implementation

{ Animais }

constructor Animais.classAnimais;
begin
  identificacao := 0;
  identificacao2 := '';
  cod_status := 0;
  status := '';
  cod_tipoAnimal := 0;
  tipoAnimal := '';
  cod_raca := 0;
  raca := '';
  idadeMesses := 0;
  cod_pasto := 0;
  pasto := '';
  loteCompra := 0;
  loteVenda := 0;
  sexo := 'x';
  obs := '';
  dtCadastro := 00 / 00 / 0000;
  dtUltimaAlteracao := 00 / 00 / 0000;
  vivo := 'x';
end;

destructor Animais.destrua_Animais;
begin

end;

function Animais.getCod_pasto: Integer;
begin
  result := cod_pasto;
end;

function Animais.getCod_raca: Integer;
begin
  result := cod_raca;
end;

function Animais.getCod_status: Integer;
begin
  result := cod_status;
end;

function Animais.getCod_tipoAnimal: Integer;
begin
  result := cod_tipoAnimal;
end;

function Animais.getDtCadastro: TDate;
begin
  result := dtCadastro;
end;

function Animais.getDtUltimaAlteracao: TDate;
begin
  result := dtUltimaAlteracao;
end;

function Animais.getIdadeMesses: Integer;
begin
  result := idadeMesses;
end;

function Animais.getIdentificacao: Integer;
begin
  result := identificacao;
end;

function Animais.getIdentificacao2: String;
begin
  result := identificacao2;
end;

function Animais.getLoteCompra: Integer;
begin
  result := loteCompra;
end;

function Animais.getLoteVenda: Integer;
begin
  result := loteVenda;
end;

function Animais.getObs: String;
begin
  result := obs;
end;

function Animais.getPasto: String;
begin
  result := pasto;
end;

function Animais.getRaca: String;
begin
  result := raca;
end;

function Animais.getSexo: Char;
begin
  result := sexo;
end;

function Animais.getStatus: String;
begin
  result := status;
end;

function Animais.getTipoAnimal: String;
begin
  result := tipoAnimal;
end;

function Animais.getVivo: Char;
begin
  result := vivo;
end;

procedure Animais.setCod_pasto(pCod_pasto: Integer);
begin
  cod_pasto := pCod_pasto;
end;

procedure Animais.setCod_raca(pCod_raca: Integer);
begin
  cod_raca := pCod_raca;
end;

procedure Animais.setCod_status(pCod_status: Integer);
begin
  cod_status := pCod_status;
end;

procedure Animais.setCod_tipoAnimal(pCod_tipoAnimal: Integer);
begin
  cod_tipoAnimal := pCod_tipoAnimal;
end;

procedure Animais.setDtCadastro(pDtCadastro: TDate);
begin
  dtCadastro := pDtCadastro;
end;

procedure Animais.setDtUltimaAlteracao(pDtUltimaAlteracao: TDate);
begin
  dtUltimaAlteracao := pDtUltimaAlteracao;
end;

procedure Animais.setIdadeMesses(pIdadeMesses: Integer);
begin
  idadeMesses := pIdadeMesses;
end;

procedure Animais.setIdentificacao(pIdentificacao: Integer);
begin
  identificacao := pIdentificacao;
end;

procedure Animais.setIdentificacao2(pIdentificacao2: String);
begin
  identificacao2 := pIdentificacao2;
end;

procedure Animais.setLoteCompra(pLoteCompra: Integer);
begin
  loteCompra := pLoteCompra;
end;

procedure Animais.setLoteVenda(pLoteVenda: Integer);
begin
  loteVenda := pLoteVenda;
end;

procedure Animais.setObs(pObs: String);
begin
  obs := pObs;
end;

procedure Animais.setPasto(pPasto: String);
begin
  pasto := pPasto;
end;

procedure Animais.setRaca(pRaca: String);
begin
  raca := pRaca;
end;

procedure Animais.setSexo(pSexo: Char);
begin
  sexo := pSexo;
end;

procedure Animais.setStatus(pStatus: String);
begin
  status := pStatus;
end;

procedure Animais.setTipoAnimal(pTipoAnimal: String);
begin
  tipoAnimal := pTipoAnimal;
end;

procedure Animais.setVivo(pVivo: Char);
begin
  vivo := pVivo;
end;

end.
