unit ServerHorse.Model.Entidade.REMESSA_TITULOS;

interface

uses
  SimpleAttributes;

type
  [Tabela('REMESSA_TITULOS')]
  TREMESSA_TITULOS = class
  private
    FID_PESSOA :Integer;
    FID_REMESSA :Integer;
    FID_TITULOS :Integer;
    FDTEMISSAO :TDateTime;
    FDTVENCIMENTO :TDateTime;
    FTIPOPESSOA :String;
    FVALOR :Currency;
    FDTPAGAMENTO :TDateTime;
    FCANCELAMENTO_LOJA :String;
    FPAGAMENTO_LOJA :String;
    FALTERACAO_LOJA :String;

    procedure SetID_PESSOA (const Value :Integer);
    function GetID_PESSOA :Integer;

    procedure SetID_REMESSA (const Value :Integer);
    function GetID_REMESSA :Integer;

    procedure SetID_TITULOS (const Value :Integer);
    function GetID_TITULOS :Integer;

    procedure SetDTEMISSAO (const Value :TDateTime);
    function GetDTEMISSAO :TDateTime;

    procedure SetDTVENCIMENTO (const Value :TDateTime);
    function GetDTVENCIMENTO :TDateTime;

    procedure SetTIPOPESSOA (const Value :String);
    function GetTIPOPESSOA :String;

    procedure SetVALOR (const Value :Currency);
    function GetVALOR :Currency;

    procedure SetDTPAGAMENTO (const Value :TDateTime);
    function GetDTPAGAMENTO :TDateTime;

    procedure SetCANCELAMENTO_LOJA (const Value :String);
    function GetCANCELAMENTO_LOJA :String;

    procedure SetPAGAMENTO_LOJA (const Value :String);
    function GetPAGAMENTO_LOJA :String;

    procedure SetALTERACAO_LOJA (const Value :String);
    function GetALTERACAO_LOJA :String;


  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    [Campo('ID_PESSOA')]
    property ID_PESSOA :Integer read GetID_PESSOA write SetID_PESSOA;
    [Campo('ID_REMESSA')]
    property ID_REMESSA :Integer read GetID_REMESSA write SetID_REMESSA;
    [Campo('ID_TITULOS')]
    property ID_TITULOS :Integer read GetID_TITULOS write SetID_TITULOS;
    [Campo('DTEMISSAO')]
    property DTEMISSAO :TDateTime read GetDTEMISSAO write SetDTEMISSAO;
    [Campo('DTVENCIMENTO')]
    property DTVENCIMENTO :TDateTime read GetDTVENCIMENTO write SetDTVENCIMENTO;
    [Campo('TIPOPESSOA')]
    property TIPOPESSOA :String read GetTIPOPESSOA write SetTIPOPESSOA;
    [Campo('VALOR')]
    property VALOR :Currency read GetVALOR write SetVALOR;
    [Campo('DTPAGAMENTO')]
    property DTPAGAMENTO :TDateTime read GetDTPAGAMENTO write SetDTPAGAMENTO;
    [Campo('CANCELAMENTO_LOJA')]
    property CANCELAMENTO_LOJA :String read GetCANCELAMENTO_LOJA write SetCANCELAMENTO_LOJA;
    [Campo('PAGAMENTO_LOJA')]
    property PAGAMENTO_LOJA :String read GetPAGAMENTO_LOJA write SetPAGAMENTO_LOJA;
    [Campo('ALTERACAO_LOJA')]
    property ALTERACAO_LOJA :String read GetALTERACAO_LOJA write SetALTERACAO_LOJA;

end;

implementation

constructor TREMESSA_TITULOS.Create;
begin
  Limpar;
end;

destructor TREMESSA_TITULOS.Destroy;
begin

  inherited;
end;

procedure TREMESSA_TITULOS.SetID_PESSOA (const Value :Integer);
begin
  FID_PESSOA := Value;
end;

function TREMESSA_TITULOS.GetID_PESSOA :Integer;
begin
  Result := FID_PESSOA;
end;

procedure TREMESSA_TITULOS.SetID_REMESSA (const Value :Integer);
begin
  FID_REMESSA := Value;
end;

function TREMESSA_TITULOS.GetID_REMESSA :Integer;
begin
  Result := FID_REMESSA;
end;

procedure TREMESSA_TITULOS.SetID_TITULOS (const Value :Integer);
begin
  FID_TITULOS := Value;
end;

function TREMESSA_TITULOS.GetID_TITULOS :Integer;
begin
  Result := FID_TITULOS;
end;

procedure TREMESSA_TITULOS.SetDTEMISSAO (const Value :TDateTime);
begin
  FDTEMISSAO := Value;
end;

function TREMESSA_TITULOS.GetDTEMISSAO :TDateTime;
begin
  Result := FDTEMISSAO;
end;

procedure TREMESSA_TITULOS.SetDTVENCIMENTO (const Value :TDateTime);
begin
  FDTVENCIMENTO := Value;
end;

function TREMESSA_TITULOS.GetDTVENCIMENTO :TDateTime;
begin
  Result := FDTVENCIMENTO;
end;

procedure TREMESSA_TITULOS.SetTIPOPESSOA (const Value :String);
begin
  FTIPOPESSOA := Value;
end;

function TREMESSA_TITULOS.GetTIPOPESSOA :String;
begin
  Result := FTIPOPESSOA;
end;

procedure TREMESSA_TITULOS.SetVALOR (const Value :Currency);
begin
  FVALOR := Value;
end;

function TREMESSA_TITULOS.GetVALOR :Currency;
begin
  Result := FVALOR;
end;

procedure TREMESSA_TITULOS.SetDTPAGAMENTO (const Value :TDateTime);
begin
  FDTPAGAMENTO := Value;
end;

function TREMESSA_TITULOS.GetDTPAGAMENTO :TDateTime;
begin
  Result := FDTPAGAMENTO;
end;

procedure TREMESSA_TITULOS.SetCANCELAMENTO_LOJA (const Value :String);
begin
  FCANCELAMENTO_LOJA := Value;
end;

function TREMESSA_TITULOS.GetCANCELAMENTO_LOJA :String;
begin
  Result := FCANCELAMENTO_LOJA;
end;

procedure TREMESSA_TITULOS.SetPAGAMENTO_LOJA (const Value :String);
begin
  FPAGAMENTO_LOJA := Value;
end;

function TREMESSA_TITULOS.GetPAGAMENTO_LOJA :String;
begin
  Result := FPAGAMENTO_LOJA;
end;

procedure TREMESSA_TITULOS.SetALTERACAO_LOJA (const Value :String);
begin
  FALTERACAO_LOJA := Value;
end;

function TREMESSA_TITULOS.GetALTERACAO_LOJA :String;
begin
  Result := FALTERACAO_LOJA;
end;


procedure TREMESSA_TITULOS.Limpar;
begin

  Self.ID_PESSOA := 0;
  Self.ID_REMESSA := 0;
  Self.ID_TITULOS := 0;
  Self.DTEMISSAO := 0;
  Self.DTVENCIMENTO := 0;
  Self.TIPOPESSOA := '';
  Self.VALOR := 0;
  Self.DTPAGAMENTO := 0;
  Self.CANCELAMENTO_LOJA := '';
  Self.PAGAMENTO_LOJA := '';
  Self.ALTERACAO_LOJA := '';

end;

end.

