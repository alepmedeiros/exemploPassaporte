unit ServerHorse.Model.Entidade.Titulo;

interface

uses
  SimpleAttributes;

type
  [Tabela('TITULO')]
  TTitulo = class
    private
      FVALORMORAJUROS: Currency;
      FDATADESCONTO: TDateTime;
      FNOSSONUMERO: String;
      FDATAVENCIMENTO: TDateTime;
      FDATADOCUMENTO: TDateTime;
      FID_CLIENTE: Integer;
      FDATAABATIMENTO: TDateTime;
      FPERCENTUALMULTA: Currency;
      FVALORDOCUMENTO: Currency;
      FDATAPROTESTO: TDateTime;
      FVALORABATIMENTO: Currency;
      FID_EMPRESA: Integer;
      FDATAMORAJUROS: TDateTime;
      FDATAPROCESSAMENTO: TDateTime;
      FTIPO: Integer;
      FNUMERODOCUMENTO: String;
      FID : Integer;
      FLINKS: String;
    FVALORDESCONTO: Currency;

      procedure SetDATAABATIMENTO(const Value: TDateTime);
      procedure SetDATADESCONTO(const Value: TDateTime);
      procedure SetDATADOCUMENTO(const Value: TDateTime);
      procedure SetDATAMORAJUROS(const Value: TDateTime);
      procedure SetDATAPROCESSAMENTO(const Value: TDateTime);
      procedure SetDATAPROTESTO(const Value: TDateTime);
      procedure SetDATAVENCIMENTO(const Value: TDateTime);
      procedure SetID_CLIENTE(const Value: Integer);
      procedure SetID_EMPRESA(const Value: Integer);
      procedure SetNOSSONUMERO(const Value: String);
      procedure SetNUMERODOCUMENTO(const Value: String);
      procedure SetPERCENTUALMULTA(const Value: Currency);
      procedure SetTIPO(const Value: Integer);
      procedure SetVALORABATIMENTO(const Value: Currency);
      procedure SetVALORDOCUMENTO(const Value: Currency);
      procedure SetVALORMORAJUROS(const Value: Currency);
      procedure SetID(const Value: Integer);
      procedure SetLINKS(const Value: String);
    procedure SetVALORDESCONTO(const Value: Currency);
    public
      [Campo('ID'), PK, AUTOINC]
      property ID : Integer read FID write SetID;
      [Campo('ID_EMPRESA')]
      property ID_EMPRESA : Integer read FID_EMPRESA write SetID_EMPRESA;
      [Campo('ID_CLIENTE')]
      property ID_CLIENTE : Integer read FID_CLIENTE write SetID_CLIENTE;
      [Campo('DATAVENCIMENTO')]
      property DATAVENCIMENTO : TDateTime read FDATAVENCIMENTO write SetDATAVENCIMENTO;
      [Campo('DATADOCUMENTO')]
      property DATADOCUMENTO : TDateTime read FDATADOCUMENTO write SetDATADOCUMENTO;
      [Campo('NUMERODOCUMENTO')]
      property NUMERODOCUMENTO : String read FNUMERODOCUMENTO write SetNUMERODOCUMENTO;
      [Campo('DATAPROCESSAMENTO')]
      property DATAPROCESSAMENTO : TDateTime read FDATAPROCESSAMENTO write SetDATAPROCESSAMENTO;
      [Campo('NOSSONUMERO')]
      property NOSSONUMERO : String read FNOSSONUMERO write SetNOSSONUMERO;
      [Campo('VALORDOCUMENTO')]
      property VALORDOCUMENTO : Currency read FVALORDOCUMENTO write SetVALORDOCUMENTO;
      [Campo('VALORABATIMENTO')]
      property VALORABATIMENTO : Currency read FVALORABATIMENTO write SetVALORABATIMENTO;
      [Campo('VALORMORAJUROS')]
      property VALORMORAJUROS : Currency read FVALORMORAJUROS write SetVALORMORAJUROS;
      [Campo('VALORDESCONTO')]
      property VALORDESCONTO : Currency read FVALORDESCONTO write SetVALORDESCONTO;
      [Campo('DATAMORAJUROS')]
      property DATAMORAJUROS : TDateTime read FDATAMORAJUROS write SetDATAMORAJUROS;
      [Campo('DATADESCONTO')]
      property DATADESCONTO : TDateTime read FDATADESCONTO write SetDATADESCONTO;
      [Campo('DATAABATIMENTO')]
      property DATAABATIMENTO : TDateTime read FDATAABATIMENTO write SetDATAABATIMENTO;
      [Campo('DATAPROTESTO')]
      property DATAPROTESTO : TDateTime read FDATAPROTESTO write SetDATAPROTESTO;
      [Campo('PERCENTUALMULTA')]
      property PERCENTUALMULTA : Currency read FPERCENTUALMULTA write SetPERCENTUALMULTA;
      [Campo('TIPO')]
      property TIPO : Integer read FTIPO write SetTIPO;
      [Campo('LINKS')]
      property LINKS : String read FLINKS write SetLINKS;
  end;

implementation

{ TTitulo }

procedure TTitulo.SetDATAABATIMENTO(const Value: TDateTime);
begin
  FDATAABATIMENTO := Value;
end;

procedure TTitulo.SetDATADESCONTO(const Value: TDateTime);
begin
  FDATADESCONTO := Value;
end;

procedure TTitulo.SetDATADOCUMENTO(const Value: TDateTime);
begin
  FDATADOCUMENTO := Value;
end;

procedure TTitulo.SetDATAMORAJUROS(const Value: TDateTime);
begin
  FDATAMORAJUROS := Value;
end;

procedure TTitulo.SetDATAPROCESSAMENTO(const Value: TDateTime);
begin
  FDATAPROCESSAMENTO := Value;
end;

procedure TTitulo.SetDATAPROTESTO(const Value: TDateTime);
begin
  FDATAPROTESTO := Value;
end;

procedure TTitulo.SetDATAVENCIMENTO(const Value: TDateTime);
begin
  FDATAVENCIMENTO := Value;
end;

procedure TTitulo.SetID_CLIENTE(const Value: Integer);
begin
  FID_CLIENTE := Value;
end;

procedure TTitulo.SetID_EMPRESA(const Value: Integer);
begin
  FID_EMPRESA := Value;
end;

procedure TTitulo.SetLINKS(const Value: String);
begin
  FLINKS := Value;
end;

procedure TTitulo.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TTitulo.SetNOSSONUMERO(const Value: String);
begin
  FNOSSONUMERO := Value;
end;

procedure TTitulo.SetNUMERODOCUMENTO(const Value: String);
begin
  FNUMERODOCUMENTO := Value;
end;

procedure TTitulo.SetPERCENTUALMULTA(const Value: Currency);
begin
  FPERCENTUALMULTA := Value;
end;

procedure TTitulo.SetTIPO(const Value: Integer);
begin
  FTIPO := Value;
end;

procedure TTitulo.SetVALORABATIMENTO(const Value: Currency);
begin
  FVALORABATIMENTO := Value;
end;

procedure TTitulo.SetVALORDESCONTO(const Value: Currency);
begin
  FVALORDESCONTO := Value;
end;

procedure TTitulo.SetVALORDOCUMENTO(const Value: Currency);
begin
  FVALORDOCUMENTO := Value;
end;

procedure TTitulo.SetVALORMORAJUROS(const Value: Currency);
begin
  FVALORMORAJUROS := Value;
end;

end.
