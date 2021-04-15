unit ServerHorse.Model.Entidade.CONTATO;

interface

uses
  SimpleAttributes;

type
  [Tabela('CONTATO')]
  TCONTATO = class
  private
    FID :Integer;
    FID_PESSOA :Integer;
    FTIPO :String;
    FTELEFONE :String;
    FCELULAR :String;
    FEMAIL :String;
    FCONTATO :String;
    FOBSERVACAO :String;

    procedure SetID (const Value :Integer);
    function GetID :Integer;

    procedure SetID_PESSOA (const Value :Integer);
    function GetID_PESSOA :Integer;

    procedure SetTIPO (const Value :String);
    function GetTIPO :String;

    procedure SetTELEFONE (const Value :String);
    function GetTELEFONE :String;

    procedure SetCELULAR (const Value :String);
    function GetCELULAR :String;

    procedure SetEMAIL (const Value :String);
    function GetEMAIL :String;

    procedure SetCONTATO (const Value :String);
    function GetCONTATO :String;

    procedure SetOBSERVACAO (const Value :String);
    function GetOBSERVACAO :String;


  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    [Campo('ID'), PK, AUTOINC]
    property ID :Integer read GetID write SetID;
    [Campo('ID_PESSOA')]
    property ID_PESSOA :Integer read GetID_PESSOA write SetID_PESSOA;
    [Campo('TIPO')]
    property TIPO :String read GetTIPO write SetTIPO;
    [Campo('TELEFONE')]
    property TELEFONE :String read GetTELEFONE write SetTELEFONE;
    [Campo('CELULAR')]
    property CELULAR :String read GetCELULAR write SetCELULAR;
    [Campo('EMAIL')]
    property EMAIL :String read GetEMAIL write SetEMAIL;
    [Campo('CONTATO')]
    property CONTATO :String read GetCONTATO write SetCONTATO;
    [Campo('OBSERVACAO')]
    property OBSERVACAO :String read GetOBSERVACAO write SetOBSERVACAO;

end;

implementation

constructor TCONTATO.Create;
begin
  Limpar;
end;

destructor TCONTATO.Destroy;
begin

  inherited;
end;

procedure TCONTATO.SetID (const Value :Integer);
begin
  FID := Value;
end;

function TCONTATO.GetID :Integer;
begin
  Result := FID;
end;

procedure TCONTATO.SetID_PESSOA (const Value :Integer);
begin
  FID_PESSOA := Value;
end;

function TCONTATO.GetID_PESSOA :Integer;
begin
  Result := FID_PESSOA;
end;

procedure TCONTATO.SetTIPO (const Value :String);
begin
  FTIPO := Value;
end;

function TCONTATO.GetTIPO :String;
begin
  Result := FTIPO;
end;

procedure TCONTATO.SetTELEFONE (const Value :String);
begin
  FTELEFONE := Value;
end;

function TCONTATO.GetTELEFONE :String;
begin
  Result := FTELEFONE;
end;

procedure TCONTATO.SetCELULAR (const Value :String);
begin
  FCELULAR := Value;
end;

function TCONTATO.GetCELULAR :String;
begin
  Result := FCELULAR;
end;

procedure TCONTATO.SetEMAIL (const Value :String);
begin
  FEMAIL := Value;
end;

function TCONTATO.GetEMAIL :String;
begin
  Result := FEMAIL;
end;

procedure TCONTATO.SetCONTATO (const Value :String);
begin
  FCONTATO := Value;
end;

function TCONTATO.GetCONTATO :String;
begin
  Result := FCONTATO;
end;

procedure TCONTATO.SetOBSERVACAO (const Value :String);
begin
  FOBSERVACAO := Value;
end;

function TCONTATO.GetOBSERVACAO :String;
begin
  Result := FOBSERVACAO;
end;


procedure TCONTATO.Limpar;
begin

  Self.ID := 0;
  Self.ID_PESSOA := 0;
  Self.TIPO := '';
  Self.TELEFONE := '';
  Self.CELULAR := '';
  Self.EMAIL := '';
  Self.CONTATO := '';
  Self.OBSERVACAO := '';

end;

end.

