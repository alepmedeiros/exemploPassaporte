unit ServerHorse.Model.Entidade.Configuracao;

interface

uses
  SimpleAttributes;

type
  [Tabela('CONFIGURACAO')]
  TConfiguracao = class
    private
      FID_EMPRESA: Integer;
      FTIPOCOBRANCA: Integer;
      FCODBANCO: Integer;
      FAGENCIA: String;
      FCONVENIO: String;
      FDIRARQRETORNO: String;
      FNOMEARQREMESSA: String;
      FCODIGOCEDENTE: String;
      FTIPOPAGAMENTO: Integer;
      FACEITE: Integer;
      FLAYOUTDOCUMENTO: String;
      FLOCALPAGAMENTO: String;
      FCONTADIG: String;
      FARQUIVOLOGO: String;
      FLAYOUTREMESSA: String;
      FDIRARQREMESSA: String;
      FCONTA: String;
      FAGENCIADIG: String;
      FCARTEIRA: String;
      FNOMEARQRETORNO: String;
      FMODALIDADE: String;
      FINSTRUCAO2: String;
      FESPECIEMOD: String;
      FESPECIEDOC: String;
      FINSTRUCAO1: String;
      procedure SetAGENCIA(const Value: String);
      procedure SetCODBANCO(const Value: Integer);
      procedure SetID_EMPRESA(const Value: Integer);
      procedure SetTIPOCOBRANCA(const Value: Integer);
      procedure SetACEITE(const Value: Integer);
      procedure SetAGENCIADIG(const Value: String);
      procedure SetARQUIVOLOGO(const Value: String);
      procedure SetCARTEIRA(const Value: String);
      procedure SetCODIGOCEDENTE(const Value: String);
      procedure SetCONTA(const Value: String);
      procedure SetCONTADIG(const Value: String);
      procedure SetCONVENIO(const Value: String);
      procedure SetDIRARQREMESSA(const Value: String);
      procedure SetDIRARQRETORNO(const Value: String);
      procedure SetESPECIEDOC(const Value: String);
      procedure SetESPECIEMOD(const Value: String);
      procedure SetINSTRUCAO1(const Value: String);
      procedure SetINSTRUCAO2(const Value: String);
      procedure SetLAYOUTDOCUMENTO(const Value: String);
      procedure SetLAYOUTREMESSA(const Value: String);
      procedure SetLOCALPAGAMENTO(const Value: String);
      procedure SetMODALIDADE(const Value: String);
      procedure SetNOMEARQREMESSA(const Value: String);
      procedure SetNOMEARQRETORNO(const Value: String);
      procedure SetTIPOPAGAMENTO(const Value: Integer);
    public
      [Campo('ID_EMPRESA')]
      property ID_EMPRESA : Integer read FID_EMPRESA write SetID_EMPRESA;
      [Campo('TIPOCOBRANCA')]
      property TIPOCOBRANCA : Integer read FTIPOCOBRANCA write SetTIPOCOBRANCA;
      [Campo('CODBANCO')]
      property CODBANCO : Integer read FCODBANCO write SetCODBANCO;
      [Campo('AGENCIA')]
      property AGENCIA : String read FAGENCIA write SetAGENCIA;
      [Campo('AGENCIADIG')]
      property AGENCIADIG : String read FAGENCIADIG write SetAGENCIADIG;
      [Campo('CONTA')]
      property CONTA : String read FCONTA write SetCONTA;
      [Campo('CONTADIG')]
      property CONTADIG : String read FCONTADIG write SetCONTADIG;
      [Campo('CODIGOCEDENTE')]
      property CODIGOCEDENTE : String read FCODIGOCEDENTE write SetCODIGOCEDENTE;
      [Campo('CONVENIO')]
      property CONVENIO : String read FCONVENIO write SetCONVENIO;
      [Campo('CARTEIRA')]
      property CARTEIRA : String read FCARTEIRA write SetCARTEIRA;
      [Campo('MODALIDADE')]
      property MODALIDADE : String read FMODALIDADE write SetMODALIDADE;
      [Campo('ESPECIEDOC')]
      property ESPECIEDOC : String read FESPECIEDOC write SetESPECIEDOC;
      [Campo('ESPECIEMOD')]
      property ESPECIEMOD : String read FESPECIEMOD write SetESPECIEMOD;
      [Campo('ACEITE')]
      property ACEITE : Integer read FACEITE write SetACEITE;
      [Campo('LOCALPAGAMENTO')]
      property LOCALPAGAMENTO : String read FLOCALPAGAMENTO write SetLOCALPAGAMENTO;
      [Campo('DIRARQREMESSA')]
      property DIRARQREMESSA : String read FDIRARQREMESSA write SetDIRARQREMESSA;
      [Campo('DIRARQRETORNO')]
      property DIRARQRETORNO : String read FDIRARQRETORNO write SetDIRARQRETORNO;
      [Campo('LAYOUTREMESSA')]
      property LAYOUTREMESSA : String read FLAYOUTREMESSA write SetLAYOUTREMESSA;
      [Campo('NOMEARQREMESSA')]
      property NOMEARQREMESSA : String read FNOMEARQREMESSA write SetNOMEARQREMESSA;
      [Campo('NOMEARQRETORNO')]
      property NOMEARQRETORNO : String read FNOMEARQRETORNO write SetNOMEARQRETORNO;
      [Campo('LAYOUTDOCUMENTO')]
      property LAYOUTDOCUMENTO : String read FLAYOUTDOCUMENTO write SetLAYOUTDOCUMENTO;
      [Campo('INSTRUCAO1')]
      property INSTRUCAO1 : String read FINSTRUCAO1 write SetINSTRUCAO1;
      [Campo('INSTRUCAO2')]
      property INSTRUCAO2 : String read FINSTRUCAO2 write SetINSTRUCAO2;
      [Campo('TIPOPAGAMENTO')]
      property TIPOPAGAMENTO : Integer read FTIPOPAGAMENTO write SetTIPOPAGAMENTO;
      [Campo('ARQUIVOLOGO')]
      property ARQUIVOLOGO : String read FARQUIVOLOGO write SetARQUIVOLOGO;
  end;

implementation

{ TConfiguracao }

procedure TConfiguracao.SetACEITE(const Value: Integer);
begin
  FACEITE := Value;
end;

procedure TConfiguracao.SetAGENCIA(const Value: String);
begin
  FAGENCIA := Value;
end;

procedure TConfiguracao.SetAGENCIADIG(const Value: String);
begin
  FAGENCIADIG := Value;
end;

procedure TConfiguracao.SetARQUIVOLOGO(const Value: String);
begin
  FARQUIVOLOGO := Value;
end;

procedure TConfiguracao.SetCARTEIRA(const Value: String);
begin
  FCARTEIRA := Value;
end;

procedure TConfiguracao.SetCODBANCO(const Value: Integer);
begin
  FCODBANCO := Value;
end;

procedure TConfiguracao.SetCODIGOCEDENTE(const Value: String);
begin
  FCODIGOCEDENTE := Value;
end;

procedure TConfiguracao.SetCONTA(const Value: String);
begin
  FCONTA := Value;
end;

procedure TConfiguracao.SetCONTADIG(const Value: String);
begin
  FCONTADIG := Value;
end;

procedure TConfiguracao.SetCONVENIO(const Value: String);
begin
  FCONVENIO := Value;
end;

procedure TConfiguracao.SetDIRARQREMESSA(const Value: String);
begin
  FDIRARQREMESSA := Value;
end;

procedure TConfiguracao.SetDIRARQRETORNO(const Value: String);
begin
  FDIRARQRETORNO := Value;
end;

procedure TConfiguracao.SetESPECIEDOC(const Value: String);
begin
  FESPECIEDOC := Value;
end;

procedure TConfiguracao.SetESPECIEMOD(const Value: String);
begin
  FESPECIEMOD := Value;
end;

procedure TConfiguracao.SetID_EMPRESA(const Value: Integer);
begin
  FID_EMPRESA := Value;
end;

procedure TConfiguracao.SetINSTRUCAO1(const Value: String);
begin
  FINSTRUCAO1 := Value;
end;

procedure TConfiguracao.SetINSTRUCAO2(const Value: String);
begin
  FINSTRUCAO2 := Value;
end;

procedure TConfiguracao.SetLAYOUTDOCUMENTO(const Value: String);
begin
  FLAYOUTDOCUMENTO := Value;
end;

procedure TConfiguracao.SetLAYOUTREMESSA(const Value: String);
begin
  FLAYOUTREMESSA := Value;
end;

procedure TConfiguracao.SetLOCALPAGAMENTO(const Value: String);
begin
  FLOCALPAGAMENTO := Value;
end;

procedure TConfiguracao.SetMODALIDADE(const Value: String);
begin
  FMODALIDADE := Value;
end;

procedure TConfiguracao.SetNOMEARQREMESSA(const Value: String);
begin
  FNOMEARQREMESSA := Value;
end;

procedure TConfiguracao.SetNOMEARQRETORNO(const Value: String);
begin
  FNOMEARQRETORNO := Value;
end;

procedure TConfiguracao.SetTIPOCOBRANCA(const Value: Integer);
begin
  FTIPOCOBRANCA := Value;
end;

procedure TConfiguracao.SetTIPOPAGAMENTO(const Value: Integer);
begin
  FTIPOPAGAMENTO := Value;
end;

end.
