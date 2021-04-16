unit ServidorHorse.Model.Services.Cedente;

interface

uses
  ServidorHorse.Model.Services.Interfaces,
  ACBrBoletoConversao;

type
  TModelServicesBoletoCedente = class(TInterfacedObject, iModelServicesBoletoCedente)
    private
      [weak]
      FParent : iModelACBrBoleto;
    public
      constructor Create(Parent : iModelACBrBoleto);
      destructor Destroy; override;
      class function New(Parent : iModelACBrBoleto) : iModelServicesBoletoCedente;
      function Nome(Value : String) : iModelServicesBoletoCedente;
      function Fantasia(Value : String) : iModelServicesBoletoCedente;
      function Codigo(Value : String) : iModelServicesBoletoCedente;
      function Agencia(Value : String) : iModelServicesBoletoCedente;
      function AgenciaDigito(Value : String) : iModelServicesBoletoCedente;
      function Conta(Value : String) : iModelServicesBoletoCedente;
      function Modalidade(Value : String) : iModelServicesBoletoCedente;
      function Convenio(Value : String) : iModelServicesBoletoCedente;
      function TipoDocumento(Value : TACBrTipoDocumento) : iModelServicesBoletoCedente;//(Tradicional=1, Escritural=2)
      function CNPJCPF(Value : String) : iModelServicesBoletoCedente;
      function Logradouro(Value : String) : iModelServicesBoletoCedente;
      function Numero(Value : String) : iModelServicesBoletoCedente;
      function Complemento(Value : String) : iModelServicesBoletoCedente;
      function Bairro(Value : String) : iModelServicesBoletoCedente;
      function Cidade(Value : String) : iModelServicesBoletoCedente;
      function UF(Value : String) : iModelServicesBoletoCedente;
      function CEP(Value : String) : iModelServicesBoletoCedente;
      function Telefone(Value : String) : iModelServicesBoletoCedente;
      function Operacao(Value : String) : iModelServicesBoletoCedente;
  end;

implementation

function TModelServicesBoletoCedente.Agencia(
  Value: String): iModelServicesBoletoCedente;
begin
  Result := Self;
  FParent.ACBrBoleto.Cedente.Agencia := Value;
end;

function TModelServicesBoletoCedente.AgenciaDigito(
  Value: String): iModelServicesBoletoCedente;
begin
  Result := Self;
  FParent.ACBrBoleto.Cedente.AgenciaDigito := Value;
end;

function TModelServicesBoletoCedente.Bairro(
  Value: String): iModelServicesBoletoCedente;
begin
  Result := Self;
  FParent.ACBrBoleto.Cedente.Bairro := Value;
end;

function TModelServicesBoletoCedente.CEP(
  Value: String): iModelServicesBoletoCedente;
begin
  Result := Self;
  FParent.ACBrBoleto.Cedente.CEP := Value;
end;

function TModelServicesBoletoCedente.Cidade(
  Value: String): iModelServicesBoletoCedente;
begin
  Result := Self;
  FParent.ACBrBoleto.Cedente.Cidade := Value;
end;

function TModelServicesBoletoCedente.CNPJCPF(
  Value: String): iModelServicesBoletoCedente;
begin
  Result := Self;
  FParent.ACBrBoleto.Cedente.CNPJCPF := Value;
end;

function TModelServicesBoletoCedente.Codigo(
  Value: String): iModelServicesBoletoCedente;
begin
  Result := Self;
  FParent.ACBrBoleto.Cedente.CodigoCedente := Value;
end;

function TModelServicesBoletoCedente.Complemento(
  Value: String): iModelServicesBoletoCedente;
begin
  Result := Self;
  FParent.ACBrBoleto.Cedente.Complemento := Value;
end;

function TModelServicesBoletoCedente.Conta(
  Value: String): iModelServicesBoletoCedente;
begin
  Result := Self;
  FParent.ACBrBoleto.Cedente.Conta := Value;
end;

function TModelServicesBoletoCedente.Convenio(
  Value: String): iModelServicesBoletoCedente;
begin
  Result := Self;
  FParent.ACBrBoleto.Cedente.Convenio := Value;
end;

constructor TModelServicesBoletoCedente.Create(Parent : iModelACBrBoleto);
begin
  FParent := Parent;
end;

destructor TModelServicesBoletoCedente.Destroy;
begin

  inherited;
end;

function TModelServicesBoletoCedente.Fantasia(
  Value: String): iModelServicesBoletoCedente;
begin
  Result := Self;
  FParent.ACBrBoleto.Cedente.FantasiaCedente := Value;
end;

function TModelServicesBoletoCedente.Logradouro(
  Value: String): iModelServicesBoletoCedente;
begin
  Result := Self;
  FParent.ACBrBoleto.Cedente.Logradouro := Value;
end;

function TModelServicesBoletoCedente.Modalidade(
  Value: String): iModelServicesBoletoCedente;
begin
  Result := Self;
  FParent.ACBrBoleto.Cedente.Modalidade := Value;
end;

class function TModelServicesBoletoCedente.New(Parent : iModelACBrBoleto) : iModelServicesBoletoCedente;
begin
  Result := Self.Create(Parent);
end;

function TModelServicesBoletoCedente.Nome(
  Value: String): iModelServicesBoletoCedente;
begin
  Result := Self;
  FParent.ACBrBoleto.Cedente.Nome := Value;
end;

function TModelServicesBoletoCedente.Numero(
  Value: String): iModelServicesBoletoCedente;
begin
  Result := Self;
  FParent.ACBrBoleto.Cedente.NumeroRes := Value;
end;

function TModelServicesBoletoCedente.Operacao(
  Value: String): iModelServicesBoletoCedente;
begin
  Result := Self;
  FParent.ACBrBoleto.Cedente.Operacao := Value;
end;

function TModelServicesBoletoCedente.Telefone(
  Value: String): iModelServicesBoletoCedente;
begin
  Result := Self;
  FParent.ACBrBoleto.Cedente.Telefone := Value;
end;

function TModelServicesBoletoCedente.TipoDocumento(
  Value: TACBrTipoDocumento): iModelServicesBoletoCedente;
begin
  Result := Self;
  FParent.ACBrBoleto.Cedente.TipoDocumento := Value;
end;

function TModelServicesBoletoCedente.UF(
  Value: String): iModelServicesBoletoCedente;
begin
  Result := Self;
  FParent.ACBrBoleto.Cedente.UF := Value;
end;

end.
