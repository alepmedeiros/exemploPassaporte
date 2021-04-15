unit ServerHorse.Routers.Remessa_Titulos;

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
  ServerHorse.Model.Entidade.REMESSA_TITULOS;


procedure Registry;
begin
  THorse
  .Use(Paginate)
  .Use(Jhonson)
  .Use(CORS)

  .Get('/remessatitulos',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      iController : iControllerEntity<TREMESSA_TITULOS>;
    begin
      iController := TController.New.REMESSA_TITULOS;
      iController.This.DAO.Find;

      Res.Send<TJsonArray>(iController.This.DataSetAsJsonArray);
    end)

  .Get('/remessatitulos/pessoa/:pessoa/remessa/:remessa/titulo/:titulo',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      iController : iControllerEntity<TREMESSA_TITULOS>;
    begin
      iController := TController.New.REMESSA_TITULOS;
      iController.This
        .DAO
          .SQL
            .Where('id_pessoa = ' + Req.Params['pessoa'] +
                  ' and id_remessa = ' + Req.Params['remessa'] +
                  ' and id_titulos = ' + Req.Params['titulo'])
          .&End
        .Find;

      Res.Send<TJsonArray>(iController.This.DataSetAsJsonArray);
    end)

  .Post('/remssatitulos',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      vBody : TJsonObject;
    begin
      vBody := TJSONObject.ParseJSONValue(Req.Body) as TJSONObject;
      try
        TController.New.REMESSA_TITULOS.This.Insert(vBody);
        Res.Status(200).Send<TJsonObject>(vBody);
      except
        Res.Status(500).Send('');
      end;
    end)

  .Put('/remessatitulos/pessoa/:pessoa/remessa/:remessa/titulo/:titulo',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      vBody : TJsonObject;
      idpessoa,idremessa,idtitulo: integer;
    begin
      vBody := TJSONObject.ParseJSONValue(Req.Body) as TJSONObject;
      try
        if not vBody.TryGetValue<Integer>('id_pessoa', idpessoa) and
          vBody.TryGetValue<Integer>('id_remessa', idremessa) and
          vBody.TryGetValue<Integer>('id_titulo', idtitulo) then
        begin
          vBody.AddPair('id_pessoa', Req.Params['pessoa']);
          vBody.AddPair('id_remessa', Req.Params['remessa']);
          vBody.AddPair('id_titulo', Req.Params['titulo']);
        end;
        TController.New.REMESSA_TITULOS.This.Update(vBody);
        Res.Status(200).Send<TJsonObject>(vBody);
      except
        Res.Status(500).Send('');
      end;
    end)

  .Delete('/remessatitulos/:id',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      try
        TController.New.REMESSA_TITULOS.This.Delete('id_pessoa', Req.Params['pessoa']);
        Res.Status(200).Send('');
      except
        Res.Status(500).Send('');
      end;
    end);
end;

end.
