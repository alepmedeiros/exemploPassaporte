unit ServerHorse.Controller.Interfaces;

interface

uses
  ServerHorse.Model.DAO,
  ServerHorse.Model.Entidade.Cliente,
  ServerHorse.Model.Entidade.Configuracao,
  ServerHorse.Model.Entidade.Empresa,
  ServerHorse.Model.Entidade.Titulo;

type
  iControllerEntity<T : class> = interface;

  iController = interface
    ['{6A60E341-CB38-4034-B924-FB9B49D98577}']
    function Cliente : iControllerEntity<TCliente>;
    function Configuracao : iControllerEntity<TConfiguracao>;
    function Empresa : iControllerEntity<TEmpresa>;
    function Titulo : iControllerEntity<TTitulo>;
  end;

  iControllerEntity<T : class> = interface
    ['{F7476B60-A9B9-48CA-B1B6-016DADEA41D6}']
    function This : iDAOGeneric<T>;
    function &End : iController;
  end;

  iControllerBoleto = interface
    ['{9D274486-00A4-4C72-97FB-F9EDEA1F48E1}']
  end;

implementation

end.
