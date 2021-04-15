unit ServerHorse.Model.Entidade.RETORNO;

interface

uses
  SimpleAttributes;

type
  [Tabela('RETORNO')]
  TRETORNO = class
  private
    FID :Integer;
    FID_PESSOA :Integer;
    FDTHRCADASTRO :TDateTime;
    FDTHRPROCESSAMENTO :TDateTime;
    FDTHRARQUIVAMENTO :TDateTime;
    FARQUIVO :TDateTime;
    FARQUIVONOME :String;
    FARQUIVODATA :TDateTime;
    FARQUIVONUMERO :Integer;
    FARQUIVOLOCAL :String;
    FARQUIVOMD5 :String;
    FQUANTTITULOS :Integer;
    FSITUACAO :Integer;

    procedure SetID (const Value :Integer);
    function GetID :Integer;

    procedure SetID_PESSOA (const Value :Integer);
    function GetID_PESSOA :Integer;

    procedure SetDTHRCADASTRO (const Value :TDateTime);
    function GetDTHRCADASTRO :TDateTime;

    procedure SetDTHRPROCESSAMENTO (const Value :TDateTime);
    function GetDTHRPROCESSAMENTO :TDateTime;

    procedure SetDTHRARQUIVAMENTO (const Value :TDateTime);
    function GetDTHRARQUIVAMENTO :TDateTime;

    procedure SetARQUIVO (const Value :TDateTime);
    function GetARQUIVO :TDateTime;

    procedure SetARQUIVONOME (const Value :String);
    function GetARQUIVONOME :String;

    procedure SetARQUIVODATA (const Value :TDateTime);
    function GetARQUIVODATA :TDateTime;

    procedure SetARQUIVONUMERO (const Value :Integer);
    function GetARQUIVONUMERO :Integer;

    procedure SetARQUIVOLOCAL (const Value :String);
    function GetARQUIVOLOCAL :String;

    procedure SetARQUIVOMD5 (const Value :String);
    function GetARQUIVOMD5 :String;

    procedure SetQUANTTITULOS (const Value :Integer);
    function GetQUANTTITULOS :Integer;

    procedure SetSITUACAO (const Value :Integer);
    function GetSITUACAO :Integer;


  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    [Campo('ID'), PK, AUTOINC]
    property ID :Integer read GetID write SetID;
    [Campo('ID_PESSOA')]
    property ID_PESSOA :Integer read GetID_PESSOA write SetID_PESSOA;
    [Campo('DTHRCADASTRO')]
    property DTHRCADASTRO :TDateTime read GetDTHRCADASTRO write SetDTHRCADASTRO;
    [Campo('DTHRPROCESSAMENTO')]
    property DTHRPROCESSAMENTO :TDateTime read GetDTHRPROCESSAMENTO write SetDTHRPROCESSAMENTO;
    [Campo('DTHRARQUIVAMENTO')]
    property DTHRARQUIVAMENTO :TDateTime read GetDTHRARQUIVAMENTO write SetDTHRARQUIVAMENTO;
    [Campo('ARQUIVO')]
    property ARQUIVO :TDateTime read GetARQUIVO write SetARQUIVO;
    [Campo('ARQUIVONOME')]
    property ARQUIVONOME :String read GetARQUIVONOME write SetARQUIVONOME;
    [Campo('ARQUIVODATA')]
    property ARQUIVODATA :TDateTime read GetARQUIVODATA write SetARQUIVODATA;
    [Campo('ARQUIVONUMERO')]
    property ARQUIVONUMERO :Integer read GetARQUIVONUMERO write SetARQUIVONUMERO;
    [Campo('ARQUIVOLOCAL')]
    property ARQUIVOLOCAL :String read GetARQUIVOLOCAL write SetARQUIVOLOCAL;
    [Campo('ARQUIVOMD5')]
    property ARQUIVOMD5 :String read GetARQUIVOMD5 write SetARQUIVOMD5;
    [Campo('QUANTTITULOS')]
    property QUANTTITULOS :Integer read GetQUANTTITULOS write SetQUANTTITULOS;
    [Campo('SITUACAO')]
    property SITUACAO :Integer read GetSITUACAO write SetSITUACAO;

end;

implementation

constructor TRETORNO.Create;
begin
  Limpar;
end;

destructor TRETORNO.Destroy;
begin

  inherited;
end;

procedure TRETORNO.SetID (const Value :Integer);
begin
  FID := Value;
end;

function TRETORNO.GetID :Integer;
begin
  Result := FID;
end;

procedure TRETORNO.SetID_PESSOA (const Value :Integer);
begin
  FID_PESSOA := Value;
end;

function TRETORNO.GetID_PESSOA :Integer;
begin
  Result := FID_PESSOA;
end;

procedure TRETORNO.SetDTHRCADASTRO (const Value :TDateTime);
begin
  FDTHRCADASTRO := Value;
end;

function TRETORNO.GetDTHRCADASTRO :TDateTime;
begin
  Result := FDTHRCADASTRO;
end;

procedure TRETORNO.SetDTHRPROCESSAMENTO (const Value :TDateTime);
begin
  FDTHRPROCESSAMENTO := Value;
end;

function TRETORNO.GetDTHRPROCESSAMENTO :TDateTime;
begin
  Result := FDTHRPROCESSAMENTO;
end;

procedure TRETORNO.SetDTHRARQUIVAMENTO (const Value :TDateTime);
begin
  FDTHRARQUIVAMENTO := Value;
end;

function TRETORNO.GetDTHRARQUIVAMENTO :TDateTime;
begin
  Result := FDTHRARQUIVAMENTO;
end;

procedure TRETORNO.SetARQUIVO (const Value :TDateTime);
begin
  FARQUIVO := Value;
end;

function TRETORNO.GetARQUIVO :TDateTime;
begin
  Result := FARQUIVO;
end;

procedure TRETORNO.SetARQUIVONOME (const Value :String);
begin
  FARQUIVONOME := Value;
end;

function TRETORNO.GetARQUIVONOME :String;
begin
  Result := FARQUIVONOME;
end;

procedure TRETORNO.SetARQUIVODATA (const Value :TDateTime);
begin
  FARQUIVODATA := Value;
end;

function TRETORNO.GetARQUIVODATA :TDateTime;
begin
  Result := FARQUIVODATA;
end;

procedure TRETORNO.SetARQUIVONUMERO (const Value :Integer);
begin
  FARQUIVONUMERO := Value;
end;

function TRETORNO.GetARQUIVONUMERO :Integer;
begin
  Result := FARQUIVONUMERO;
end;

procedure TRETORNO.SetARQUIVOLOCAL (const Value :String);
begin
  FARQUIVOLOCAL := Value;
end;

function TRETORNO.GetARQUIVOLOCAL :String;
begin
  Result := FARQUIVOLOCAL;
end;

procedure TRETORNO.SetARQUIVOMD5 (const Value :String);
begin
  FARQUIVOMD5 := Value;
end;

function TRETORNO.GetARQUIVOMD5 :String;
begin
  Result := FARQUIVOMD5;
end;

procedure TRETORNO.SetQUANTTITULOS (const Value :Integer);
begin
  FQUANTTITULOS := Value;
end;

function TRETORNO.GetQUANTTITULOS :Integer;
begin
  Result := FQUANTTITULOS;
end;

procedure TRETORNO.SetSITUACAO (const Value :Integer);
begin
  FSITUACAO := Value;
end;

function TRETORNO.GetSITUACAO :Integer;
begin
  Result := FSITUACAO;
end;


procedure TRETORNO.Limpar;
begin

  Self.ID := 0;
  Self.ID_PESSOA := 0;
  Self.DTHRCADASTRO := 0;
  Self.DTHRPROCESSAMENTO := 0;
  Self.DTHRARQUIVAMENTO := 0;
  Self.ARQUIVONOME := '';
  Self.ARQUIVODATA := 0;
  Self.ARQUIVONUMERO := 0;
  Self.ARQUIVOLOCAL := '';
  Self.ARQUIVOMD5 := '';
  Self.QUANTTITULOS := 0;
  Self.SITUACAO := 0;

end;

end.

