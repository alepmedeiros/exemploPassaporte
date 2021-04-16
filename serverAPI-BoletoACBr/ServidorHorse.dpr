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
  ServerHorse.Model.Entidade.Cliente in 'src\Model\Entity\ServerHorse.Model.Entidade.Cliente.pas',
  ServerHorse.Model.Entidade.Configuracao in 'src\Model\Entity\ServerHorse.Model.Entidade.Configuracao.pas',
  ServerHorse.Model.Entidade.Empresa in 'src\Model\Entity\ServerHorse.Model.Entidade.Empresa.pas',
  ServerHorse.Model.Entidade.Titulo in 'src\Model\Entity\ServerHorse.Model.Entidade.Titulo.pas',
  ServerHorse.Routers.Cliente in 'src\Routers\ServerHorse.Routers.Cliente.pas',
  ServerHorse.Routers.Configuracao in 'src\Routers\ServerHorse.Routers.Configuracao.pas',
  ServerHorse.Routers.Empresa in 'src\Routers\ServerHorse.Routers.Empresa.pas',
  ServerHorse.Routers.Titulo in 'src\Routers\ServerHorse.Routers.Titulo.pas',
  ServidorHorse.Model.Services.Interfaces in 'src\Model\services\ServidorHorse.Model.Services.Interfaces.pas',
  ServidorHorse.Model.Services.Cedente in 'src\Model\services\ServidorHorse.Model.Services.Cedente.pas',
  ServidorHorse.Model.Services.Boleto in 'src\Model\services\ServidorHorse.Model.Services.Boleto.pas',
  Unit1 in 'src\Unit1.pas' {DataModule1: TDataModule};

begin
  ServerHorse.Routers.Titulo.Registry;
  ServerHorse.Routers.Empresa.Registry;
  ServerHorse.Routers.Configuracao.Registry;
  ServerHorse.Routers.Cliente.Registry;
  THorse.Listen(9000);
end.
