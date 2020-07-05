unit Unit_Class_Status;

interface

Type
  Status = class

  private
    cod_status: Integer;
    Status: String;

  public

    constructor classStatus;

    procedure setCod_status(pCod_status: Integer);
    procedure setStatus(pStatus: String);

    function getCod_status: Integer;
    function getStatus: String;

    destructor destrua_Status;

  end;

implementation

{ Status }

constructor Status.classStatus;
begin
  cod_status := 0;
  Status := '';
end;

destructor Status.destrua_Status;
begin

end;

function Status.getCod_status: Integer;
begin
  result := cod_status;
end;

function Status.getStatus: String;
begin
  result := Status;
end;

procedure Status.setCod_status(pCod_status: Integer);
begin
  cod_status := pCod_status;
end;

procedure Status.setStatus(pStatus: String);
begin
  Status := pStatus;
end;

end.
