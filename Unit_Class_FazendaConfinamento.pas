unit Unit_Class_FazendaConfinamento;

interface

type
  FazendaConfinamento = Class

  private

    cod_fazenda: Integer;
    bezerrosA: Integer;
    bezerrosB: Integer;
    garrotesA: Integer;
    garrotesB: Integer;
    boisA: Integer;
    boisB: Integer;
    boisVelhosA: Integer;
    boisVelhosB: Integer;
    KgDiaBezerros: Double;
    KgDiaGarrotes: Double;
    KgDiaBois: Double;
    KgDiaBoisVelhos: Double;
    m2Bezerros: Integer;
    m2Garrotes: Integer;
    m2Bois: Integer;
    m2BoisVelhos: Integer;
    periodo1A: Integer;
    periodo1B: Integer;
    alimentacao1: Integer;
    periodo2A: Integer;
    periodo2B: Integer;
    alimentacao2: Integer;
    periodo3A: Integer;
    periodo3B: Integer;
    alimentacao3: Integer;
    periodo4A: Integer;
    periodo4B: Integer;
    alimentacao4: Integer;

  public

    constructor classFazendaConfinamento;

    procedure setCod_fazenda(pCod_fazenda: Integer);
    procedure setBezerrosA(pBezerrosA: Integer);
    procedure setBezerrosB(pBezerrosB: Integer);
    procedure setGarrotesA(pGarrotesA: Integer);
    procedure setGarrotesB(pGarrotesB: Integer);
    procedure setBoisA(pBoisA: Integer);
    procedure setBoisB(pBoisB: Integer);
    procedure setBoisVelhosA(pBoisVelhosA: Integer);
    procedure setBoisVelhosB(pBoisVelhosB: Integer);
    procedure setKgDiaBezerros(pKgDiaBezerros: Double);
    procedure setKgDiaGarrotes(pKgDiaGarrotes: Double);
    procedure setKgDiaBois(pKgDiaBois: Double);
    procedure setKgDiaBoisVelhos(pKgDiaBoisVelhos: Double);
    procedure setM2Bezerros(pM2Bezerros: Integer);
    procedure setM2Garrotes(pM2Garrotes: Integer);
    procedure setM2Bois(pM2Bois: Integer);
    procedure setM2BoisVelhos(pM2BoisVelhos: Integer);
    procedure setPeriodo1A(pPeriodo1A: Integer);
    procedure setPeriodo1B(pPeriodo1B: Integer);
    procedure setAlimentacao1(pAlimentacao1: Integer);
    procedure setPeriodo2A(pPeriodo2A: Integer);
    procedure setPeriodo2B(pPeriodo2B: Integer);
    procedure setAlimentacao2(pAlimentacao2: Integer);
    procedure setPeriodo3A(pPeriodo3A: Integer);
    procedure setPeriodo3B(pPeriodo3B: Integer);
    procedure setAlimentacao3(pAlimentacao3: Integer);
    procedure setPeriodo4A(pPeriodo4A: Integer);
    procedure setPeriodo4B(pPeriodo4B: Integer);
    procedure setAlimentacao4(pAlimentacao4: Integer);

    function getCod_fazenda: Integer;
    function getBezerrosA: Integer;
    function getBezerrosB: Integer;
    function getGarrotesA: Integer;
    function getGarrotesB: Integer;
    function getBoisA: Integer;
    function getBoisB: Integer;
    function getBoisVelhosA: Integer;
    function getBoisVelhosB: Integer;
    function getKgDiaBezerros: Double;
    function getKgDiaGarrotes: Double;
    function getKgDiaBois: Double;
    function getKgDiaBoisVelhos: Double;
    function getM2Bezerros: Integer;
    function getM2Garrotes: Integer;
    function getM2Bois: Integer;
    function getM2BoisVelhos: Integer;
    function getPeriodo1A: Integer;
    function getPeriodo1B: Integer;
    function getAlimentacao1: Integer;
    function getPeriodo2A: Integer;
    function getPeriodo2B: Integer;
    function getAlimentacao2: Integer;
    function getPeriodo3A: Integer;
    function getPeriodo3B: Integer;
    function getAlimentacao3: Integer;
    function getPeriodo4A: Integer;
    function getPeriodo4B: Integer;
    function getAlimentacao4: Integer;

    destructor destrua_FazendaConfinamento;

  End;

implementation

{ FazendaConfinamento }

constructor FazendaConfinamento.classFazendaConfinamento;
begin
  cod_fazenda := 0;
  bezerrosA := 0;
  bezerrosB := 0;
  garrotesA := 0;
  garrotesB := 0;
  boisA := 0;
  boisB := 0;
  boisVelhosA := 0;
  boisVelhosB := 0;
  KgDiaBezerros := 0;
  KgDiaGarrotes := 0;
  KgDiaBois := 0;
  KgDiaBoisVelhos := 0;
  m2Bezerros := 0;
  m2Garrotes := 0;
  m2Bois := 0;
  m2BoisVelhos := 0;
  periodo1A := 0;
  periodo1B := 0;
  alimentacao1 := 0;
  periodo2A := 0;
  periodo2B := 0;
  alimentacao2 := 0;
  periodo3A := 0;
  periodo3B := 0;
  alimentacao3 := 0;
  periodo4A := 0;
  periodo4B := 0;
  alimentacao4 := 0;
end;

destructor FazendaConfinamento.destrua_FazendaConfinamento;
begin

end;

function FazendaConfinamento.getAlimentacao1: Integer;
begin
  result := alimentacao1;
end;

function FazendaConfinamento.getAlimentacao2: Integer;
begin
  result := alimentacao2;
end;

function FazendaConfinamento.getAlimentacao3: Integer;
begin
  result := alimentacao3;
end;

function FazendaConfinamento.getAlimentacao4: Integer;
begin
  result := alimentacao4;
end;

function FazendaConfinamento.getBezerrosA: Integer;
begin
  result := bezerrosA;
end;

function FazendaConfinamento.getBezerrosB: Integer;
begin
  result := bezerrosB;
end;

function FazendaConfinamento.getBoisA: Integer;
begin
  result := boisA;
end;

function FazendaConfinamento.getBoisB: Integer;
begin
  result := boisB;
end;

function FazendaConfinamento.getBoisVelhosA: Integer;
begin
  result := boisVelhosA;
end;

function FazendaConfinamento.getBoisVelhosB: Integer;
begin
  result := boisVelhosB;
end;

function FazendaConfinamento.getCod_fazenda: Integer;
begin
  result := cod_fazenda;
end;

function FazendaConfinamento.getGarrotesA: Integer;
begin
  result := garrotesA;
end;

function FazendaConfinamento.getGarrotesB: Integer;
begin
  result := garrotesB;
end;

function FazendaConfinamento.getKgDiaBezerros: Double;
begin
  result := KgDiaBezerros;
end;

function FazendaConfinamento.getKgDiaBois: Double;
begin
  result := KgDiaBois;
end;

function FazendaConfinamento.getKgDiaBoisVelhos: Double;
begin
  result := KgDiaBoisVelhos;
end;

function FazendaConfinamento.getKgDiaGarrotes: Double;
begin
  result := KgDiaGarrotes;
end;

function FazendaConfinamento.getM2Bezerros: Integer;
begin
  result := m2Bezerros;
end;

function FazendaConfinamento.getM2Bois: Integer;
begin
  result := m2Bois;
end;

function FazendaConfinamento.getM2BoisVelhos: Integer;
begin
  result := m2BoisVelhos;
end;

function FazendaConfinamento.getM2Garrotes: Integer;
begin
  result := m2Garrotes;
end;

function FazendaConfinamento.getPeriodo1A: Integer;
begin
  result := periodo1A;
end;

function FazendaConfinamento.getPeriodo1B: Integer;
begin
  result := periodo1B;
end;

function FazendaConfinamento.getPeriodo2A: Integer;
begin
  result := periodo2A;
end;

function FazendaConfinamento.getPeriodo2B: Integer;
begin
  result := periodo2B;
end;

function FazendaConfinamento.getPeriodo3A: Integer;
begin
  result := periodo3A;
end;

function FazendaConfinamento.getPeriodo3B: Integer;
begin
  result := periodo3B;
end;

function FazendaConfinamento.getPeriodo4A: Integer;
begin
  result := periodo4A;
end;

function FazendaConfinamento.getPeriodo4B: Integer;
begin
  result := periodo4B;
end;

procedure FazendaConfinamento.setAlimentacao1(pAlimentacao1: Integer);
begin
  alimentacao1 := pAlimentacao1;
end;

procedure FazendaConfinamento.setAlimentacao2(pAlimentacao2: Integer);
begin
  alimentacao2 := pAlimentacao2;
end;

procedure FazendaConfinamento.setAlimentacao3(pAlimentacao3: Integer);
begin
  alimentacao3 := pAlimentacao3;
end;

procedure FazendaConfinamento.setAlimentacao4(pAlimentacao4: Integer);
begin
  alimentacao4 := pAlimentacao4;
end;

procedure FazendaConfinamento.setBezerrosA(pBezerrosA: Integer);
begin
  bezerrosA := pBezerrosA;
end;

procedure FazendaConfinamento.setBezerrosB(pBezerrosB: Integer);
begin
  bezerrosB := pBezerrosB;
end;

procedure FazendaConfinamento.setBoisA(pBoisA: Integer);
begin
  boisA := pBoisA;
end;

procedure FazendaConfinamento.setBoisB(pBoisB: Integer);
begin
  boisB := pBoisB;
end;

procedure FazendaConfinamento.setBoisVelhosA(pBoisVelhosA: Integer);
begin
  boisVelhosA := pBoisVelhosA;
end;

procedure FazendaConfinamento.setBoisVelhosB(pBoisVelhosB: Integer);
begin
  boisVelhosB := pBoisVelhosB;
end;

procedure FazendaConfinamento.setCod_fazenda(pCod_fazenda: Integer);
begin
  cod_fazenda := pCod_fazenda;
end;

procedure FazendaConfinamento.setGarrotesA(pGarrotesA: Integer);
begin
  garrotesA := pGarrotesA;
end;

procedure FazendaConfinamento.setGarrotesB(pGarrotesB: Integer);
begin
  garrotesB := pGarrotesB;
end;

procedure FazendaConfinamento.setKgDiaBezerros(pKgDiaBezerros: Double);
begin
  KgDiaBezerros := pKgDiaBezerros;
end;

procedure FazendaConfinamento.setKgDiaBois(pKgDiaBois: Double);
begin
  KgDiaBois := pKgDiaBois;
end;

procedure FazendaConfinamento.setKgDiaBoisVelhos(pKgDiaBoisVelhos: Double);
begin
  KgDiaBoisVelhos := pKgDiaBoisVelhos;
end;

procedure FazendaConfinamento.setKgDiaGarrotes(pKgDiaGarrotes: Double);
begin
  KgDiaGarrotes := pKgDiaGarrotes;
end;

procedure FazendaConfinamento.setM2Bezerros(pM2Bezerros: Integer);
begin
  m2Bezerros := pM2Bezerros;
end;

procedure FazendaConfinamento.setM2Bois(pM2Bois: Integer);
begin
  m2Bois := pM2Bois;
end;

procedure FazendaConfinamento.setM2BoisVelhos(pM2BoisVelhos: Integer);
begin
  m2BoisVelhos := pM2BoisVelhos;
end;

procedure FazendaConfinamento.setM2Garrotes(pM2Garrotes: Integer);
begin
  m2Garrotes := pM2Garrotes;
end;

procedure FazendaConfinamento.setPeriodo1A(pPeriodo1A: Integer);
begin
  periodo1A := pPeriodo1A;
end;

procedure FazendaConfinamento.setPeriodo1B(pPeriodo1B: Integer);
begin
  periodo1B := pPeriodo1B;
end;

procedure FazendaConfinamento.setPeriodo2A(pPeriodo2A: Integer);
begin
  periodo2A := pPeriodo2A;
end;

procedure FazendaConfinamento.setPeriodo2B(pPeriodo2B: Integer);
begin
  periodo2B := pPeriodo2B;
end;

procedure FazendaConfinamento.setPeriodo3A(pPeriodo3A: Integer);
begin
  periodo3A := pPeriodo3A;
end;

procedure FazendaConfinamento.setPeriodo3B(pPeriodo3B: Integer);
begin
  periodo3B := pPeriodo3B;
end;

procedure FazendaConfinamento.setPeriodo4A(pPeriodo4A: Integer);
begin
  periodo4A := pPeriodo4A;
end;

procedure FazendaConfinamento.setPeriodo4B(pPeriodo4B: Integer);
begin
  periodo4B := pPeriodo4B;
end;

end.
