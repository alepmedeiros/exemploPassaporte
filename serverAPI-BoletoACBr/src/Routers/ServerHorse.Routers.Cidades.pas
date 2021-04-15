unit ServerHorse.Routers.Cidades;

interface

uses
  System.JSON,
  Horse,
  Horse.Jhonson,
  Horse.CORS;

procedure Registry;

implementation

uses
  System.Classes,
  ServerHorse.Controller,
  ServerHorse.Controller.Interfaces,
  ServerHorse.Model.Entidade.CIDADES,
  System.SysUtils,
  ServerHorse.Utils,
  Horse.Paginate;


procedure Registry;
begin
  THorse
  .Use(Paginate)
  .Use(Jhonson)
  .Use(CORS)

  .Get('/cidades',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      iController : iControllerEntity<TCIDADES>;
    begin
      iController := TController.New.CIDADES;
      iController.This.DAO.Find;
      Res.Send<TJsonArray>(iController.This.DataSetAsJsonArray);
    end)

  .Get('/cidades/:uf',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      iController : iControllerEntity<TCIDADES>;
    begin
      iController := TController.New.CIDADES;
      iController.This
        .DAO
          .SQL
            .Where('UF = ' + QuotedStr(Req.Params['uf']))
          .&End
        .Find;

      Res.Send<TJsonArray>(iController.This.DataSetAsJsonArray);
    end);
end;

end.
