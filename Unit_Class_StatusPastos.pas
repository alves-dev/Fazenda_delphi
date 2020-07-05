unit Unit_Class_StatusPastos;

interface

Type
  StatusPastos = class

  private
    cod_status: Integer;
    status: String;

  public

    constructor classStatusPastos;

    procedure setCod_status(pCod_status: Integer);
    procedure setStatus(pStatus: String);

    function getCod_status: Integer;
    function getStatus: String;

    destructor destrua_StatusPastos;

  end;

implementation

{ StatusPastos }

constructor StatusPastos.classStatusPastos;
begin
  cod_status := 0;
  status := '';
end;

destructor StatusPastos.destrua_StatusPastos;
begin

end;

function StatusPastos.getCod_status: Integer;
begin
  Result := cod_status;
end;

function StatusPastos.getStatus: String;
begin
  Result := status;
end;

procedure StatusPastos.setCod_status(pCod_status: Integer);
begin
  cod_status := pCod_status;
end;

procedure StatusPastos.setStatus(pStatus: String);
begin
  status := pStatus;
end;

end.
