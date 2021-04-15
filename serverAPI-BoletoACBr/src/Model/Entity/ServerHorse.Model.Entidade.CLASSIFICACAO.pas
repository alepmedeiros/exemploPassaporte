unit ServerHorse.Model.Entidade.CLASSIFICACAO;

interface

uses
  SimpleAttributes;

type
  [Tabela('CLASSIFICACAO')]
  TCLASSIFICACAO = class
  private
    FID :Integer;
    FID_PESSOA :Integer;
    FRAZAOSOCIAL :String;
    FNOMEFANTASIA :String;
    FCPFCNPJ :String;
    FIERG :String;
    FIM :String;
    FNASCIMENTO :TDateTime;
    FESTADOCIVIL :String;
    FCONJUGE :String;
    FCONJUGENASCIMENTO :TDateTime;
    FMAE :String;
    FPAI :String;
    FSEXO :String;
    FOBSERVACOES :String;
    FDATACADASTRO :TDateTime;
    FDATAALTERACAO :TDateTime;

    procedure SetID (const Value :Integer);
    function GetID :Integer;

    procedure SetID_PESSOA (const Value :Integer);
    function GetID_PESSOA :Integer;

    procedure SetRAZAOSOCIAL (const Value :String);
    function GetRAZAOSOCIAL :String;

    procedure SetNOMEFANTASIA (const Value :String);
    function GetNOMEFANTASIA :String;

    procedure SetCPFCNPJ (const Value :String);
    function GetCPFCNPJ :String;

    procedure SetIERG (const Value :String);
    function GetIERG :String;

    procedure SetIM (const Value :String);
    function GetIM :String;

    procedure SetNASCIMENTO (const Value :TDateTime);
    function GetNASCIMENTO :TDateTime;

    procedure SetESTADOCIVIL (const Value :String);
    function GetESTADOCIVIL :String;

    procedure SetCONJUGE (const Value :String);
    function GetCONJUGE :String;

    procedure SetCONJUGENASCIMENTO (const Value :TDateTime);
    function GetCONJUGENASCIMENTO :TDateTime;

    procedure SetMAE (const Value :String);
    function GetMAE :String;

    procedure SetPAI (const Value :String);
    function GetPAI :String;

    procedure SetSEXO (const Value :String);
    function GetSEXO :String;

    procedure SetOBSERVACOES (const Value :String);
    function GetOBSERVACOES :String;

    procedure SetDATACADASTRO (const Value :TDateTime);
    function GetDATACADASTRO :TDateTime;

    procedure SetDATAALTERACAO (const Value :TDateTime);
    function GetDATAALTERACAO :TDateTime;


  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    [Campo('ID'), PK, AUTOINC]
    property ID :Integer read GetID write SetID;
    [Campo('ID_PESSOA')]
    property ID_PESSOA :Integer read GetID_PESSOA write SetID_PESSOA;
    [Campo('RAZAOSOCIAL')]
    property RAZAOSOCIAL :String read GetRAZAOSOCIAL write SetRAZAOSOCIAL;
    [Campo('NOMEFANTASIA')]
    property NOMEFANTASIA :String read GetNOMEFANTASIA write SetNOMEFANTASIA;
    [Campo('CPFCNPJ')]
    property CPFCNPJ :String read GetCPFCNPJ write SetCPFCNPJ;
    [Campo('IERG')]
    property IERG :String read GetIERG write SetIERG;
    [Campo('IM')]
    property IM :String read GetIM write SetIM;
    [Campo('NASCIMENTO')]
    property NASCIMENTO :TDateTime read GetNASCIMENTO write SetNASCIMENTO;
    [Campo('ESTADOCIVIL')]
    property ESTADOCIVIL :String read GetESTADOCIVIL write SetESTADOCIVIL;
    [Campo('CONJUGE')]
    property CONJUGE :String read GetCONJUGE write SetCONJUGE;
    [Campo('CONJUGENASCIMENTO')]
    property CONJUGENASCIMENTO :TDateTime read GetCONJUGENASCIMENTO write SetCONJUGENASCIMENTO;
    [Campo('MAE')]
    property MAE :String read GetMAE write SetMAE;
    [Campo('PAI')]
    property PAI :String read GetPAI write SetPAI;
    [Campo('SEXO')]
    property SEXO :String read GetSEXO write SetSEXO;
    [Campo('OBSERVACOES')]
    property OBSERVACOES :String read GetOBSERVACOES write SetOBSERVACOES;
    [Campo('DATACADASTRO')]
    property DATACADASTRO :TDateTime read GetDATACADASTRO write SetDATACADASTRO;
    [Campo('DATAALTERACAO')]
    property DATAALTERACAO :TDateTime read GetDATAALTERACAO write SetDATAALTERACAO;

end;

implementation

constructor TCLASSIFICACAO.Create;
begin
  Limpar;
end;

destructor TCLASSIFICACAO.Destroy;
begin

  inherited;
end;

procedure TCLASSIFICACAO.SetID (const Value :Integer);
begin
  FID := Value;
end;

function TCLASSIFICACAO.GetID :Integer;
begin
  Result := FID;
end;

procedure TCLASSIFICACAO.SetID_PESSOA (const Value :Integer);
begin
  FID_PESSOA := Value;
end;

function TCLASSIFICACAO.GetID_PESSOA :Integer;
begin
  Result := FID_PESSOA;
end;

procedure TCLASSIFICACAO.SetRAZAOSOCIAL (const Value :String);
begin
  FRAZAOSOCIAL := Value;
end;

function TCLASSIFICACAO.GetRAZAOSOCIAL :String;
begin
  Result := FRAZAOSOCIAL;
end;

procedure TCLASSIFICACAO.SetNOMEFANTASIA (const Value :String);
begin
  FNOMEFANTASIA := Value;
end;

function TCLASSIFICACAO.GetNOMEFANTASIA :String;
begin
  Result := FNOMEFANTASIA;
end;

procedure TCLASSIFICACAO.SetCPFCNPJ (const Value :String);
begin
  FCPFCNPJ := Value;
end;

function TCLASSIFICACAO.GetCPFCNPJ :String;
begin
  Result := FCPFCNPJ;
end;

procedure TCLASSIFICACAO.SetIERG (const Value :String);
begin
  FIERG := Value;
end;

function TCLASSIFICACAO.GetIERG :String;
begin
  Result := FIERG;
end;

procedure TCLASSIFICACAO.SetIM (const Value :String);
begin
  FIM := Value;
end;

function TCLASSIFICACAO.GetIM :String;
begin
  Result := FIM;
end;

procedure TCLASSIFICACAO.SetNASCIMENTO (const Value :TDateTime);
begin
  FNASCIMENTO := Value;
end;

function TCLASSIFICACAO.GetNASCIMENTO :TDateTime;
begin
  Result := FNASCIMENTO;
end;

procedure TCLASSIFICACAO.SetESTADOCIVIL (const Value :String);
begin
  FESTADOCIVIL := Value;
end;

function TCLASSIFICACAO.GetESTADOCIVIL :String;
begin
  Result := FESTADOCIVIL;
end;

procedure TCLASSIFICACAO.SetCONJUGE (const Value :String);
begin
  FCONJUGE := Value;
end;

function TCLASSIFICACAO.GetCONJUGE :String;
begin
  Result := FCONJUGE;
end;

procedure TCLASSIFICACAO.SetCONJUGENASCIMENTO (const Value :TDateTime);
begin
  FCONJUGENASCIMENTO := Value;
end;

function TCLASSIFICACAO.GetCONJUGENASCIMENTO :TDateTime;
begin
  Result := FCONJUGENASCIMENTO;
end;

procedure TCLASSIFICACAO.SetMAE (const Value :String);
begin
  FMAE := Value;
end;

function TCLASSIFICACAO.GetMAE :String;
begin
  Result := FMAE;
end;

procedure TCLASSIFICACAO.SetPAI (const Value :String);
begin
  FPAI := Value;
end;

function TCLASSIFICACAO.GetPAI :String;
begin
  Result := FPAI;
end;

procedure TCLASSIFICACAO.SetSEXO (const Value :String);
begin
  FSEXO := Value;
end;

function TCLASSIFICACAO.GetSEXO :String;
begin
  Result := FSEXO;
end;

procedure TCLASSIFICACAO.SetOBSERVACOES (const Value :String);
begin
  FOBSERVACOES := Value;
end;

function TCLASSIFICACAO.GetOBSERVACOES :String;
begin
  Result := FOBSERVACOES;
end;

procedure TCLASSIFICACAO.SetDATACADASTRO (const Value :TDateTime);
begin
  FDATACADASTRO := Value;
end;

function TCLASSIFICACAO.GetDATACADASTRO :TDateTime;
begin
  Result := FDATACADASTRO;
end;

procedure TCLASSIFICACAO.SetDATAALTERACAO (const Value :TDateTime);
begin
  FDATAALTERACAO := Value;
end;

function TCLASSIFICACAO.GetDATAALTERACAO :TDateTime;
begin
  Result := FDATAALTERACAO;
end;


procedure TCLASSIFICACAO.Limpar;
begin

  Self.ID := 0;
  Self.ID_PESSOA := 0;
  Self.RAZAOSOCIAL := '';
  Self.NOMEFANTASIA := '';
  Self.CPFCNPJ := '';
  Self.IERG := '';
  Self.IM := '';
  Self.NASCIMENTO := 0;
  Self.ESTADOCIVIL := '';
  Self.CONJUGE := '';
  Self.CONJUGENASCIMENTO := 0;
  Self.MAE := '';
  Self.PAI := '';
  Self.SEXO := '';
  Self.OBSERVACOES := '';
  Self.DATACADASTRO := 0;
  Self.DATAALTERACAO := 0;

end;

end.

