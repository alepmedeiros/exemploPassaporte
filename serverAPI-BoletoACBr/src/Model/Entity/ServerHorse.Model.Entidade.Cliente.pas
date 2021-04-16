unit ServerHorse.Model.Entidade.Cliente;

interface

uses
  SimpleAttributes;


type
  [Tabela('CLIENTE')]
  TCliente = class
    private
      FLOGRADOURO: String;
      FEMAIL: String;
      FBAIRRO: String;
      FUF: String;
      FCEP: String;
      FCPFCNPJ: String;
      FID: integer;
      FNUMERO: String;
      FCOMPLEMENTO: String;
      FMENSAGEM: String;
      FNOME: String;
      FTIPO: Integer;
      FCIDADE: String;
      FTELEFONE: String;
      procedure SetBAIRRO(const Value: String);
      procedure SetCEP(const Value: String);
      procedure SetCIDADE(const Value: String);
      procedure SetCOMPLEMENTO(const Value: String);
      procedure SetCPFCNPJ(const Value: String);
      procedure SetEMAIL(const Value: String);
      procedure SetID(const Value: integer);
      procedure SetLOGRADOURO(const Value: String);
      procedure SetMENSAGEM(const Value: String);
      procedure SetNOME(const Value: String);
      procedure SetNUMERO(const Value: String);
      procedure SetTELEFONE(const Value: String);
      procedure SetTIPO(const Value: Integer);
      procedure SetUF(const Value: String);
    public
      [Campo('ID'), PK, AUTOINC]
      property ID : integer read FID write SetID;
      [Campo('NOME')]
      property NOME : String read FNOME write SetNOME;
      [Campo('CPFCNPJ')]
      property CPFCNPJ : String read FCPFCNPJ write SetCPFCNPJ;
      [Campo('LOGRADOURO')]
      property LOGRADOURO : String read FLOGRADOURO write SetLOGRADOURO;
      [Campo('NUMERO')]
      property NUMERO : String read FNUMERO write SetNUMERO;
      [Campo('COMPLEMENTO')]
      property COMPLEMENTO : String read FCOMPLEMENTO write SetCOMPLEMENTO;
      [Campo('CEP')]
      property CEP : String read FCEP write SetCEP;
      [Campo('BAIRRO')]
      property BAIRRO : String read FBAIRRO write SetBAIRRO;
      [Campo('CIDADE')]
      property CIDADE : String read FCIDADE write SetCIDADE;
      [Campo('UF')]
      property UF : String read FUF write SetUF;
      [Campo('TIPO')]
      property TIPO : Integer read FTIPO write SetTIPO;
      [Campo('EMAIL')]
      property EMAIL : String read FEMAIL write SetEMAIL;
      [Campo('TELEFONE')]
      property TELEFONE : String read FTELEFONE write SetTELEFONE;
      [Campo('MENSAGEM')]
      property MENSAGEM : String read FMENSAGEM write SetMENSAGEM;
  end;

implementation

{ TCliente }

procedure TCliente.SetBAIRRO(const Value: String);
begin
  FBAIRRO := Value;
end;

procedure TCliente.SetCEP(const Value: String);
begin
  FCEP := Value;
end;

procedure TCliente.SetCIDADE(const Value: String);
begin
  FCIDADE := Value;
end;

procedure TCliente.SetCOMPLEMENTO(const Value: String);
begin
  FCOMPLEMENTO := Value;
end;

procedure TCliente.SetCPFCNPJ(const Value: String);
begin
  FCPFCNPJ := Value;
end;

procedure TCliente.SetEMAIL(const Value: String);
begin
  FEMAIL := Value;
end;

procedure TCliente.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure TCliente.SetLOGRADOURO(const Value: String);
begin
  FLOGRADOURO := Value;
end;

procedure TCliente.SetMENSAGEM(const Value: String);
begin
  FMENSAGEM := Value;
end;

procedure TCliente.SetNOME(const Value: String);
begin
  FNOME := Value;
end;

procedure TCliente.SetNUMERO(const Value: String);
begin
  FNUMERO := Value;
end;

procedure TCliente.SetTELEFONE(const Value: String);
begin
  FTELEFONE := Value;
end;

procedure TCliente.SetTIPO(const Value: Integer);
begin
  FTIPO := Value;
end;

procedure TCliente.SetUF(const Value: String);
begin
  FUF := Value;
end;

end.
