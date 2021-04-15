unit ServerHorse.Routers.Retorno_Titulos;

interface

uses
  System.SysUtils,
  System.Classes,
  System.JSON,
  Horse,
  Horse.Jhonson,
  Horse.CORS,
  Horse.Paginate;

procedure Registry;

implementation

uses
  ServerHorse.Controller,
  ServerHorse.Controller.Interfaces,
  ServerHorse.Utils,
  ServerHorse.Model.Entidade.RETORNO_TITULOS;


procedure Registry;
begin
  THorse
  .Use(Paginate)
  .Use(Jhonson)
  .Use(CORS)
{
  implementar relacionamento com as tabelas de pessoas e retorno
}
  .Get('/retornotitulos',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      iController : iControllerEntity<TRETORNO_TITULOS>;
    begin
      iController := TController.New.RETORNO_TITULOS;
      iController.This.DAO.Find;

      Res.Send<TJsonArray>(iController.This.DataSetAsJsonArray);
    end)

  .Get('/retornotitulos/:ID',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      iController : iControllerEntity<TRETORNO_TITULOS>;
    begin
      iController := TController.New.RETORNO_TITULOS;
      iController.This
        .DAO
          .SQL
            .Where('ID = ' + Req.Params['ID'])
          .&End
        .Find;

      Res.Send<TJsonArray>(iController.This.DataSetAsJsonArray);
    end)

  .Post('/retonortitulos',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      vBody : TJsonObject;
    begin
      vBody := TJSONObject.ParseJSONValue(Req.Body) as TJSONObject;
      try
        TController.New.RETORNO_TITULOS.This.Insert(vBody);
        Res.Status(200).Send<TJsonObject>(vBody);
      except
        Res.Status(500).Send('');
      end;
    end)

  .Put('/retornotitulos/:ID',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      vBody : TJsonObject;
      _id: string;
    begin
      vBody := TJSONObject.ParseJSONValue(Req.Body) as TJSONObject;
      try
        if not vBody.TryGetValue<String>('id', _id) then
          vBody.AddPair('id', Req.Params['ID']);
        TController.New.RETORNO_TITULOS.This.Update(vBody);
        Res.Status(200).Send<TJsonObject>(vBody);
      except
        Res.Status(500).Send('');
      end;
    end)

  .Delete('/retornotitulos/:id',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      try
        TController.New.RETORNO_TITULOS.This.Delete('id', Req.Params['id']);
        Res.Status(200).Send('');
      except
        Res.Status(500).Send('');
      end;
    end);
end;

end.
