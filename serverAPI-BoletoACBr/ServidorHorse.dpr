program ServidorHorse;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Horse,
  System.Classes,
  ServerHorse.Model.Connection in 'src\Model\Connection\ServerHorse.Model.Connection.pas',
  ServerHorse.Model.DAO in 'src\Model\DAO\ServerHorse.Model.DAO.pas',
  ServerHorse.Controller.Interfaces in 'src\Controller\ServerHorse.Controller.Interfaces.pas',
  ServerHorse.Controller in 'src\Controller\ServerHorse.Controller.pas',
  ServerHorse.Controller.Generic in 'src\Controller\ServerHorse.Controller.Generic.pas',
  ServerHorse.Utils in 'src\Utils\ServerHorse.Utils.pas',
  ServerHorse.Model.Entidade.CIDADES in 'src\Model\Entity\ServerHorse.Model.Entidade.CIDADES.pas',
  ServerHorse.Model.Entidade.CLASSIFICACAO in 'src\Model\Entity\ServerHorse.Model.Entidade.CLASSIFICACAO.pas',
  ServerHorse.Model.Entidade.CONFIGURACAO in 'src\Model\Entity\ServerHorse.Model.Entidade.CONFIGURACAO.pas',
  ServerHorse.Model.Entidade.CONTATO in 'src\Model\Entity\ServerHorse.Model.Entidade.CONTATO.pas',
  ServerHorse.Model.Entidade.ENDERECO in 'src\Model\Entity\ServerHorse.Model.Entidade.ENDERECO.pas',
  ServerHorse.Model.Entidade.PESSOA in 'src\Model\Entity\ServerHorse.Model.Entidade.PESSOA.pas',
  ServerHorse.Model.Entidade.REMESSA in 'src\Model\Entity\ServerHorse.Model.Entidade.REMESSA.pas',
  ServerHorse.Model.Entidade.REMESSA_TITULOS in 'src\Model\Entity\ServerHorse.Model.Entidade.REMESSA_TITULOS.pas',
  ServerHorse.Model.Entidade.RETORNO in 'src\Model\Entity\ServerHorse.Model.Entidade.RETORNO.pas',
  ServerHorse.Model.Entidade.RETORNO_TITULOS in 'src\Model\Entity\ServerHorse.Model.Entidade.RETORNO_TITULOS.pas',
  ServerHorse.Model.Entidade.TITULOS in 'src\Model\Entity\ServerHorse.Model.Entidade.TITULOS.pas',
  ServerHorse.Routers.Cidades in 'src\Routers\ServerHorse.Routers.Cidades.pas',
  ServerHorse.Routers.Classificacao in 'src\Routers\ServerHorse.Routers.Classificacao.pas',
  ServerHorse.Routers.Configuracao in 'src\Routers\ServerHorse.Routers.Configuracao.pas',
  ServerHorse.Routers.Contato in 'src\Routers\ServerHorse.Routers.Contato.pas',
  ServerHorse.Routers.Endereco in 'src\Routers\ServerHorse.Routers.Endereco.pas',
  ServerHorse.Routers.Pessoa in 'src\Routers\ServerHorse.Routers.Pessoa.pas',
  ServerHorse.Routers.Remessa in 'src\Routers\ServerHorse.Routers.Remessa.pas',
  ServerHorse.Routers.Remessa_Titulos in 'src\Routers\ServerHorse.Routers.Remessa_Titulos.pas',
  ServerHorse.Routers.Retorno in 'src\Routers\ServerHorse.Routers.Retorno.pas',
  ServerHorse.Routers.Retorno_Titulos in 'src\Routers\ServerHorse.Routers.Retorno_Titulos.pas',
  ServerHorse.Routers.Titulos in 'src\Routers\ServerHorse.Routers.Titulos.pas';

begin
  ServerHorse.Routers.Configuracao.Registry;
  ServerHorse.Routers.Titulos.Registry;
  ServerHorse.Routers.Cidades.Registry;
  ServerHorse.Routers.Classificacao.Registry;
  ServerHorse.Routers.Contato.Registry;
  ServerHorse.Routers.Endereco.Registry;
  ServerHorse.Routers.Pessoa.Registry;
  ServerHorse.Routers.Remessa.Registry;
  ServerHorse.Routers.Remessa_Titulos.Registry;
  ServerHorse.Routers.Retorno.Registry;
  ServerHorse.Routers.Retorno_Titulos.Registry;
  THorse.Listen(9000);
end.
