unit ServerHorse.Model.Entidade.CIDADES;

interface

uses
  SimpleAttributes;

type
  [Tabela('CIDADES')]
  TCIDADES = class
  private
    FID :Integer;
    FUF :String;
    FDESCRICAO :String;

    procedure SetID (const Value :Integer);
    function GetID :Integer;

    procedure SetUF (const Value :String);
    function GetUF :String;

    procedure SetDESCRICAO (const Value :String);
    function GetDESCRICAO :String;


  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    [Campo('ID'), PK, AUTOINC]
    property ID :Integer read GetID write SetID;
    [Campo('UF')]
    property UF :String read GetUF write SetUF;
    [Campo('DESCRICAO')]
    property DESCRICAO :String read GetDESCRICAO write SetDESCRICAO;

end;

implementation

constructor TCIDADES.Create;
begin
  Limpar;
end;

destructor TCIDADES.Destroy;
begin

  inherited;
end;

procedure TCIDADES.SetID (const Value :Integer);
begin
  FID := Value;
end;

function TCIDADES.GetID :Integer;
begin
  Result := FID;
end;

procedure TCIDADES.SetUF (const Value :String);
begin
  FUF := Value;
end;

function TCIDADES.GetUF :String;
begin
  Result := FUF;
end;

procedure TCIDADES.SetDESCRICAO (const Value :String);
begin
  FDESCRICAO := Value;
end;

function TCIDADES.GetDESCRICAO :String;
begin
  Result := FDESCRICAO;
end;


procedure TCIDADES.Limpar;
begin

  Self.ID := 0;
  Self.UF := '';
  Self.DESCRICAO := '';

end;

end.

