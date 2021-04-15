unit ServerHorse.Model.Entidade.RETORNO_TITULOS;

interface

uses
  SimpleAttributes;

type
  [Tabela('RETORNO_TITULOS')]
  TRETORNO_TITULOS = class
  private
    FID :Integer;
    FID_PESSOA :Integer;
    FID_RETORNO :Integer;
    FTITULO :Integer;
    FTITULOLOCALIZADO :String;
    FTITULOJALIQUIDADO :String;
    FTITULOSEMREGISTRO :String;
    FTITULOLIQUIDADO_LIMITEP :String;
    FTITULORECUSADO :String;
    FSEUNUMERO :String;
    FNOSSONUMERO :String;
    FVALORDOCUMENTO :Currency;
    FVALORPAGO :Currency;
    FVALORRECEBIDO :Currency;
    FVALORJUROS :Currency;
    FVALORDESCONTO :Currency;
    FVALORDESPESA :Currency;
    FDATAOCORRENCIA :TDateTime;
    FIDBANCO :String;
    FIDAGENCIA :String;
    FORIGEM :String;
    FFORMA_PAGAMENTO :String;
    FTIPOOCORRENCIA :Integer;
    FTIPO_OCORRENCIA_DESC :String;
    FMOTREJCOMANDO :String;
    FMOTREJCOMANDODESC :String;
    FHISTORICO :String;

    procedure SetID (const Value :Integer);
    function GetID :Integer;

    procedure SetID_PESSOA (const Value :Integer);
    function GetID_PESSOA :Integer;

    procedure SetID_RETORNO (const Value :Integer);
    function GetID_RETORNO :Integer;

    procedure SetTITULO (const Value :Integer);
    function GetTITULO :Integer;

    procedure SetTITULOLOCALIZADO (const Value :String);
    function GetTITULOLOCALIZADO :String;

    procedure SetTITULOJALIQUIDADO (const Value :String);
    function GetTITULOJALIQUIDADO :String;

    procedure SetTITULOSEMREGISTRO (const Value :String);
    function GetTITULOSEMREGISTRO :String;

    procedure SetTITULOLIQUIDADO_LIMITEP (const Value :String);
    function GetTITULOLIQUIDADO_LIMITEP :String;

    procedure SetTITULORECUSADO (const Value :String);
    function GetTITULORECUSADO :String;

    procedure SetSEUNUMERO (const Value :String);
    function GetSEUNUMERO :String;

    procedure SetNOSSONUMERO (const Value :String);
    function GetNOSSONUMERO :String;

    procedure SetVALORDOCUMENTO (const Value :Currency);
    function GetVALORDOCUMENTO :Currency;

    procedure SetVALORPAGO (const Value :Currency);
    function GetVALORPAGO :Currency;

    procedure SetVALORRECEBIDO (const Value :Currency);
    function GetVALORRECEBIDO :Currency;

    procedure SetVALORJUROS (const Value :Currency);
    function GetVALORJUROS :Currency;

    procedure SetVALORDESCONTO (const Value :Currency);
    function GetVALORDESCONTO :Currency;

    procedure SetVALORDESPESA (const Value :Currency);
    function GetVALORDESPESA :Currency;

    procedure SetDATAOCORRENCIA (const Value :TDateTime);
    function GetDATAOCORRENCIA :TDateTime;

    procedure SetIDBANCO (const Value :String);
    function GetIDBANCO :String;

    procedure SetIDAGENCIA (const Value :String);
    function GetIDAGENCIA :String;

    procedure SetORIGEM (const Value :String);
    function GetORIGEM :String;

    procedure SetFORMA_PAGAMENTO (const Value :String);
    function GetFORMA_PAGAMENTO :String;

    procedure SetTIPOOCORRENCIA (const Value :Integer);
    function GetTIPOOCORRENCIA :Integer;

    procedure SetTIPO_OCORRENCIA_DESC (const Value :String);
    function GetTIPO_OCORRENCIA_DESC :String;

    procedure SetMOTREJCOMANDO (const Value :String);
    function GetMOTREJCOMANDO :String;

    procedure SetMOTREJCOMANDODESC (const Value :String);
    function GetMOTREJCOMANDODESC :String;

    procedure SetHISTORICO (const Value :String);
    function GetHISTORICO :String;


  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    [Campo('ID'), PK, AUTOINC]
    property ID :Integer read GetID write SetID;
    [Campo('ID_PESSOA')]
    property ID_PESSOA :Integer read GetID_PESSOA write SetID_PESSOA;
    [Campo('ID_RETORNO')]
    property ID_RETORNO :Integer read GetID_RETORNO write SetID_RETORNO;
    [Campo('TITULO')]
    property TITULO :Integer read GetTITULO write SetTITULO;
    [Campo('TITULOLOCALIZADO')]
    property TITULOLOCALIZADO :String read GetTITULOLOCALIZADO write SetTITULOLOCALIZADO;
    [Campo('TITULOJALIQUIDADO')]
    property TITULOJALIQUIDADO :String read GetTITULOJALIQUIDADO write SetTITULOJALIQUIDADO;
    [Campo('TITULOSEMREGISTRO')]
    property TITULOSEMREGISTRO :String read GetTITULOSEMREGISTRO write SetTITULOSEMREGISTRO;
    [Campo('TITULOLIQUIDADO_LIMITEP')]
    property TITULOLIQUIDADO_LIMITEP :String read GetTITULOLIQUIDADO_LIMITEP write SetTITULOLIQUIDADO_LIMITEP;
    [Campo('TITULORECUSADO')]
    property TITULORECUSADO :String read GetTITULORECUSADO write SetTITULORECUSADO;
    [Campo('SEUNUMERO')]
    property SEUNUMERO :String read GetSEUNUMERO write SetSEUNUMERO;
    [Campo('NOSSONUMERO')]
    property NOSSONUMERO :String read GetNOSSONUMERO write SetNOSSONUMERO;
    [Campo('VALORDOCUMENTO')]
    property VALORDOCUMENTO :Currency read GetVALORDOCUMENTO write SetVALORDOCUMENTO;
    [Campo('VALORPAGO')]
    property VALORPAGO :Currency read GetVALORPAGO write SetVALORPAGO;
    [Campo('VALORRECEBIDO')]
    property VALORRECEBIDO :Currency read GetVALORRECEBIDO write SetVALORRECEBIDO;
    [Campo('VALORJUROS')]
    property VALORJUROS :Currency read GetVALORJUROS write SetVALORJUROS;
    [Campo('VALORDESCONTO')]
    property VALORDESCONTO :Currency read GetVALORDESCONTO write SetVALORDESCONTO;
    [Campo('VALORDESPESA')]
    property VALORDESPESA :Currency read GetVALORDESPESA write SetVALORDESPESA;
    [Campo('DATAOCORRENCIA')]
    property DATAOCORRENCIA :TDateTime read GetDATAOCORRENCIA write SetDATAOCORRENCIA;
    [Campo('IDBANCO')]
    property IDBANCO :String read GetIDBANCO write SetIDBANCO;
    [Campo('IDAGENCIA')]
    property IDAGENCIA :String read GetIDAGENCIA write SetIDAGENCIA;
    [Campo('ORIGEM')]
    property ORIGEM :String read GetORIGEM write SetORIGEM;
    [Campo('FORMA_PAGAMENTO')]
    property FORMA_PAGAMENTO :String read GetFORMA_PAGAMENTO write SetFORMA_PAGAMENTO;
    [Campo('TIPOOCORRENCIA')]
    property TIPOOCORRENCIA :Integer read GetTIPOOCORRENCIA write SetTIPOOCORRENCIA;
    [Campo('TIPO_OCORRENCIA_DESC')]
    property TIPO_OCORRENCIA_DESC :String read GetTIPO_OCORRENCIA_DESC write SetTIPO_OCORRENCIA_DESC;
    [Campo('MOTREJCOMANDO')]
    property MOTREJCOMANDO :String read GetMOTREJCOMANDO write SetMOTREJCOMANDO;
    [Campo('MOTREJCOMANDODESC')]
    property MOTREJCOMANDODESC :String read GetMOTREJCOMANDODESC write SetMOTREJCOMANDODESC;
    [Campo('HISTORICO')]
    property HISTORICO :String read GetHISTORICO write SetHISTORICO;

end;

implementation

constructor TRETORNO_TITULOS.Create;
begin
  Limpar;
end;

destructor TRETORNO_TITULOS.Destroy;
begin

  inherited;
end;

procedure TRETORNO_TITULOS.SetID (const Value :Integer);
begin
  FID := Value;
end;

function TRETORNO_TITULOS.GetID :Integer;
begin
  Result := FID;
end;

procedure TRETORNO_TITULOS.SetID_PESSOA (const Value :Integer);
begin
  FID_PESSOA := Value;
end;

function TRETORNO_TITULOS.GetID_PESSOA :Integer;
begin
  Result := FID_PESSOA;
end;

procedure TRETORNO_TITULOS.SetID_RETORNO (const Value :Integer);
begin
  FID_RETORNO := Value;
end;

function TRETORNO_TITULOS.GetID_RETORNO :Integer;
begin
  Result := FID_RETORNO;
end;

procedure TRETORNO_TITULOS.SetTITULO (const Value :Integer);
begin
  FTITULO := Value;
end;

function TRETORNO_TITULOS.GetTITULO :Integer;
begin
  Result := FTITULO;
end;

procedure TRETORNO_TITULOS.SetTITULOLOCALIZADO (const Value :String);
begin
  FTITULOLOCALIZADO := Value;
end;

function TRETORNO_TITULOS.GetTITULOLOCALIZADO :String;
begin
  Result := FTITULOLOCALIZADO;
end;

procedure TRETORNO_TITULOS.SetTITULOJALIQUIDADO (const Value :String);
begin
  FTITULOJALIQUIDADO := Value;
end;

function TRETORNO_TITULOS.GetTITULOJALIQUIDADO :String;
begin
  Result := FTITULOJALIQUIDADO;
end;

procedure TRETORNO_TITULOS.SetTITULOSEMREGISTRO (const Value :String);
begin
  FTITULOSEMREGISTRO := Value;
end;

function TRETORNO_TITULOS.GetTITULOSEMREGISTRO :String;
begin
  Result := FTITULOSEMREGISTRO;
end;

procedure TRETORNO_TITULOS.SetTITULOLIQUIDADO_LIMITEP (const Value :String);
begin
  FTITULOLIQUIDADO_LIMITEP := Value;
end;

function TRETORNO_TITULOS.GetTITULOLIQUIDADO_LIMITEP :String;
begin
  Result := FTITULOLIQUIDADO_LIMITEP;
end;

procedure TRETORNO_TITULOS.SetTITULORECUSADO (const Value :String);
begin
  FTITULORECUSADO := Value;
end;

function TRETORNO_TITULOS.GetTITULORECUSADO :String;
begin
  Result := FTITULORECUSADO;
end;

procedure TRETORNO_TITULOS.SetSEUNUMERO (const Value :String);
begin
  FSEUNUMERO := Value;
end;

function TRETORNO_TITULOS.GetSEUNUMERO :String;
begin
  Result := FSEUNUMERO;
end;

procedure TRETORNO_TITULOS.SetNOSSONUMERO (const Value :String);
begin
  FNOSSONUMERO := Value;
end;

function TRETORNO_TITULOS.GetNOSSONUMERO :String;
begin
  Result := FNOSSONUMERO;
end;

procedure TRETORNO_TITULOS.SetVALORDOCUMENTO (const Value :Currency);
begin
  FVALORDOCUMENTO := Value;
end;

function TRETORNO_TITULOS.GetVALORDOCUMENTO :Currency;
begin
  Result := FVALORDOCUMENTO;
end;

procedure TRETORNO_TITULOS.SetVALORPAGO (const Value :Currency);
begin
  FVALORPAGO := Value;
end;

function TRETORNO_TITULOS.GetVALORPAGO :Currency;
begin
  Result := FVALORPAGO;
end;

procedure TRETORNO_TITULOS.SetVALORRECEBIDO (const Value :Currency);
begin
  FVALORRECEBIDO := Value;
end;

function TRETORNO_TITULOS.GetVALORRECEBIDO :Currency;
begin
  Result := FVALORRECEBIDO;
end;

procedure TRETORNO_TITULOS.SetVALORJUROS (const Value :Currency);
begin
  FVALORJUROS := Value;
end;

function TRETORNO_TITULOS.GetVALORJUROS :Currency;
begin
  Result := FVALORJUROS;
end;

procedure TRETORNO_TITULOS.SetVALORDESCONTO (const Value :Currency);
begin
  FVALORDESCONTO := Value;
end;

function TRETORNO_TITULOS.GetVALORDESCONTO :Currency;
begin
  Result := FVALORDESCONTO;
end;

procedure TRETORNO_TITULOS.SetVALORDESPESA (const Value :Currency);
begin
  FVALORDESPESA := Value;
end;

function TRETORNO_TITULOS.GetVALORDESPESA :Currency;
begin
  Result := FVALORDESPESA;
end;

procedure TRETORNO_TITULOS.SetDATAOCORRENCIA (const Value :TDateTime);
begin
  FDATAOCORRENCIA := Value;
end;

function TRETORNO_TITULOS.GetDATAOCORRENCIA :TDateTime;
begin
  Result := FDATAOCORRENCIA;
end;

procedure TRETORNO_TITULOS.SetIDBANCO (const Value :String);
begin
  FIDBANCO := Value;
end;

function TRETORNO_TITULOS.GetIDBANCO :String;
begin
  Result := FIDBANCO;
end;

procedure TRETORNO_TITULOS.SetIDAGENCIA (const Value :String);
begin
  FIDAGENCIA := Value;
end;

function TRETORNO_TITULOS.GetIDAGENCIA :String;
begin
  Result := FIDAGENCIA;
end;

procedure TRETORNO_TITULOS.SetORIGEM (const Value :String);
begin
  FORIGEM := Value;
end;

function TRETORNO_TITULOS.GetORIGEM :String;
begin
  Result := FORIGEM;
end;

procedure TRETORNO_TITULOS.SetFORMA_PAGAMENTO (const Value :String);
begin
  FFORMA_PAGAMENTO := Value;
end;

function TRETORNO_TITULOS.GetFORMA_PAGAMENTO :String;
begin
  Result := FFORMA_PAGAMENTO;
end;

procedure TRETORNO_TITULOS.SetTIPOOCORRENCIA (const Value :Integer);
begin
  FTIPOOCORRENCIA := Value;
end;

function TRETORNO_TITULOS.GetTIPOOCORRENCIA :Integer;
begin
  Result := FTIPOOCORRENCIA;
end;

procedure TRETORNO_TITULOS.SetTIPO_OCORRENCIA_DESC (const Value :String);
begin
  FTIPO_OCORRENCIA_DESC := Value;
end;

function TRETORNO_TITULOS.GetTIPO_OCORRENCIA_DESC :String;
begin
  Result := FTIPO_OCORRENCIA_DESC;
end;

procedure TRETORNO_TITULOS.SetMOTREJCOMANDO (const Value :String);
begin
  FMOTREJCOMANDO := Value;
end;

function TRETORNO_TITULOS.GetMOTREJCOMANDO :String;
begin
  Result := FMOTREJCOMANDO;
end;

procedure TRETORNO_TITULOS.SetMOTREJCOMANDODESC (const Value :String);
begin
  FMOTREJCOMANDODESC := Value;
end;

function TRETORNO_TITULOS.GetMOTREJCOMANDODESC :String;
begin
  Result := FMOTREJCOMANDODESC;
end;

procedure TRETORNO_TITULOS.SetHISTORICO (const Value :String);
begin
  FHISTORICO := Value;
end;

function TRETORNO_TITULOS.GetHISTORICO :String;
begin
  Result := FHISTORICO;
end;


procedure TRETORNO_TITULOS.Limpar;
begin

  Self.ID := 0;
  Self.ID_PESSOA := 0;
  Self.ID_RETORNO := 0;
  Self.TITULO := 0;
  Self.TITULOLOCALIZADO := '';
  Self.TITULOJALIQUIDADO := '';
  Self.TITULOSEMREGISTRO := '';
  Self.TITULOLIQUIDADO_LIMITEP := '';
  Self.TITULORECUSADO := '';
  Self.SEUNUMERO := '';
  Self.NOSSONUMERO := '';
  Self.VALORDOCUMENTO := 0;
  Self.VALORPAGO := 0;
  Self.VALORRECEBIDO := 0;
  Self.VALORJUROS := 0;
  Self.VALORDESCONTO := 0;
  Self.VALORDESPESA := 0;
  Self.DATAOCORRENCIA := 0;
  Self.IDBANCO := '';
  Self.IDAGENCIA := '';
  Self.ORIGEM := '';
  Self.FORMA_PAGAMENTO := '';
  Self.TIPOOCORRENCIA := 0;
  Self.TIPO_OCORRENCIA_DESC := '';
  Self.MOTREJCOMANDO := '';
  Self.MOTREJCOMANDODESC := '';
  Self.HISTORICO := '';

end;

end.

