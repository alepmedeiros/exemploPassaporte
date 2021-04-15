unit ServerHorse.Model.Entidade.REMESSA;

interface

uses
  SimpleAttributes;

type
  [Tabela('REMESSA')]
  TREMESSA = class
  private
    FID :Integer;
    FID_PESSOA :Integer;
    FDATA :TDateTime;
    FBANCO :Integer;
    FAGENCIA :String;
    FAGENCIA_DIGITO :String;
    FCONTA :String;
    FCONTA_DIGITO :String;
    FCODIGO_CEDENTE :String;
    FCONVENIO :String;
    FMODALIDADE :String;
    FLOCAL_DE_PAGAMENTO :String;
    FMENSAGEM :String;
    FINSTRUCAO1 :String;
    FINSTRUCAO2 :String;
    FPERCENTUAL_JUROS :Currency;
    FPERCENTUAL_MULTA :Currency;
    FCARTEIRA :String;
    FARQUIVO :String;
    FDATA_GERACAO :TDateTime;
    FLOCAL_ARQUIVO :String;
    FDATA_PROC_BANCO :TDateTime;
    FCANCELADA :String;

    procedure SetID (const Value :Integer);
    function GetID :Integer;

    procedure SetID_PESSOA (const Value :Integer);
    function GetID_PESSOA :Integer;

    procedure SetDATA (const Value :TDateTime);
    function GetDATA :TDateTime;

    procedure SetBANCO (const Value :Integer);
    function GetBANCO :Integer;

    procedure SetAGENCIA (const Value :String);
    function GetAGENCIA :String;

    procedure SetAGENCIA_DIGITO (const Value :String);
    function GetAGENCIA_DIGITO :String;

    procedure SetCONTA (const Value :String);
    function GetCONTA :String;

    procedure SetCONTA_DIGITO (const Value :String);
    function GetCONTA_DIGITO :String;

    procedure SetCODIGO_CEDENTE (const Value :String);
    function GetCODIGO_CEDENTE :String;

    procedure SetCONVENIO (const Value :String);
    function GetCONVENIO :String;

    procedure SetMODALIDADE (const Value :String);
    function GetMODALIDADE :String;

    procedure SetLOCAL_DE_PAGAMENTO (const Value :String);
    function GetLOCAL_DE_PAGAMENTO :String;

    procedure SetMENSAGEM (const Value :String);
    function GetMENSAGEM :String;

    procedure SetINSTRUCAO1 (const Value :String);
    function GetINSTRUCAO1 :String;

    procedure SetINSTRUCAO2 (const Value :String);
    function GetINSTRUCAO2 :String;

    procedure SetPERCENTUAL_JUROS (const Value :Currency);
    function GetPERCENTUAL_JUROS :Currency;

    procedure SetPERCENTUAL_MULTA (const Value :Currency);
    function GetPERCENTUAL_MULTA :Currency;

    procedure SetCARTEIRA (const Value :String);
    function GetCARTEIRA :String;

    procedure SetARQUIVO (const Value :String);
    function GetARQUIVO :String;

    procedure SetDATA_GERACAO (const Value :TDateTime);
    function GetDATA_GERACAO :TDateTime;

    procedure SetLOCAL_ARQUIVO (const Value :String);
    function GetLOCAL_ARQUIVO :String;

    procedure SetDATA_PROC_BANCO (const Value :TDateTime);
    function GetDATA_PROC_BANCO :TDateTime;

    procedure SetCANCELADA (const Value :String);
    function GetCANCELADA :String;


  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    [Campo('ID'), PK, AUTOINC]
    property ID :Integer read GetID write SetID;
    [Campo('ID_PESSOA')]
    property ID_PESSOA :Integer read GetID_PESSOA write SetID_PESSOA;
    [Campo('DATA')]
    property DATA :TDateTime read GetDATA write SetDATA;
    [Campo('BANCO')]
    property BANCO :Integer read GetBANCO write SetBANCO;
    [Campo('AGENCIA')]
    property AGENCIA :String read GetAGENCIA write SetAGENCIA;
    [Campo('AGENCIA_DIGITO')]
    property AGENCIA_DIGITO :String read GetAGENCIA_DIGITO write SetAGENCIA_DIGITO;
    [Campo('CONTA')]
    property CONTA :String read GetCONTA write SetCONTA;
    [Campo('CONTA_DIGITO')]
    property CONTA_DIGITO :String read GetCONTA_DIGITO write SetCONTA_DIGITO;
    [Campo('CODIGO_CEDENTE')]
    property CODIGO_CEDENTE :String read GetCODIGO_CEDENTE write SetCODIGO_CEDENTE;
    [Campo('CONVENIO')]
    property CONVENIO :String read GetCONVENIO write SetCONVENIO;
    [Campo('MODALIDADE')]
    property MODALIDADE :String read GetMODALIDADE write SetMODALIDADE;
    [Campo('LOCAL_DE_PAGAMENTO')]
    property LOCAL_DE_PAGAMENTO :String read GetLOCAL_DE_PAGAMENTO write SetLOCAL_DE_PAGAMENTO;
    [Campo('MENSAGEM')]
    property MENSAGEM :String read GetMENSAGEM write SetMENSAGEM;
    [Campo('INSTRUCAO1')]
    property INSTRUCAO1 :String read GetINSTRUCAO1 write SetINSTRUCAO1;
    [Campo('INSTRUCAO2')]
    property INSTRUCAO2 :String read GetINSTRUCAO2 write SetINSTRUCAO2;
    [Campo('PERCENTUAL_JUROS')]
    property PERCENTUAL_JUROS :Currency read GetPERCENTUAL_JUROS write SetPERCENTUAL_JUROS;
    [Campo('PERCENTUAL_MULTA')]
    property PERCENTUAL_MULTA :Currency read GetPERCENTUAL_MULTA write SetPERCENTUAL_MULTA;
    [Campo('CARTEIRA')]
    property CARTEIRA :String read GetCARTEIRA write SetCARTEIRA;
    [Campo('ARQUIVO')]
    property ARQUIVO :String read GetARQUIVO write SetARQUIVO;
    [Campo('DATA_GERACAO')]
    property DATA_GERACAO :TDateTime read GetDATA_GERACAO write SetDATA_GERACAO;
    [Campo('LOCAL_ARQUIVO')]
    property LOCAL_ARQUIVO :String read GetLOCAL_ARQUIVO write SetLOCAL_ARQUIVO;
    [Campo('DATA_PROC_BANCO')]
    property DATA_PROC_BANCO :TDateTime read GetDATA_PROC_BANCO write SetDATA_PROC_BANCO;
    [Campo('CANCELADA')]
    property CANCELADA :String read GetCANCELADA write SetCANCELADA;

end;

implementation

constructor TREMESSA.Create;
begin
  Limpar;
end;

destructor TREMESSA.Destroy;
begin

  inherited;
end;

procedure TREMESSA.SetID (const Value :Integer);
begin
  FID := Value;
end;

function TREMESSA.GetID :Integer;
begin
  Result := FID;
end;

procedure TREMESSA.SetID_PESSOA (const Value :Integer);
begin
  FID_PESSOA := Value;
end;

function TREMESSA.GetID_PESSOA :Integer;
begin
  Result := FID_PESSOA;
end;

procedure TREMESSA.SetDATA (const Value :TDateTime);
begin
  FDATA := Value;
end;

function TREMESSA.GetDATA :TDateTime;
begin
  Result := FDATA;
end;

procedure TREMESSA.SetBANCO (const Value :Integer);
begin
  FBANCO := Value;
end;

function TREMESSA.GetBANCO :Integer;
begin
  Result := FBANCO;
end;

procedure TREMESSA.SetAGENCIA (const Value :String);
begin
  FAGENCIA := Value;
end;

function TREMESSA.GetAGENCIA :String;
begin
  Result := FAGENCIA;
end;

procedure TREMESSA.SetAGENCIA_DIGITO (const Value :String);
begin
  FAGENCIA_DIGITO := Value;
end;

function TREMESSA.GetAGENCIA_DIGITO :String;
begin
  Result := FAGENCIA_DIGITO;
end;

procedure TREMESSA.SetCONTA (const Value :String);
begin
  FCONTA := Value;
end;

function TREMESSA.GetCONTA :String;
begin
  Result := FCONTA;
end;

procedure TREMESSA.SetCONTA_DIGITO (const Value :String);
begin
  FCONTA_DIGITO := Value;
end;

function TREMESSA.GetCONTA_DIGITO :String;
begin
  Result := FCONTA_DIGITO;
end;

procedure TREMESSA.SetCODIGO_CEDENTE (const Value :String);
begin
  FCODIGO_CEDENTE := Value;
end;

function TREMESSA.GetCODIGO_CEDENTE :String;
begin
  Result := FCODIGO_CEDENTE;
end;

procedure TREMESSA.SetCONVENIO (const Value :String);
begin
  FCONVENIO := Value;
end;

function TREMESSA.GetCONVENIO :String;
begin
  Result := FCONVENIO;
end;

procedure TREMESSA.SetMODALIDADE (const Value :String);
begin
  FMODALIDADE := Value;
end;

function TREMESSA.GetMODALIDADE :String;
begin
  Result := FMODALIDADE;
end;

procedure TREMESSA.SetLOCAL_DE_PAGAMENTO (const Value :String);
begin
  FLOCAL_DE_PAGAMENTO := Value;
end;

function TREMESSA.GetLOCAL_DE_PAGAMENTO :String;
begin
  Result := FLOCAL_DE_PAGAMENTO;
end;

procedure TREMESSA.SetMENSAGEM (const Value :String);
begin
  FMENSAGEM := Value;
end;

function TREMESSA.GetMENSAGEM :String;
begin
  Result := FMENSAGEM;
end;

procedure TREMESSA.SetINSTRUCAO1 (const Value :String);
begin
  FINSTRUCAO1 := Value;
end;

function TREMESSA.GetINSTRUCAO1 :String;
begin
  Result := FINSTRUCAO1;
end;

procedure TREMESSA.SetINSTRUCAO2 (const Value :String);
begin
  FINSTRUCAO2 := Value;
end;

function TREMESSA.GetINSTRUCAO2 :String;
begin
  Result := FINSTRUCAO2;
end;

procedure TREMESSA.SetPERCENTUAL_JUROS (const Value :Currency);
begin
  FPERCENTUAL_JUROS := Value;
end;

function TREMESSA.GetPERCENTUAL_JUROS :Currency;
begin
  Result := FPERCENTUAL_JUROS;
end;

procedure TREMESSA.SetPERCENTUAL_MULTA (const Value :Currency);
begin
  FPERCENTUAL_MULTA := Value;
end;

function TREMESSA.GetPERCENTUAL_MULTA :Currency;
begin
  Result := FPERCENTUAL_MULTA;
end;

procedure TREMESSA.SetCARTEIRA (const Value :String);
begin
  FCARTEIRA := Value;
end;

function TREMESSA.GetCARTEIRA :String;
begin
  Result := FCARTEIRA;
end;

procedure TREMESSA.SetARQUIVO (const Value :String);
begin
  FARQUIVO := Value;
end;

function TREMESSA.GetARQUIVO :String;
begin
  Result := FARQUIVO;
end;

procedure TREMESSA.SetDATA_GERACAO (const Value :TDateTime);
begin
  FDATA_GERACAO := Value;
end;

function TREMESSA.GetDATA_GERACAO :TDateTime;
begin
  Result := FDATA_GERACAO;
end;

procedure TREMESSA.SetLOCAL_ARQUIVO (const Value :String);
begin
  FLOCAL_ARQUIVO := Value;
end;

function TREMESSA.GetLOCAL_ARQUIVO :String;
begin
  Result := FLOCAL_ARQUIVO;
end;

procedure TREMESSA.SetDATA_PROC_BANCO (const Value :TDateTime);
begin
  FDATA_PROC_BANCO := Value;
end;

function TREMESSA.GetDATA_PROC_BANCO :TDateTime;
begin
  Result := FDATA_PROC_BANCO;
end;

procedure TREMESSA.SetCANCELADA (const Value :String);
begin
  FCANCELADA := Value;
end;

function TREMESSA.GetCANCELADA :String;
begin
  Result := FCANCELADA;
end;


procedure TREMESSA.Limpar;
begin

  Self.ID := 0;
  Self.ID_PESSOA := 0;
  Self.DATA := 0;
  Self.BANCO := 0;
  Self.AGENCIA := '';
  Self.AGENCIA_DIGITO := '';
  Self.CONTA := '';
  Self.CONTA_DIGITO := '';
  Self.CODIGO_CEDENTE := '';
  Self.CONVENIO := '';
  Self.MODALIDADE := '';
  Self.LOCAL_DE_PAGAMENTO := '';
  Self.MENSAGEM := '';
  Self.INSTRUCAO1 := '';
  Self.INSTRUCAO2 := '';
  Self.PERCENTUAL_JUROS := 0;
  Self.PERCENTUAL_MULTA := 0;
  Self.CARTEIRA := '';
  Self.DATA_GERACAO := 0;
  Self.LOCAL_ARQUIVO := '';
  Self.DATA_PROC_BANCO := 0;
  Self.CANCELADA := '';

end;

end.

