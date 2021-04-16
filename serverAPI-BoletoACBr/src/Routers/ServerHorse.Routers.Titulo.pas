unit ServerHorse.Routers.Titulo;

interface

uses
  System.SysUtils,
  System.Classes,
  System.JSON,
  Horse,
  Horse.Jhonson,
  Horse.Paginate,
  Horse.CORS, Unit1;

procedure Registry;

implementation

uses
  ACBrBoleto,
  ACBrBase,
  ACBrBoletoFCFortesFr,
  ServerHorse.Controller,
  ServerHorse.Controller.Interfaces,
  ServerHorse.Utils,
  ServerHorse.Model.Entidade.Titulo,
  ServerHorse.Model.Entidade.Empresa,
  ServerHorse.Model.Entidade.Cliente,
  ServerHorse.Model.Entidade.Configuracao,
  System.Generics.Collections, ACBrBoletoConversao;


procedure Registry;
begin
  THorse
  .Use(Paginate)
  .Use(Jhonson)
  .Use(CORS)

  .Get('/titulos',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      iController : iControllerEntity<TTitulo>;
    begin
      iController := TController.New.Titulo;
      iController.This.DAO.Find;

      Res.Send<TJsonArray>(iController.This.DataSetAsJsonArray);
    end)

  .Get('/titulo/:ID',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      iController : iControllerEntity<TTitulo>;
    begin
      iController := TController.New.Titulo;
      iController.This
        .DAO
          .SQL
            .Where('ID = ' + Req.Params['ID'])
          .&End
        .Find;

      Res.Send<TJsonArray>(iController.This.DataSetAsJsonArray);
    end)

  .Post('/titulo',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      vBody : TJsonObject;
    begin
      vBody := TJSONObject.ParseJSONValue(Req.Body) as TJSONObject;
      try
        TController.New.Titulo.This.Insert(vBody);
        Res.Status(200).Send<TJsonObject>(vBody);
      except
        Res.Status(500).Send('');
      end;
    end)

  .Post('/gerarboleto',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      vBody : TJsonObject;
      ACBrBoletoReport: TACBrBoletoFCFortes;
      ACBrBoleto: TACBrBoleto;
      Titulo : TACBrTitulo;
      ListaEmpresa : TObjectList<TEmpresa>;
      ListaCliente : TObjectList<TCliente>;
      ListaConfiguracao : TObjectList<TConfiguracao>;
      valor : String;
    begin
      vBody := TJSONObject.ParseJSONValue(Req.Body) as TJSONObject;

      ListaEmpresa := TObjectList<TEmpresa>.Create;
      ListaCliente := TObjectList<TCliente>.Create;
      ListaConfiguracao := TObjectList<TConfiguracao>.Create;

      TController.New.Empresa.This
        .DAO
          .SQL
            .Where('ID = ' + vBody.GetValue<String>('id_empresa'))
          .&End
        .Find(ListaEmpresa);

      TController.New.Configuracao.This
        .DAO
          .SQL
            .Where('ID_EMPRESA = ' + vBody.GetValue<String>('id_empresa'))
          .&End
        .Find(ListaConfiguracao);

      TController.New.Cliente.This
        .DAO
          .SQL
            .Where('ID = ' + vBody.GetValue<String>('id_cliente'))
          .&End
        .Find(ListaCliente);

      ACBrBoleto := TACBrBoleto.Create(nil);

      ACBrBoletoReport := TACBrBoletoFCFortes.Create(nil);
      ACBrBoleto.ACBrBoletoFC := ACBrBoletoReport;
      ACBrBoletoReport.ACBrBoleto := ACBrBoleto;
      ACBrBoletoReport.DirLogo := '..\..\src\Assets\Logos\Colorido';
      ACBrBoletoReport.MostrarSetup := False;
      ACBrBoletoReport.MostrarPreview := False;
      ACBrBoletoReport.MostrarProgresso := false;
      ACBrBoletoReport.NomeArquivo := ListaCliente.Items[0].CPFCNPJ+'_'+IntToStr(Random(4))+'boleto.pdf';
      ACBrBoletoReport.SoftwareHouse := 'Simple solutions';

      ACBrBoleto.Banco.Numero := ListaConfiguracao.Items[0].CODBANCO;
      ACBrBoleto.Banco.TipoCobranca := TACBrTipoCobranca(ListaConfiguracao.Items[0].TIPOCOBRANCA);
      ACBrBoleto.Cedente.Agencia := ListaConfiguracao.Items[0].AGENCIA;
      ACBrBoleto.Cedente.AgenciaDigito := ListaConfiguracao.Items[0].AGENCIADIG;
      ACBrBoleto.Cedente.CodigoCedente := ListaConfiguracao.Items[0].CODIGOCEDENTE;
      ACBrBoleto.Cedente.Conta := ListaConfiguracao.Items[0].CONTA;
      ACBrBoleto.Cedente.ContaDigito := ListaConfiguracao.Items[0].CONTADIG;
      ACBrBoleto.LayoutRemessa := TACBrLayoutRemessa(StrToint(ListaConfiguracao.Items[0].LAYOUTREMESSA));


      try
        ACBrBoleto.Cedente.FantasiaCedente := ListaEmpresa.Items[0].FANTASIA;

        ACBrBoleto.Cedente.Nome := ListaEmpresa.Items[0].NOME;
        ACBrBoleto.Cedente.Logradouro := ListaEmpresa.Items[0].LOGRADOURO;
        ACBrBoleto.Cedente.Bairro := ListaEmpresa.Items[0].BAIRRO;
        ACBrBoleto.Cedente.Cidade := ListaEmpresa.Items[0].CIDADE;
        ACBrBoleto.Cedente.CEP := ListaEmpresa.Items[0].CEP;
        ACBrBoleto.Cedente.Telefone := ListaEmpresa.Items[0].TELEFONE;

        Titulo := ACBrBoleto.CriarTituloNaLista;

        with Titulo do
        begin
          Vencimento        := StrToDate(vBody.GetValue<String>('datavencimento'));
          DataDocumento     := now;
          NumeroDocumento   := vBody.GetValue<String>('numerodocumento');
          EspecieDoc        := ListaConfiguracao.Items[0].ESPECIEDOC;
          Aceite            := TACBrAceiteTitulo(ListaConfiguracao.Items[0].ACEITE);
          DataProcessamento := Now;
          Carteira          := ListaConfiguracao.Items[0].CARTEIRA;
          NossoNumero       := vBody.GetValue<String>('nossonumero');
          ValorDocumento    := StrToCurrDef(vBody.GetValue<String>('valordocumento'),0);
          Sacado.NomeSacado := ListaCliente.Items[0].NOME;
          Sacado.CNPJCPF    := ListaCliente.Items[0].CPFCNPJ;
          Sacado.Logradouro := ListaCliente.Items[0].LOGRADOURO;
          Sacado.Numero     := ListaCliente.Items[0].NUMERO;
          Sacado.Bairro     := ListaCliente.Items[0].BAIRRO;
          Sacado.Cidade     := ListaCliente.Items[0].CIDADE;
          Sacado.UF         := ListaCliente.Items[0].UF;
          Sacado.CEP        := ListaCliente.Items[0].CEP;
//          ValorAbatimento   := StrToCurrDef(vBody.GetValue<String>('valorabatimento'),0);
          LocalPagamento    := ListaConfiguracao.Items[0].LOCALPAGAMENTO;
//          ValorMoraJuros    := StrToCurrDef(vBody.GetValue<String>('valoramorajuros'),0);
//          ValorDesconto     := StrToCurrDef(vBody.GetValue<String>('valoradesconto'),0);
//          DataMoraJuros     := StrToDateDef(vBody.GetValue<String>('datamorajuros'),0);
//          DataDesconto      := StrToDateDef(vBody.GetValue<String>('datadesconto'),0);
//          DataAbatimento    := StrToDateDef(vBody.GetValue<String>('dataabatimento'),0);
//          DataProtesto      := StrToDateDef(vBody.GetValue<String>('dataprotesto'),0);
//          PercentualMulta   := StrToCurrDef(vBody.GetValue<String>('percentualmulto'),0);
          OcorrenciaOriginal.Tipo := toRemessaBaixar;
          Instrucao1        := ListaConfiguracao.Items[0].INSTRUCAO1;
          Instrucao2        := ListaConfiguracao.Items[0].INSTRUCAO2;

          QtdePagamentoParcial:= 1;
          TipoPagamento:= tpNao_Aceita_Valor_Divergente;
          PercentualMinPagamento:= 0;
          PercentualMaxPagamento:= 0;
          ValorMinPagamento:= 0;
          ValorMaxPagamento:= 0;
        end;

        ACBrBoleto.GerarPDF;

        vBody.AddPair('links', ExtractFilePath(ParamStr(0))+ACBrBoletoReport.NomeArquivo);

        try
          TController.New.Titulo.This.Insert(vBody);
          Res.Status(200).Send<TJsonObject>(vBody);
        except
          Res.Status(500).Send('');
        end;
      finally
        FreeAndNil(ACBrBoletoReport);
        FreeAndNil(ACBrBoleto);
        ListaEmpresa.Free;
        ListaCliente.Free;
        ListaConfiguracao.Free;
      end;
    end)

  .Put('/titulo/:ID',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      vBody : TJsonObject;
      _id: string;
    begin
      vBody := TJSONObject.ParseJSONValue(Req.Body) as TJSONObject;
      try
        if not vBody.TryGetValue<String>('id', _id) then
          vBody.AddPair('id', Req.Params['ID']);
        TController.New.Titulo.This.Update(vBody);
        Res.Status(200).Send<TJsonObject>(vBody);
      except
        Res.Status(500).Send('');
      end;
    end)

  .Delete('/titulo/:id',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      try
        TController.New.Titulo.This.Delete('id',Req.Params['id']);
        Res.Status(200).Send('');
      except
        Res.Status(500).Send('');
      end;
    end);
end;

end.

