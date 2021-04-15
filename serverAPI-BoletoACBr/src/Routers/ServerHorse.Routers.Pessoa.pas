unit ServerHorse.Routers.Pessoa;

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
  ServerHorse.Model.Entidade.PESSOA;


procedure Registry;
begin
  THorse
  .Use(Paginate)
  .Use(Jhonson)
  .Use(CORS)
{
  IMPLEMENTAR OS RELACIONAMENTOS TANDO PARA VISIBILIDADE QUANTO PARA A PERSISTENCIA DOS DADOS
}

  .Get('/pessoas',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      iController : iControllerEntity<TPESSOA>;
    begin
      iController := TController.New.PESSOAS;
      iController.This.DAO.Find;
      Res.Send<TJsonArray>(iController.This.DataSetAsJsonArray);
    end)

  .Get('/pessoas/:ID',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      iController : iControllerEntity<TPESSOA>;
    begin
      iController := TController.New.PESSOAS;
      iController.This
        .DAO
          .SQL
            .Where('ID = ' + Req.Params['ID'])
          .&End
        .Find;

      Res.Send<TJsonArray>(iController.This.DataSetAsJsonArray);
    end)

  .Post('/pessoas',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      vBody : TJsonObject;
    begin
      vBody := TJSONObject.ParseJSONValue(Req.Body) as TJSONObject;
      try
        TController.New.PESSOAS.This.Insert(vBody);
        Res.Status(200).Send<TJsonObject>(vBody);
      except
        Res.Status(500).Send('');
      end;
    end)

  .Put('/pessoas/:ID',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      vBody : TJsonObject;
      _id: string;
    begin
      vBody := TJSONObject.ParseJSONValue(Req.Body) as TJSONObject;
      try
        if not vBody.TryGetValue<String>('id', _id) then
          vBody.AddPair('id', Req.Params['ID']);
        TController.New.PESSOAS.This.Update(vBody);
        Res.Status(200).Send<TJsonObject>(vBody);
      except
        Res.Status(500).Send('');
      end;
    end)

  .Delete('/pessoas/:id',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      try
        TController.New.PESSOAS.This.Delete('id', Req.Params['id']);
        Res.Status(200).Send('');
      except
        Res.Status(500).Send('');
      end;
    end);
end;

end.
