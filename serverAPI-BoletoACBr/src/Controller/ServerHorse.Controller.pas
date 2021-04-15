unit ServerHorse.Controller;

interface

uses
  ServerHorse.Controller.Generic,
  ServerHorse.Controller.Interfaces,
  ServerHorse.Model.Entidade.PESSOA, ServerHorse.Model.Entidade.CONFIGURACAO,
  ServerHorse.Model.Entidade.TITULOS, ServerHorse.Model.Entidade.CIDADES,
  ServerHorse.Model.Entidade.CLASSIFICACAO, ServerHorse.Model.Entidade.CONTATO,
  ServerHorse.Model.Entidade.ENDERECO, ServerHorse.Model.Entidade.REMESSA,
  ServerHorse.Model.Entidade.REMESSA_TITULOS,
  ServerHorse.Model.Entidade.RETORNO,
  ServerHorse.Model.Entidade.RETORNO_TITULOS;

type
  TController = class(TInterfacedObject, iController)
    private
      FConfig : iControllerEntity<TCONFIGURACAO>;
      FPessoas : iControllerEntity<TPESSOA>;
      FTitulos : iControllerEntity<TTITULOS>;
      FCidades : iControllerEntity<TCIDADES>;
      FClassificacao : iControllerEntity<TCLASSIFICACAO>;
      FContato : iControllerEntity<TCONTATO>;
      FEndereco : iControllerEntity<TENDERECO>;
      FRemessa : iControllerEntity<TREMESSA>;
      FRemessa_titulos : iControllerEntity<TREMESSA_TITULOS>;
      FRetorno : iControllerEntity<TRETORNO>;
      FRetorno_titulos : iControllerEntity<TRETORNO_TITULOS>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iController;
      function CONFIGURACAO : iControllerEntity<TCONFIGURACAO>;
      function PESSOAS : iControllerEntity<TPESSOA>;
      function TITULOS : iControllerEntity<TTITULOS>;
      function CIDADES : iControllerEntity<TCIDADES>;
      function CLASSIFICACAO : iControllerEntity<TCLASSIFICACAO>;
      function CONTATO : iControllerEntity<TCONTATO>;
      function ENDERECO : iControllerEntity<TENDERECO>;
      function REMESSA : iControllerEntity<TREMESSA>;
      function REMESSA_TITULOS : iControllerEntity<TREMESSA_TITULOS>;
      function RETORNO : iControllerEntity<TRETORNO>;
      function RETORNO_TITULOS : iControllerEntity<TRETORNO_TITULOS>;
  end;

implementation

{ TController }

function TController.CIDADES: iControllerEntity<TCIDADES>;
begin
  if not Assigned(FCidades) then
    FCidades := TControllerGeneric<TCIDADES>.New(Self);

  Result := FCidades;
end;

function TController.CLASSIFICACAO: iControllerEntity<TCLASSIFICACAO>;
begin
  if not Assigned(FClassificacao) then
    FClassificacao := TControllerGeneric<TCLASSIFICACAO>.New(Self);

  Result := FClassificacao;
end;

function TController.CONFIGURACAO: iControllerEntity<TCONFIGURACAO>;
begin
  if not Assigned(FConfig) then
    FConfig := TControllerGeneric<TCONFIGURACAO>.New(Self);

  Result := FConfig;
end;

function TController.CONTATO: iControllerEntity<TCONTATO>;
begin
  if not Assigned(FContato) then
    FContato := TControllerGeneric<TCONTATO>.New(Self);

  Result := FContato;
end;

constructor TController.Create;
begin

end;

destructor TController.Destroy;
begin

  inherited;
end;

function TController.ENDERECO: iControllerEntity<TENDERECO>;
begin
  if not Assigned(FENDERECO) then
    FENDERECO := TControllerGeneric<TENDERECO>.New(Self);

  Result := FENDERECO;
end;

class function TController.New: iController;
begin
    Result := Self.Create;
end;

function TController.PESSOAS: iControllerEntity<TPESSOA>;
begin
  if not Assigned(FPessoas) then
    FPessoas := TControllerGeneric<TPESSOA>.New(Self);

  Result := FPessoas;
end;

function TController.REMESSA: iControllerEntity<TREMESSA>;
begin
  if not Assigned(FREMESSA) then
    FREMESSA := TControllerGeneric<TREMESSA>.New(Self);

  Result := FREMESSA;
end;

function TController.REMESSA_TITULOS: iControllerEntity<TREMESSA_TITULOS>;
begin
  if not Assigned(FREMESSA_TITULOS) then
    FREMESSA_TITULOS := TControllerGeneric<TREMESSA_TITULOS>.New(Self);

  Result := FREMESSA_TITULOS;
end;

function TController.RETORNO_TITULOS: iControllerEntity<TRETORNO_TITULOS>;
begin
  if not Assigned(FRETORNO_TITULOS) then
    FRETORNO_TITULOS := TControllerGeneric<TRETORNO_TITULOS>.New(Self);

  Result := FRETORNO_TITULOS;
end;

function TController.RETORNO: iControllerEntity<TRETORNO>;
begin
  if not Assigned(FRETORNO) then
    FRETORNO := TControllerGeneric<TRETORNO>.New(Self);

  Result := FRETORNO;
end;

function TController.TITULOS: iControllerEntity<TTITULOS>;
begin
  if not Assigned(FTitulos) then
    FTitulos := TControllerGeneric<TTITULOS>.New(Self);

  Result := FTitulos;
end;

end.
