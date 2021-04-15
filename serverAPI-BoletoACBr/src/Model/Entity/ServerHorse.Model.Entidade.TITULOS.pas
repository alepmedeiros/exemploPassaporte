unit ServerHorse.Model.Entidade.TITULOS;

interface

uses
  SimpleAttributes;

type
  [Tabela('TITULOS')]
  TTITULOS = class
  private
    FID :Integer;
    FID_PESSOA :Integer;
    FID_REMESSA :Integer;
    FSITUACAO :String;
    FDTEMISSAO :TDateTime;
    FDTALTERACAO :TDateTime;
    FDTVENCIMENTO :TDateTime;
    FDTCANCELAMENTO :TDateTime;
    FVALOR :Currency;
    FHISTORICO :String;
    FVLJURO :Currency;
    FVLACRESCIMO :Currency;
    FVLDESCONTO :Currency;
    FVLPAGO :Currency;
    FDTCADASTRO :TDateTime;
    FDTPAGAMENTO :TDateTime;
    FALTERACAO_LOJA :String;
    FPAGAMENTO_LOJA :String;
    FCANCELAMENTO_LOJA :String;
    FCANCELAMENTO_DATA :TDateTime;
    FREMESSA :String;
    FREMESSA_REENVIAR :String;
    FREMESSA_DATA :TDateTime;
    FREMESSA_ARQUIVO :String;
    FREGISTRO_ID_CBR_RETORNO :Integer;
    FREGISTRO_STATUS :String;
    FREGISTRO_DATA :TDateTime;
    FREGISTRO_ARQUIVO :String;
    FREGISTRO_HISTORICO :String;
    FREGISTRO_SEM_REGISTRO :String;
    FREGISTRO_LIMITE_PRAZO :String;
    FRETORNO_HISTORICO :String;
    FOBS :String;

    procedure SetID (const Value :Integer);
    function GetID :Integer;

    procedure SetID_PESSOA (const Value :Integer);
    function GetID_PESSOA :Integer;

    procedure SetID_REMESSA (const Value :Integer);
    function GetID_REMESSA :Integer;

    procedure SetSITUACAO (const Value :String);
    function GetSITUACAO :String;

    procedure SetDTEMISSAO (const Value :TDateTime);
    function GetDTEMISSAO :TDateTime;

    procedure SetDTALTERACAO (const Value :TDateTime);
    function GetDTALTERACAO :TDateTime;

    procedure SetDTVENCIMENTO (const Value :TDateTime);
    function GetDTVENCIMENTO :TDateTime;

    procedure SetDTCANCELAMENTO (const Value :TDateTime);
    function GetDTCANCELAMENTO :TDateTime;

    procedure SetVALOR (const Value :Currency);
    function GetVALOR :Currency;

    procedure SetHISTORICO (const Value :String);
    function GetHISTORICO :String;

    procedure SetVLJURO (const Value :Currency);
    function GetVLJURO :Currency;

    procedure SetVLACRESCIMO (const Value :Currency);
    function GetVLACRESCIMO :Currency;

    procedure SetVLDESCONTO (const Value :Currency);
    function GetVLDESCONTO :Currency;

    procedure SetVLPAGO (const Value :Currency);
    function GetVLPAGO :Currency;

    procedure SetDTCADASTRO (const Value :TDateTime);
    function GetDTCADASTRO :TDateTime;

    procedure SetDTPAGAMENTO (const Value :TDateTime);
    function GetDTPAGAMENTO :TDateTime;

    procedure SetALTERACAO_LOJA (const Value :String);
    function GetALTERACAO_LOJA :String;

    procedure SetPAGAMENTO_LOJA (const Value :String);
    function GetPAGAMENTO_LOJA :String;

    procedure SetCANCELAMENTO_LOJA (const Value :String);
    function GetCANCELAMENTO_LOJA :String;

    procedure SetCANCELAMENTO_DATA (const Value :TDateTime);
    function GetCANCELAMENTO_DATA :TDateTime;

    procedure SetREMESSA (const Value :String);
    function GetREMESSA :String;

    procedure SetREMESSA_REENVIAR (const Value :String);
    function GetREMESSA_REENVIAR :String;

    procedure SetREMESSA_DATA (const Value :TDateTime);
    function GetREMESSA_DATA :TDateTime;

    procedure SetREMESSA_ARQUIVO (const Value :String);
    function GetREMESSA_ARQUIVO :String;

    procedure SetREGISTRO_ID_CBR_RETORNO (const Value :Integer);
    function GetREGISTRO_ID_CBR_RETORNO :Integer;

    procedure SetREGISTRO_STATUS (const Value :String);
    function GetREGISTRO_STATUS :String;

    procedure SetREGISTRO_DATA (const Value :TDateTime);
    function GetREGISTRO_DATA :TDateTime;

    procedure SetREGISTRO_ARQUIVO (const Value :String);
    function GetREGISTRO_ARQUIVO :String;

    procedure SetREGISTRO_HISTORICO (const Value :String);
    function GetREGISTRO_HISTORICO :String;

    procedure SetREGISTRO_SEM_REGISTRO (const Value :String);
    function GetREGISTRO_SEM_REGISTRO :String;

    procedure SetREGISTRO_LIMITE_PRAZO (const Value :String);
    function GetREGISTRO_LIMITE_PRAZO :String;

    procedure SetRETORNO_HISTORICO (const Value :String);
    function GetRETORNO_HISTORICO :String;

    procedure SetOBS (const Value :String);
    function GetOBS :String;


  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    [Campo('ID'), PK, AUTOINC]
    property ID :Integer read GetID write SetID;
    [Campo('ID_PESSOA')]
    property ID_PESSOA :Integer read GetID_PESSOA write SetID_PESSOA;
    [Campo('ID_REMESSA')]
    property ID_REMESSA :Integer read GetID_REMESSA write SetID_REMESSA;
    [Campo('SITUACAO')]
    property SITUACAO :String read GetSITUACAO write SetSITUACAO;
    [Campo('DTEMISSAO')]
    property DTEMISSAO :TDateTime read GetDTEMISSAO write SetDTEMISSAO;
    [Campo('DTALTERACAO')]
    property DTALTERACAO :TDateTime read GetDTALTERACAO write SetDTALTERACAO;
    [Campo('DTVENCIMENTO')]
    property DTVENCIMENTO :TDateTime read GetDTVENCIMENTO write SetDTVENCIMENTO;
    [Campo('DTCANCELAMENTO')]
    property DTCANCELAMENTO :TDateTime read GetDTCANCELAMENTO write SetDTCANCELAMENTO;
    [Campo('VALOR')]
    property VALOR :Currency read GetVALOR write SetVALOR;
    [Campo('HISTORICO')]
    property HISTORICO :String read GetHISTORICO write SetHISTORICO;
    [Campo('VLJURO')]
    property VLJURO :Currency read GetVLJURO write SetVLJURO;
    [Campo('VLACRESCIMO')]
    property VLACRESCIMO :Currency read GetVLACRESCIMO write SetVLACRESCIMO;
    [Campo('VLDESCONTO')]
    property VLDESCONTO :Currency read GetVLDESCONTO write SetVLDESCONTO;
    [Campo('VLPAGO')]
    property VLPAGO :Currency read GetVLPAGO write SetVLPAGO;
    [Campo('DTCADASTRO')]
    property DTCADASTRO :TDateTime read GetDTCADASTRO write SetDTCADASTRO;
    [Campo('DTPAGAMENTO')]
    property DTPAGAMENTO :TDateTime read GetDTPAGAMENTO write SetDTPAGAMENTO;
    [Campo('ALTERACAO_LOJA')]
    property ALTERACAO_LOJA :String read GetALTERACAO_LOJA write SetALTERACAO_LOJA;
    [Campo('PAGAMENTO_LOJA')]
    property PAGAMENTO_LOJA :String read GetPAGAMENTO_LOJA write SetPAGAMENTO_LOJA;
    [Campo('CANCELAMENTO_LOJA')]
    property CANCELAMENTO_LOJA :String read GetCANCELAMENTO_LOJA write SetCANCELAMENTO_LOJA;
    [Campo('CANCELAMENTO_DATA')]
    property CANCELAMENTO_DATA :TDateTime read GetCANCELAMENTO_DATA write SetCANCELAMENTO_DATA;
    [Campo('REMESSA')]
    property REMESSA :String read GetREMESSA write SetREMESSA;
    [Campo('REMESSA_REENVIAR')]
    property REMESSA_REENVIAR :String read GetREMESSA_REENVIAR write SetREMESSA_REENVIAR;
    [Campo('REMESSA_DATA')]
    property REMESSA_DATA :TDateTime read GetREMESSA_DATA write SetREMESSA_DATA;
    [Campo('REMESSA_ARQUIVO')]
    property REMESSA_ARQUIVO :String read GetREMESSA_ARQUIVO write SetREMESSA_ARQUIVO;
    [Campo('REGISTRO_ID_CBR_RETORNO')]
    property REGISTRO_ID_CBR_RETORNO :Integer read GetREGISTRO_ID_CBR_RETORNO write SetREGISTRO_ID_CBR_RETORNO;
    [Campo('REGISTRO_STATUS')]
    property REGISTRO_STATUS :String read GetREGISTRO_STATUS write SetREGISTRO_STATUS;
    [Campo('REGISTRO_DATA')]
    property REGISTRO_DATA :TDateTime read GetREGISTRO_DATA write SetREGISTRO_DATA;
    [Campo('REGISTRO_ARQUIVO')]
    property REGISTRO_ARQUIVO :String read GetREGISTRO_ARQUIVO write SetREGISTRO_ARQUIVO;
    [Campo('REGISTRO_HISTORICO')]
    property REGISTRO_HISTORICO :String read GetREGISTRO_HISTORICO write SetREGISTRO_HISTORICO;
    [Campo('REGISTRO_SEM_REGISTRO')]
    property REGISTRO_SEM_REGISTRO :String read GetREGISTRO_SEM_REGISTRO write SetREGISTRO_SEM_REGISTRO;
    [Campo('REGISTRO_LIMITE_PRAZO')]
    property REGISTRO_LIMITE_PRAZO :String read GetREGISTRO_LIMITE_PRAZO write SetREGISTRO_LIMITE_PRAZO;
    [Campo('RETORNO_HISTORICO')]
    property RETORNO_HISTORICO :String read GetRETORNO_HISTORICO write SetRETORNO_HISTORICO;
    [Campo('OBS')]
    property OBS :String read GetOBS write SetOBS;

end;

implementation

constructor TTITULOS.Create;
begin
  Limpar;
end;

destructor TTITULOS.Destroy;
begin

  inherited;
end;

procedure TTITULOS.SetID (const Value :Integer);
begin
  FID := Value;
end;

function TTITULOS.GetID :Integer;
begin
  Result := FID;
end;

procedure TTITULOS.SetID_PESSOA (const Value :Integer);
begin
  FID_PESSOA := Value;
end;

function TTITULOS.GetID_PESSOA :Integer;
begin
  Result := FID_PESSOA;
end;

procedure TTITULOS.SetID_REMESSA (const Value :Integer);
begin
  FID_REMESSA := Value;
end;

function TTITULOS.GetID_REMESSA :Integer;
begin
  Result := FID_REMESSA;
end;

procedure TTITULOS.SetSITUACAO (const Value :String);
begin
  FSITUACAO := Value;
end;

function TTITULOS.GetSITUACAO :String;
begin
  Result := FSITUACAO;
end;

procedure TTITULOS.SetDTEMISSAO (const Value :TDateTime);
begin
  FDTEMISSAO := Value;
end;

function TTITULOS.GetDTEMISSAO :TDateTime;
begin
  Result := FDTEMISSAO;
end;

procedure TTITULOS.SetDTALTERACAO (const Value :TDateTime);
begin
  FDTALTERACAO := Value;
end;

function TTITULOS.GetDTALTERACAO :TDateTime;
begin
  Result := FDTALTERACAO;
end;

procedure TTITULOS.SetDTVENCIMENTO (const Value :TDateTime);
begin
  FDTVENCIMENTO := Value;
end;

function TTITULOS.GetDTVENCIMENTO :TDateTime;
begin
  Result := FDTVENCIMENTO;
end;

procedure TTITULOS.SetDTCANCELAMENTO (const Value :TDateTime);
begin
  FDTCANCELAMENTO := Value;
end;

function TTITULOS.GetDTCANCELAMENTO :TDateTime;
begin
  Result := FDTCANCELAMENTO;
end;

procedure TTITULOS.SetVALOR (const Value :Currency);
begin
  FVALOR := Value;
end;

function TTITULOS.GetVALOR :Currency;
begin
  Result := FVALOR;
end;

procedure TTITULOS.SetHISTORICO (const Value :String);
begin
  FHISTORICO := Value;
end;

function TTITULOS.GetHISTORICO :String;
begin
  Result := FHISTORICO;
end;

procedure TTITULOS.SetVLJURO (const Value :Currency);
begin
  FVLJURO := Value;
end;

function TTITULOS.GetVLJURO :Currency;
begin
  Result := FVLJURO;
end;

procedure TTITULOS.SetVLACRESCIMO (const Value :Currency);
begin
  FVLACRESCIMO := Value;
end;

function TTITULOS.GetVLACRESCIMO :Currency;
begin
  Result := FVLACRESCIMO;
end;

procedure TTITULOS.SetVLDESCONTO (const Value :Currency);
begin
  FVLDESCONTO := Value;
end;

function TTITULOS.GetVLDESCONTO :Currency;
begin
  Result := FVLDESCONTO;
end;

procedure TTITULOS.SetVLPAGO (const Value :Currency);
begin
  FVLPAGO := Value;
end;

function TTITULOS.GetVLPAGO :Currency;
begin
  Result := FVLPAGO;
end;

procedure TTITULOS.SetDTCADASTRO (const Value :TDateTime);
begin
  FDTCADASTRO := Value;
end;

function TTITULOS.GetDTCADASTRO :TDateTime;
begin
  Result := FDTCADASTRO;
end;

procedure TTITULOS.SetDTPAGAMENTO (const Value :TDateTime);
begin
  FDTPAGAMENTO := Value;
end;

function TTITULOS.GetDTPAGAMENTO :TDateTime;
begin
  Result := FDTPAGAMENTO;
end;

procedure TTITULOS.SetALTERACAO_LOJA (const Value :String);
begin
  FALTERACAO_LOJA := Value;
end;

function TTITULOS.GetALTERACAO_LOJA :String;
begin
  Result := FALTERACAO_LOJA;
end;

procedure TTITULOS.SetPAGAMENTO_LOJA (const Value :String);
begin
  FPAGAMENTO_LOJA := Value;
end;

function TTITULOS.GetPAGAMENTO_LOJA :String;
begin
  Result := FPAGAMENTO_LOJA;
end;

procedure TTITULOS.SetCANCELAMENTO_LOJA (const Value :String);
begin
  FCANCELAMENTO_LOJA := Value;
end;

function TTITULOS.GetCANCELAMENTO_LOJA :String;
begin
  Result := FCANCELAMENTO_LOJA;
end;

procedure TTITULOS.SetCANCELAMENTO_DATA (const Value :TDateTime);
begin
  FCANCELAMENTO_DATA := Value;
end;

function TTITULOS.GetCANCELAMENTO_DATA :TDateTime;
begin
  Result := FCANCELAMENTO_DATA;
end;

procedure TTITULOS.SetREMESSA (const Value :String);
begin
  FREMESSA := Value;
end;

function TTITULOS.GetREMESSA :String;
begin
  Result := FREMESSA;
end;

procedure TTITULOS.SetREMESSA_REENVIAR (const Value :String);
begin
  FREMESSA_REENVIAR := Value;
end;

function TTITULOS.GetREMESSA_REENVIAR :String;
begin
  Result := FREMESSA_REENVIAR;
end;

procedure TTITULOS.SetREMESSA_DATA (const Value :TDateTime);
begin
  FREMESSA_DATA := Value;
end;

function TTITULOS.GetREMESSA_DATA :TDateTime;
begin
  Result := FREMESSA_DATA;
end;

procedure TTITULOS.SetREMESSA_ARQUIVO (const Value :String);
begin
  FREMESSA_ARQUIVO := Value;
end;

function TTITULOS.GetREMESSA_ARQUIVO :String;
begin
  Result := FREMESSA_ARQUIVO;
end;

procedure TTITULOS.SetREGISTRO_ID_CBR_RETORNO (const Value :Integer);
begin
  FREGISTRO_ID_CBR_RETORNO := Value;
end;

function TTITULOS.GetREGISTRO_ID_CBR_RETORNO :Integer;
begin
  Result := FREGISTRO_ID_CBR_RETORNO;
end;

procedure TTITULOS.SetREGISTRO_STATUS (const Value :String);
begin
  FREGISTRO_STATUS := Value;
end;

function TTITULOS.GetREGISTRO_STATUS :String;
begin
  Result := FREGISTRO_STATUS;
end;

procedure TTITULOS.SetREGISTRO_DATA (const Value :TDateTime);
begin
  FREGISTRO_DATA := Value;
end;

function TTITULOS.GetREGISTRO_DATA :TDateTime;
begin
  Result := FREGISTRO_DATA;
end;

procedure TTITULOS.SetREGISTRO_ARQUIVO (const Value :String);
begin
  FREGISTRO_ARQUIVO := Value;
end;

function TTITULOS.GetREGISTRO_ARQUIVO :String;
begin
  Result := FREGISTRO_ARQUIVO;
end;

procedure TTITULOS.SetREGISTRO_HISTORICO (const Value :String);
begin
  FREGISTRO_HISTORICO := Value;
end;

function TTITULOS.GetREGISTRO_HISTORICO :String;
begin
  Result := FREGISTRO_HISTORICO;
end;

procedure TTITULOS.SetREGISTRO_SEM_REGISTRO (const Value :String);
begin
  FREGISTRO_SEM_REGISTRO := Value;
end;

function TTITULOS.GetREGISTRO_SEM_REGISTRO :String;
begin
  Result := FREGISTRO_SEM_REGISTRO;
end;

procedure TTITULOS.SetREGISTRO_LIMITE_PRAZO (const Value :String);
begin
  FREGISTRO_LIMITE_PRAZO := Value;
end;

function TTITULOS.GetREGISTRO_LIMITE_PRAZO :String;
begin
  Result := FREGISTRO_LIMITE_PRAZO;
end;

procedure TTITULOS.SetRETORNO_HISTORICO (const Value :String);
begin
  FRETORNO_HISTORICO := Value;
end;

function TTITULOS.GetRETORNO_HISTORICO :String;
begin
  Result := FRETORNO_HISTORICO;
end;

procedure TTITULOS.SetOBS (const Value :String);
begin
  FOBS := Value;
end;

function TTITULOS.GetOBS :String;
begin
  Result := FOBS;
end;


procedure TTITULOS.Limpar;
begin

  Self.ID := 0;
  Self.ID_PESSOA := 0;
  Self.ID_REMESSA := 0;
  Self.SITUACAO := '';
  Self.DTEMISSAO := 0;
  Self.DTALTERACAO := 0;
  Self.DTVENCIMENTO := 0;
  Self.DTCANCELAMENTO := 0;
  Self.VALOR := 0;
  Self.HISTORICO := '';
  Self.VLJURO := 0;
  Self.VLACRESCIMO := 0;
  Self.VLDESCONTO := 0;
  Self.VLPAGO := 0;
  Self.DTCADASTRO := 0;
  Self.DTPAGAMENTO := 0;
  Self.ALTERACAO_LOJA := '';
  Self.PAGAMENTO_LOJA := '';
  Self.CANCELAMENTO_LOJA := '';
  Self.CANCELAMENTO_DATA := 0;
  Self.REMESSA := '';
  Self.REMESSA_REENVIAR := '';
  Self.REMESSA_DATA := 0;
  Self.REMESSA_ARQUIVO := '';
  Self.REGISTRO_ID_CBR_RETORNO := 0;
  Self.REGISTRO_STATUS := '';
  Self.REGISTRO_DATA := 0;
  Self.REGISTRO_ARQUIVO := '';
  Self.REGISTRO_HISTORICO := '';
  Self.REGISTRO_SEM_REGISTRO := '';
  Self.REGISTRO_LIMITE_PRAZO := '';
  Self.RETORNO_HISTORICO := '';
  Self.OBS := '';

end;

end.

