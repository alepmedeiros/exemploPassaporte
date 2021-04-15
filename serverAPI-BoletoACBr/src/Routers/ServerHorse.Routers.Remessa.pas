unit ServerHorse.Routers.Remessa;

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
  ServerHorse.Model.Entidade.REMESSA;


procedure Registry;
begin
  THorse
  .Use(Paginate)
  .Use(Jhonson)
  .Use(CORS)
{
  implementar o relacionamento com a tabela de pessoa
}
  .Get('/remessas',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      iController : iControllerEntity<TREMESSA>;
    begin
      iController := TController.New.REMESSA;
      iController.This.DAO.Find;

      Res.Send<TJsonArray>(iController.This.DataSetAsJsonArray);
    end)

  .Get('/remessas/:id',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      iController : iControllerEntity<TREMESSA>;
    begin
      iController := TController.New.REMESSA;
      iController.This
        .DAO
          .SQL
            .Where('ID = ' + Req.Params['id'])
          .&End
        .Find;

      Res.Send<TJsonArray>(iController.This.DataSetAsJsonArray);
    end)

  .Post('/remessas',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      vBody : TJsonObject;
    begin
      vBody := TJSONObject.ParseJSONValue(Req.Body) as TJSONObject;
      try
        TController.New.REMESSA.This.Insert(vBody);
        Res.Status(200).Send<TJsonObject>(vBody);
      except
        Res.Status(500).Send('');
      end;
    end)

  .Put('/remessas/:id',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      vBody : TJsonObject;
      _id: string;
    begin
      vBody := TJSONObject.ParseJSONValue(Req.Body) as TJSONObject;
      try
        if not vBody.TryGetValue<String>('id', _id) then
          vBody.AddPair('id', Req.Params['id']);
        TController.New.REMESSA.This.Update(vBody);
        Res.Status(200).Send<TJsonObject>(vBody);
      except
        Res.Status(500).Send('');
      end;
    end)

  .Delete('/remessas/:id',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      try
        TController.New.REMESSA.This.Delete('id', Req.Params['id']);
        Res.Status(200).Send('');
      except
        Res.Status(500).Send('');
      end;
    end);
end;

end.
