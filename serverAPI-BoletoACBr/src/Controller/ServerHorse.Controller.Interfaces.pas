unit ServerHorse.Controller.Interfaces;

interface

uses
  ServerHorse.Model.DAO,
  ServerHorse.Model.Entidade.PESSOA,
  ServerHorse.Model.Entidade.CONFIGURACAO,
  ServerHorse.Model.Entidade.TITULOS, ServerHorse.Model.Entidade.CIDADES,
  ServerHorse.Model.Entidade.CLASSIFICACAO, ServerHorse.Model.Entidade.CONTATO,
  ServerHorse.Model.Entidade.ENDERECO, ServerHorse.Model.Entidade.REMESSA,
  ServerHorse.Model.Entidade.REMESSA_TITULOS,
  ServerHorse.Model.Entidade.RETORNO_TITULOS,
  ServerHorse.Model.Entidade.RETORNO;

type
  iControllerEntity<T : class> = interface;

  iController = interface
    ['{6A60E341-CB38-4034-B924-FB9B49D98577}']
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

  iControllerEntity<T : class> = interface
    ['{F7476B60-A9B9-48CA-B1B6-016DADEA41D6}']
    function This : iDAOGeneric<T>;
    function &End : iController;
  end;

implementation

end.
