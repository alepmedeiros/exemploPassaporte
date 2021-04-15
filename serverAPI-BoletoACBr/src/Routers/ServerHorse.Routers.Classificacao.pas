{
Não se faz necessário a criação dos endpoint para a classificação, pois a mesma
está relacionada a pessoa
}

unit ServerHorse.Routers.Classificacao;

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
  ServerHorse.Model.Entidade.CLASSIFICACAO;


procedure Registry;
begin
  THorse
  .Use(Paginate)
  .Use(Jhonson)
  .Use(CORS)

  .Get('/classificacao',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      iController : iControllerEntity<TCLASSIFICACAO>;
    begin
      iController := TController.New.CLASSIFICACAO;
      iController.This.DAO.Find;

      Res.Send<TJsonArray>(iController.This.DataSetAsJsonArray);
    end)

  .Get('/classificacao/:ID',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      iController : iControllerEntity<TCLASSIFICACAO>;
    begin
      iController := TController.New.CLASSIFICACAO;
      iController.This
        .DAO
          .SQL
            .Where('ID = ' + Req.Params['ID'])
          .&End
        .Find;

      Res.Send<TJsonArray>(iController.This.DataSetAsJsonArray);
    end)

  .Post('/classificacao',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      vBody : TJsonObject;
    begin
      vBody := TJSONObject.ParseJSONValue(Req.Body) as TJSONObject;
      try
        TController.New.CLASSIFICACAO.This.Insert(vBody);
        Res.Status(200).Send<TJsonObject>(vBody);
      except
        Res.Status(500).Send('');
      end;
    end)

  .Put('/classificacao/:ID',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      vBody : TJsonObject;
      _id: string;
    begin
      vBody := TJSONObject.ParseJSONValue(Req.Body) as TJSONObject;
      try
        if not vBody.TryGetValue<String>('id', _id) then
          vBody.AddPair('id',Req.Params['ID']);
        TController.New.CLASSIFICACAO.This.Update(vBody);
        Res.Status(200).Send<TJsonObject>(vBody);
      except
        Res.Status(500).Send('');
      end;
    end)

  .Delete('/classificacao/:id',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      try
        TController.New.CLASSIFICACAO.This.Delete('id', Req.Params['id']);
        Res.Status(200).Send('');
      except
        Res.Status(500).Send('');
      end;
    end);
end;

end.
