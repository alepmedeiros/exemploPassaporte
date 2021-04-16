unit ServerHorse.Model.Entidade.Empresa;

interface

uses
  SimpleAttributes;

type
  [Tabela('EMPRESA')]
  TEmpresa = class
    private
      FLOGRADOURO: String;
      FFANTASIA: String;
      FUF: String;
      FCEP: String;
      FCPFCNPJ: String;
      FID: Integer;
      FNUMERO: String;
      FCOMPLEMENTO: String;
      FNOME: String;
      FCIDADE: String;
      FTIPO: String;
      FTELEFONE: String;
      procedure SetCEP(const Value: String);
      procedure SetCIDADE(const Value: String);
      procedure SetCOMPLEMENTO(const Value: String);
      procedure SetCPFCNPJ(const Value: String);
      procedure SetFANTASIA(const Value: String);
      procedure SetID(const Value: Integer);
      procedure SetLOGRADOURO(const Value: String);
      procedure SetNOME(const Value: String);
      procedure SetNUMERO(const Value: String);
      procedure SetTELEFONE(const Value: String);
      procedure SetTIPO(const Value: String);
      procedure SetUF(const Value: String);
    public
      [Campo('ID'), PK, AUTOINC]
      property ID : Integer read FID write SetID;
      [Campo('NOME')]
      property NOME : String read FNOME write SetNOME;
      [Campo('FANTASIA')]
      property FANTASIA : String read FFANTASIA write SetFANTASIA;
      [Campo('CPFCNPJ')]
      property CPFCNPJ : String read FCPFCNPJ write SetCPFCNPJ;
      [Campo('TIPO')]
      property TIPO : String read FTIPO write SetTIPO;
      [Campo('LOGRADOURO')]
      property LOGRADOURO : String read FLOGRADOURO write SetLOGRADOURO;
      [Campo('NUMERO')]
      property NUMERO : String read FNUMERO write SetNUMERO;
      [Campo('CIDADE')]
      property CEP : String read FCEP write SetCEP;
      [Campo('CIDADE')]
      property CIDADE : String read FCIDADE write SetCIDADE;
      [Campo('UF')]
      property UF : String read FUF write SetUF;
      [Campo('COMPLEMENTO')]
      property COMPLEMENTO : String read FCOMPLEMENTO write SetCOMPLEMENTO;
      [Campo('TELEFONE')]
      property TELEFONE : String read FTELEFONE write SetTELEFONE;
  end;

implementation

{ TEmpresa }

procedure TEmpresa.SetCEP(const Value: String);
begin
  FCEP := Value;
end;

procedure TEmpresa.SetCIDADE(const Value: String);
begin
  FCIDADE := Value;
end;

procedure TEmpresa.SetCOMPLEMENTO(const Value: String);
begin
  FCOMPLEMENTO := Value;
end;

procedure TEmpresa.SetCPFCNPJ(const Value: String);
begin
  FCPFCNPJ := Value;
end;

procedure TEmpresa.SetFANTASIA(const Value: String);
begin
  FFANTASIA := Value;
end;

procedure TEmpresa.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TEmpresa.SetLOGRADOURO(const Value: String);
begin
  FLOGRADOURO := Value;
end;

procedure TEmpresa.SetNOME(const Value: String);
begin
  FNOME := Value;
end;

procedure TEmpresa.SetNUMERO(const Value: String);
begin
  FNUMERO := Value;
end;

procedure TEmpresa.SetTELEFONE(const Value: String);
begin
  FTELEFONE := Value;
end;

procedure TEmpresa.SetTIPO(const Value: String);
begin
  FTIPO := Value;
end;

procedure TEmpresa.SetUF(const Value: String);
begin
  FUF := Value;
end;

end.
