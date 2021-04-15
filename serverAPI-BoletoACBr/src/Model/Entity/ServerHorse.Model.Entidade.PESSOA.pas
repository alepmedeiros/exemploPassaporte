unit ServerHorse.Model.Entidade.PESSOA;

interface

uses
  SimpleAttributes;

type
  [Tabela('PESSOA')]
  TPESSOA = class
  private
    FID :Integer;
    FTIPO :String;
    FATIVO :String;
    FOBSERVACOES :String;
    FDATACADASTRO :TDateTime;
    FDATAALTERACAO :TDateTime;
    FFOTO :String;

    procedure SetID (const Value :Integer);
    function GetID :Integer;

    procedure SetTIPO (const Value :String);
    function GetTIPO :String;

    procedure SetATIVO (const Value :String);
    function GetATIVO :String;

    procedure SetOBSERVACOES (const Value :String);
    function GetOBSERVACOES :String;

    procedure SetDATACADASTRO (const Value :TDateTime);
    function GetDATACADASTRO :TDateTime;

    procedure SetDATAALTERACAO (const Value :TDateTime);
    function GetDATAALTERACAO :TDateTime;

    procedure SetFOTO (const Value :String);
    function GetFOTO :String;


  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    [Campo('ID'), PK, AUTOINC]
    property ID :Integer read GetID write SetID;
    [Campo('TIPO')]
    property TIPO :String read GetTIPO write SetTIPO;
    [Campo('ATIVO')]
    property ATIVO :String read GetATIVO write SetATIVO;
    [Campo('OBSERVACOES')]
    property OBSERVACOES :String read GetOBSERVACOES write SetOBSERVACOES;
    [Campo('DATACADASTRO')]
    property DATACADASTRO :TDateTime read GetDATACADASTRO write SetDATACADASTRO;
    [Campo('DATAALTERACAO')]
    property DATAALTERACAO :TDateTime read GetDATAALTERACAO write SetDATAALTERACAO;
    [Campo('FOTO')]
    property FOTO : String read GetFOTO write SetFOTO;

end;

implementation

constructor TPESSOA.Create;
begin
  Limpar;
end;

destructor TPESSOA.Destroy;
begin

  inherited;
end;

procedure TPESSOA.SetID (const Value :Integer);
begin
  FID := Value;
end;

function TPESSOA.GetID :Integer;
begin
  Result := FID;
end;

procedure TPESSOA.SetTIPO (const Value :String);
begin
  FTIPO := Value;
end;

function TPESSOA.GetTIPO :String;
begin
  Result := FTIPO;
end;

procedure TPESSOA.SetATIVO (const Value :String);
begin
  FATIVO := Value;
end;

function TPESSOA.GetATIVO :String;
begin
  Result := FATIVO;
end;

procedure TPESSOA.SetOBSERVACOES (const Value :String);
begin
  FOBSERVACOES := Value;
end;

function TPESSOA.GetOBSERVACOES :String;
begin
  Result := FOBSERVACOES;
end;

procedure TPESSOA.SetDATACADASTRO (const Value :TDateTime);
begin
  FDATACADASTRO := Value;
end;

function TPESSOA.GetDATACADASTRO :TDateTime;
begin
  Result := FDATACADASTRO;
end;

procedure TPESSOA.SetDATAALTERACAO (const Value :TDateTime);
begin
  FDATAALTERACAO := Value;
end;

function TPESSOA.GetDATAALTERACAO :TDateTime;
begin
  Result := FDATAALTERACAO;
end;

procedure TPESSOA.SetFOTO (const Value :String);
begin
  FFOTO := Value;
end;

function TPESSOA.GetFOTO :String;
begin
  Result := FFOTO;
end;


procedure TPESSOA.Limpar;
begin

  Self.ID := 0;
  Self.TIPO := '';
  Self.OBSERVACOES := '';
  Self.DATACADASTRO := 0;
  Self.DATAALTERACAO := 0;

end;

end.

