unit ServerHorse.Model.Entidade.CONFIGURACAO;

interface

uses
  SimpleAttributes;

type
  [Tabela('CONFIGURACAO')]
  TCONFIGURACAO = class
  private
    FID_PESSOA :Integer;
    FDIRRECEBE :String;
    FDIRENVIA :String;
    FDIRRECEBEBKP :String;
    FTARIFABOLETA :Currency;
    FTIPOCOBRANCA :String;
    FCODBANCO :Integer;
    FAGENCIA :Integer;
    FAGENCIADIG :String;
    FCONTA :String;
    FCONTADIG :String;
    FCODCEDENTE :String;
    FCODCEDENTEDIG :String;
    FCONVENIO :String;
    FCARTEIRA :String;
    FMODALIDADE :String;
    FESPECIEDOC :String;
    FCOBMOEDA :String;
    FCOBACEITE :String;
    FLOCALPAGTO :String;
    FINSTRUCAO1 :String;
    FINSTRUCAO2 :String;

    procedure SetID_PESSOA (const Value :Integer);
    function GetID_PESSOA :Integer;

    procedure SetDIRRECEBE (const Value :String);
    function GetDIRRECEBE :String;

    procedure SetDIRENVIA (const Value :String);
    function GetDIRENVIA :String;

    procedure SetDIRRECEBEBKP (const Value :String);
    function GetDIRRECEBEBKP :String;

    procedure SetTARIFABOLETA (const Value :Currency);
    function GetTARIFABOLETA :Currency;

    procedure SetTIPOCOBRANCA (const Value :String);
    function GetTIPOCOBRANCA :String;

    procedure SetCODBANCO (const Value :Integer);
    function GetCODBANCO :Integer;

    procedure SetAGENCIA (const Value :Integer);
    function GetAGENCIA :Integer;

    procedure SetAGENCIADIG (const Value :String);
    function GetAGENCIADIG :String;

    procedure SetCONTA (const Value :String);
    function GetCONTA :String;

    procedure SetCONTADIG (const Value :String);
    function GetCONTADIG :String;

    procedure SetCODCEDENTE (const Value :String);
    function GetCODCEDENTE :String;

    procedure SetCODCEDENTEDIG (const Value :String);
    function GetCODCEDENTEDIG :String;

    procedure SetCONVENIO (const Value :String);
    function GetCONVENIO :String;

    procedure SetCARTEIRA (const Value :String);
    function GetCARTEIRA :String;

    procedure SetMODALIDADE (const Value :String);
    function GetMODALIDADE :String;

    procedure SetESPECIEDOC (const Value :String);
    function GetESPECIEDOC :String;

    procedure SetCOBMOEDA (const Value :String);
    function GetCOBMOEDA :String;

    procedure SetCOBACEITE (const Value :String);
    function GetCOBACEITE :String;

    procedure SetLOCALPAGTO (const Value :String);
    function GetLOCALPAGTO :String;

    procedure SetINSTRUCAO1 (const Value :String);
    function GetINSTRUCAO1 :String;

    procedure SetINSTRUCAO2 (const Value :String);
    function GetINSTRUCAO2 :String;


  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;

    [Campo('ID_PESSOA')]
    property ID_PESSOA :Integer read GetID_PESSOA write SetID_PESSOA;

    [Campo('DIRRECEBE')]
    property DIRRECEBE :String read GetDIRRECEBE write SetDIRRECEBE;

    [Campo('DIRENVIA')]
    property DIRENVIA :String read GetDIRENVIA write SetDIRENVIA;

    [Campo('DIRRECEBEBKP')]
    property DIRRECEBEBKP :String read GetDIRRECEBEBKP write SetDIRRECEBEBKP;

    [Campo('TARIFABOLETA')]
    property TARIFABOLETA :Currency read GetTARIFABOLETA write SetTARIFABOLETA;

    [Campo('TIPOCOBRANCA')]
    property TIPOCOBRANCA :String read GetTIPOCOBRANCA write SetTIPOCOBRANCA;

    [Campo('CODBANCO')]
    property CODBANCO :Integer read GetCODBANCO write SetCODBANCO;

    [Campo('AGENCIA')]
    property AGENCIA :Integer read GetAGENCIA write SetAGENCIA;

    [Campo('AGENCIADIG')]
    property AGENCIADIG :String read GetAGENCIADIG write SetAGENCIADIG;

    [Campo('CONTA')]
    property CONTA :String read GetCONTA write SetCONTA;

    [Campo('CONTADIG')]
    property CONTADIG :String read GetCONTADIG write SetCONTADIG;

    [Campo('CODCEDENTE')]
    property CODCEDENTE :String read GetCODCEDENTE write SetCODCEDENTE;

    [Campo('CODCEDENTEDIG')]
    property CODCEDENTEDIG :String read GetCODCEDENTEDIG write SetCODCEDENTEDIG;

    [Campo('CONVENIO')]
    property CONVENIO :String read GetCONVENIO write SetCONVENIO;

    [Campo('CARTEIRA')]
    property CARTEIRA :String read GetCARTEIRA write SetCARTEIRA;

    [Campo('MODALIDADE')]
    property MODALIDADE :String read GetMODALIDADE write SetMODALIDADE;

    [Campo('ESPECIEDOC')]
    property ESPECIEDOC :String read GetESPECIEDOC write SetESPECIEDOC;

    [Campo('COBMOEDA')]
    property COBMOEDA :String read GetCOBMOEDA write SetCOBMOEDA;

    [Campo('COBACEITE')]
    property COBACEITE :String read GetCOBACEITE write SetCOBACEITE;

    [Campo('LOCALPAGTO')]
    property LOCALPAGTO :String read GetLOCALPAGTO write SetLOCALPAGTO;

    [Campo('INSTRUCAO1')]
    property INSTRUCAO1 :String read GetINSTRUCAO1 write SetINSTRUCAO1;

    [Campo('INSTRUCAO2')]
    property INSTRUCAO2 :String read GetINSTRUCAO2 write SetINSTRUCAO2;

end;

implementation

constructor TCONFIGURACAO.Create;
begin
  Limpar;
end;

destructor TCONFIGURACAO.Destroy;
begin

  inherited;
end;

procedure TCONFIGURACAO.SetID_PESSOA (const Value :Integer);
begin
  FID_PESSOA := Value;
end;

function TCONFIGURACAO.GetID_PESSOA :Integer;
begin
  Result := FID_PESSOA;
end;

procedure TCONFIGURACAO.SetDIRRECEBE (const Value :String);
begin
  FDIRRECEBE := Value;
end;

function TCONFIGURACAO.GetDIRRECEBE :String;
begin
  Result := FDIRRECEBE;
end;

procedure TCONFIGURACAO.SetDIRENVIA (const Value :String);
begin
  FDIRENVIA := Value;
end;

function TCONFIGURACAO.GetDIRENVIA :String;
begin
  Result := FDIRENVIA;
end;

procedure TCONFIGURACAO.SetDIRRECEBEBKP (const Value :String);
begin
  FDIRRECEBEBKP := Value;
end;

function TCONFIGURACAO.GetDIRRECEBEBKP :String;
begin
  Result := FDIRRECEBEBKP;
end;

procedure TCONFIGURACAO.SetTARIFABOLETA (const Value :Currency);
begin
  FTARIFABOLETA := Value;
end;

function TCONFIGURACAO.GetTARIFABOLETA :Currency;
begin
  Result := FTARIFABOLETA;
end;

procedure TCONFIGURACAO.SetTIPOCOBRANCA (const Value :String);
begin
  FTIPOCOBRANCA := Value;
end;

function TCONFIGURACAO.GetTIPOCOBRANCA :String;
begin
  Result := FTIPOCOBRANCA;
end;

procedure TCONFIGURACAO.SetCODBANCO (const Value :Integer);
begin
  FCODBANCO := Value;
end;

function TCONFIGURACAO.GetCODBANCO :Integer;
begin
  Result := FCODBANCO;
end;

procedure TCONFIGURACAO.SetAGENCIA (const Value :Integer);
begin
  FAGENCIA := Value;
end;

function TCONFIGURACAO.GetAGENCIA :Integer;
begin
  Result := FAGENCIA;
end;

procedure TCONFIGURACAO.SetAGENCIADIG (const Value :String);
begin
  FAGENCIADIG := Value;
end;

function TCONFIGURACAO.GetAGENCIADIG :String;
begin
  Result := FAGENCIADIG;
end;

procedure TCONFIGURACAO.SetCONTA (const Value :String);
begin
  FCONTA := Value;
end;

function TCONFIGURACAO.GetCONTA :String;
begin
  Result := FCONTA;
end;

procedure TCONFIGURACAO.SetCONTADIG (const Value :String);
begin
  FCONTADIG := Value;
end;

function TCONFIGURACAO.GetCONTADIG :String;
begin
  Result := FCONTADIG;
end;

procedure TCONFIGURACAO.SetCODCEDENTE (const Value :String);
begin
  FCODCEDENTE := Value;
end;

function TCONFIGURACAO.GetCODCEDENTE :String;
begin
  Result := FCODCEDENTE;
end;

procedure TCONFIGURACAO.SetCODCEDENTEDIG (const Value :String);
begin
  FCODCEDENTEDIG := Value;
end;

function TCONFIGURACAO.GetCODCEDENTEDIG :String;
begin
  Result := FCODCEDENTEDIG;
end;

procedure TCONFIGURACAO.SetCONVENIO (const Value :String);
begin
  FCONVENIO := Value;
end;

function TCONFIGURACAO.GetCONVENIO :String;
begin
  Result := FCONVENIO;
end;

procedure TCONFIGURACAO.SetCARTEIRA (const Value :String);
begin
  FCARTEIRA := Value;
end;

function TCONFIGURACAO.GetCARTEIRA :String;
begin
  Result := FCARTEIRA;
end;

procedure TCONFIGURACAO.SetMODALIDADE (const Value :String);
begin
  FMODALIDADE := Value;
end;

function TCONFIGURACAO.GetMODALIDADE :String;
begin
  Result := FMODALIDADE;
end;

procedure TCONFIGURACAO.SetESPECIEDOC (const Value :String);
begin
  FESPECIEDOC := Value;
end;

function TCONFIGURACAO.GetESPECIEDOC :String;
begin
  Result := FESPECIEDOC;
end;

procedure TCONFIGURACAO.SetCOBMOEDA (const Value :String);
begin
  FCOBMOEDA := Value;
end;

function TCONFIGURACAO.GetCOBMOEDA :String;
begin
  Result := FCOBMOEDA;
end;

procedure TCONFIGURACAO.SetCOBACEITE (const Value :String);
begin
  FCOBACEITE := Value;
end;

function TCONFIGURACAO.GetCOBACEITE :String;
begin
  Result := FCOBACEITE;
end;

procedure TCONFIGURACAO.SetLOCALPAGTO (const Value :String);
begin
  FLOCALPAGTO := Value;
end;

function TCONFIGURACAO.GetLOCALPAGTO :String;
begin
  Result := FLOCALPAGTO;
end;

procedure TCONFIGURACAO.SetINSTRUCAO1 (const Value :String);
begin
  FINSTRUCAO1 := Value;
end;

function TCONFIGURACAO.GetINSTRUCAO1 :String;
begin
  Result := FINSTRUCAO1;
end;

procedure TCONFIGURACAO.SetINSTRUCAO2 (const Value :String);
begin
  FINSTRUCAO2 := Value;
end;

function TCONFIGURACAO.GetINSTRUCAO2 :String;
begin
  Result := FINSTRUCAO2;
end;


procedure TCONFIGURACAO.Limpar;
begin

  Self.ID_PESSOA := 0;
  Self.DIRRECEBE := '';
  Self.DIRENVIA := '';
  Self.DIRRECEBEBKP := '';
  Self.TARIFABOLETA := 0;
  Self.TIPOCOBRANCA := '';
  Self.CODBANCO := 0;
  Self.AGENCIA := 0;
  Self.AGENCIADIG := '';
  Self.CONTA := '';
  Self.CONTADIG := '';
  Self.CODCEDENTE := '';
  Self.CODCEDENTEDIG := '';
  Self.CONVENIO := '';
  Self.CARTEIRA := '';
  Self.MODALIDADE := '';
  Self.ESPECIEDOC := '';
  Self.COBMOEDA := '';
  Self.COBACEITE := '';
  Self.LOCALPAGTO := '';
  Self.INSTRUCAO1 := '';
  Self.INSTRUCAO2 := '';

end;

end.

