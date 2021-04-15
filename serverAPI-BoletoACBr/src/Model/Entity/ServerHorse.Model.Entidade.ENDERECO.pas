unit ServerHorse.Model.Entidade.ENDERECO;

interface

uses
  SimpleAttributes;

type
  [Tabela('ENDERECO')]
  TENDERECO = class
  private
    FID :Integer;
    FID_PESSOA :Integer;
    FID_CIDADE :Integer;
    FTIPO :String;
    FLOGRADOURO :String;
    FNUMERO :String;
    FCOMPLEMENTO :String;
    FBAIRRO :String;

    procedure SetID (const Value :Integer);
    function GetID :Integer;

    procedure SetID_PESSOA (const Value :Integer);
    function GetID_PESSOA :Integer;

    procedure SetID_CIDADE (const Value :Integer);
    function GetID_CIDADE :Integer;

    procedure SetTIPO (const Value :String);
    function GetTIPO :String;

    procedure SetLOGRADOURO (const Value :String);
    function GetLOGRADOURO :String;

    procedure SetNUMERO (const Value :String);
    function GetNUMERO :String;

    procedure SetCOMPLEMENTO (const Value :String);
    function GetCOMPLEMENTO :String;

    procedure SetBAIRRO (const Value :String);
    function GetBAIRRO :String;


  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    [Campo('ID'), PK, AUTOINC]
    property ID :Integer read GetID write SetID;
    [Campo('ID_PESSOA')]
    property ID_PESSOA :Integer read GetID_PESSOA write SetID_PESSOA;
    [Campo('ID_CIDADE')]
    property ID_CIDADE :Integer read GetID_CIDADE write SetID_CIDADE;
    [Campo('TIPO')]
    property TIPO :String read GetTIPO write SetTIPO;
    [Campo('LOGRADOURO')]
    property LOGRADOURO :String read GetLOGRADOURO write SetLOGRADOURO;
    [Campo('NUMERO')]
    property NUMERO :String read GetNUMERO write SetNUMERO;
    [Campo('COMPLEMENTO')]
    property COMPLEMENTO :String read GetCOMPLEMENTO write SetCOMPLEMENTO;
    [Campo('BAIRRO')]
    property BAIRRO :String read GetBAIRRO write SetBAIRRO;

end;

implementation

constructor TENDERECO.Create;
begin
  Limpar;
end;

destructor TENDERECO.Destroy;
begin

  inherited;
end;

procedure TENDERECO.SetID (const Value :Integer);
begin
  FID := Value;
end;

function TENDERECO.GetID :Integer;
begin
  Result := FID;
end;

procedure TENDERECO.SetID_PESSOA (const Value :Integer);
begin
  FID_PESSOA := Value;
end;

function TENDERECO.GetID_PESSOA :Integer;
begin
  Result := FID_PESSOA;
end;

procedure TENDERECO.SetID_CIDADE (const Value :Integer);
begin
  FID_CIDADE := Value;
end;

function TENDERECO.GetID_CIDADE :Integer;
begin
  Result := FID_CIDADE;
end;

procedure TENDERECO.SetTIPO (const Value :String);
begin
  FTIPO := Value;
end;

function TENDERECO.GetTIPO :String;
begin
  Result := FTIPO;
end;

procedure TENDERECO.SetLOGRADOURO (const Value :String);
begin
  FLOGRADOURO := Value;
end;

function TENDERECO.GetLOGRADOURO :String;
begin
  Result := FLOGRADOURO;
end;

procedure TENDERECO.SetNUMERO (const Value :String);
begin
  FNUMERO := Value;
end;

function TENDERECO.GetNUMERO :String;
begin
  Result := FNUMERO;
end;

procedure TENDERECO.SetCOMPLEMENTO (const Value :String);
begin
  FCOMPLEMENTO := Value;
end;

function TENDERECO.GetCOMPLEMENTO :String;
begin
  Result := FCOMPLEMENTO;
end;

procedure TENDERECO.SetBAIRRO (const Value :String);
begin
  FBAIRRO := Value;
end;

function TENDERECO.GetBAIRRO :String;
begin
  Result := FBAIRRO;
end;


procedure TENDERECO.Limpar;
begin

  Self.ID := 0;
  Self.ID_PESSOA := 0;
  Self.ID_CIDADE := 0;
  Self.TIPO := '';
  Self.LOGRADOURO := '';
  Self.NUMERO := '';
  Self.COMPLEMENTO := '';
  Self.BAIRRO := '';

end;

end.

