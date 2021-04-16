unit ServerHorse.Controller;

interface

uses
  ServerHorse.Controller.Generic,
  ServerHorse.Controller.Interfaces, ServerHorse.Model.Entidade.Cliente,
  ServerHorse.Model.Entidade.Configuracao, ServerHorse.Model.Entidade.Empresa,
  ServerHorse.Model.Entidade.Titulo;

type
  TController = class(TInterfacedObject, iController)
    private
      FCliente : iControllerEntity<TCliente>;
      FConfiguracao : iControllerEntity<TConfiguracao>;
      FEmpresa : iControllerEntity<TEmpresa>;
      FTitulo : iControllerEntity<TTitulo>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iController;
      function Cliente : iControllerEntity<TCliente>;
      function Configuracao : iControllerEntity<TConfiguracao>;
      function Empresa : iControllerEntity<TEmpresa>;
      function Titulo : iControllerEntity<TTitulo>;
  end;

implementation

{ TController }


function TController.Cliente: iControllerEntity<TCliente>;
begin
  if not Assigned(FCliente) then
    FCliente := TControllerGeneric<TCliente>.New(Self);

  Result := FCliente;
end;

function TController.Configuracao: iControllerEntity<TConfiguracao>;
begin
  if not Assigned(FConfiguracao) then
    FConfiguracao := TControllerGeneric<TConfiguracao>.New(Self);

  Result := FConfiguracao;
end;

constructor TController.Create;
begin

end;

destructor TController.Destroy;
begin

  inherited;
end;

function TController.Empresa: iControllerEntity<TEmpresa>;
begin
  if not Assigned(FEmpresa) then
    FEmpresa := TControllerGeneric<TEmpresa>.New(Self);

  Result := FEmpresa;
end;

class function TController.New: iController;
begin
  Result := Self.Create;
end;

function TController.Titulo: iControllerEntity<TTitulo>;
begin
  if not Assigned(FTitulo) then
    FTitulo := TControllerGeneric<TTitulo>.New(Self);

  Result := FTitulo;
end;

end.
