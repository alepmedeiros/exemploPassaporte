unit ServerHorse.Routers.Titulos;

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
  ServerHorse.Model.Entidade.TITULOS;


procedure Registry;
begin
  THorse
  .Use(Paginate)
  .Use(Jhonson)
  .Use(CORS)
{
  implementar relacionamento com as tabelas de pessas e remessa
}
  .Get('/titulos',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      iController : iControllerEntity<TTITULOS>;
    begin
      iController := TController.New.TITULOS;
      iController.This.DAO.Find;

      Res.Send<TJsonArray>(iController.This.DataSetAsJsonArray);
    end)

  .Get('/titulos/:ID',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      iController : iControllerEntity<TTITULOS>;
    begin
      iController := TController.New.TITULOS;
      iController.This
        .DAO
          .SQL
            .Where('ID = ' + Req.Params['ID'])
          .&End
        .Find;

      Res.Send<TJsonArray>(iController.This.DataSetAsJsonArray);
    end)

  .Post('/titulos',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      vBody : TJsonObject;
    begin
      vBody := TJSONObject.ParseJSONValue(Req.Body) as TJSONObject;
      try
        TController.New.TITULOS.This.Insert(vBody);
        Res.Status(200).Send<TJsonObject>(vBody);
      except
        Res.Status(500).Send('');
      end;
    end)

  .Put('/titulos/:ID',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      vBody : TJsonObject;
      _id: string;
    begin
      vBody := TJSONObject.ParseJSONValue(Req.Body) as TJSONObject;
      try
        if not vBody.TryGetValue<String>('id', _id) then
          vBody.AddPair('id', Req.Params['ID']);
        TController.New.TITULOS.This.Update(vBody);
        Res.Status(200).Send<TJsonObject>(vBody);
      except
        Res.Status(500).Send('');
      end;
    end)

  .Delete('/titulos/:id',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      try
        TController.New.TITULOS.This.Delete('id', Req.Params['id']);
        Res.Status(200).Send('');
      except
        Res.Status(500).Send('');
      end;
    end);
end;

end.
