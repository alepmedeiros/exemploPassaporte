unit ServerHorse.Routers.Titulo;

interface

uses
  System.SysUtils,
  System.Classes,
  System.JSON,
  Horse,
  Horse.Jhonson,
  Horse.Paginate,
  Horse.CORS;

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
  System.Generics.Collections, ACBrBoletoConversao, pcnConversao, ACBrDFeSSL,
  blcksock, REST.Json;


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

  .Post('/registraboleto',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      vBody : TJsonObject;
      ACBrBoletoReport: TACBrBoletoFCFortes;
      ACBrBoleto: TACBrBoleto;
      Titulo : TACBrTitulo;
      ListaEmpresa : TObjectList<TEmpresa>;
      ListaCliente : TObjectList<TCliente>;
      ListaConfiguracao : TObjectList<TConfiguracao>;
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
      ACBrBoleto.Cedente.TipoInscricao := TACBrPessoaCedente(pJuridica);
      ACBrBoleto.LayoutRemessa := TACBrLayoutRemessa(StrToint(ListaConfiguracao.Items[0].LAYOUTREMESSA));

      ACBrBoleto.Configuracoes.WebService.Ambiente := Tpcntipoambiente(1);
      ACBrBoleto.Configuracoes.WebService.Operacao := TOperacao(0);
      ACBrBoleto.Configuracoes.WebService.SSLCryptLib := TSSLCryptLib(3);
      ACBrBoleto.Configuracoes.WebService.SSLHttpLib := TSSLHttpLib(2);
      ACBrBoleto.Configuracoes.WebService.SSLType := TSSLType(5);
      ACBrBoleto.Configuracoes.WebService.StoreName := 'My';
      ACBrBoleto.Configuracoes.WebService.TimeOut := 30000;
      ACBrBoleto.Configuracoes.WebService.UseCertificateHTTP := False;
      ACBrBoleto.Configuracoes.WebService.VersaoDF := '1.2';

      try
        {
          Caixa Econômica  //Dados para Homologaçao
          ACBrBoleto1.Cedente.CedenteWS.ClientID:=  SGCBS02P

          //Campos devem ser preenchidos conforme dados do Banco
          Título ex campos:
          QtdePagamentoParcial:= 1;
          TipoPagamento:= tpNao_Aceita_Valor_Divergente;
          PercentualMinPagamento:= 0;
          PercentualMaxPagamento:= 0;
          ValorMinPagamento:=0;
          ValorMaxPagamento:=0;
          Carteira  := 'RG';
          EspecieDoc:= '99'
          ACBrBoleto.Cedente.CedenteWS.ClientID := 'SGCBS02P'
        }

        {
          Banco do Brasil //Dados para Homologaçao
          ACBrBoleto1.Cedente.CedenteWS.ClientID:= 'eyJpZCI6IjgwNDNiNTMtZjQ5Mi00YyIsImNvZGlnb1B1YmxpY2Fkb3IiOjEwOSwiY29kaWdvU29mdHdhcmUiOjEsInNlcXVlbmNpYWxJbnN0YWxhY2FvIjoxfQ';
          ACBrBoleto1.Cedente.CedenteWS.ClientSecret:= 'eyJpZCI6IjBjZDFlMGQtN2UyNC00MGQyLWI0YSIsImNvZGlnb1B1YmxpY2Fkb3IiOjEwOSwiY29kaWdvU29mdHdhcmUiOjEsInNlcXVlbmNpYWxJbnN0YWxhY2FvIjoxLCJzZXF1ZW5jaWFsQ3JlZGVuY2lhbCI6MX0';
          ACBrBoleto1.Cedente.CedenteWS.Scope:= 'cobranca.registro-boletos';
          ACBrBoleto1.Cedente.CedenteWS.KeyUser:='J1234567';   //

          //Campos devem ser preenchidos conforme dados do Banco

          Título ex campos:
          ACBrBoleto1.Cedente.CodigoCedente     := '4863177';
          ACBrBoleto1.Cedente.Convenio	      := '1014051';
          ACBrBoleto1.Cedente.Modalidade        := '19';
          Carteira            := '17';
          EspecieDoc 	    := '99';
        }

        {
          Itau   //Campos para homologacao de acordo com dados fornecidos pelo banco

          ACBrBoleto1.Cedente.CedenteWS.ClientID:= ....
          ACBrBoleto1.Cedente.CedenteWS.ClientSecret:= .....
          ACBrBoleto1.Cedente.CedenteWS.Scope:= 'readonly';
          ACBrBoleto1.Cedente.CedenteWS.KeyUser:= ....;

          //Campos devem ser preenchidos conforme dados do Banco

          ACBrBoleto1.Cedente.CodigoCedente:= ......
          ACBrBoleto1.Cedente.Modalidade:= '19';
        }

        //Exemplo para a caixa economica
        ACBrBoleto.Cedente.CedenteWS.ClientID := 'SGCBS02P';

        ACBrBoleto.Cedente.FantasiaCedente := ListaEmpresa.Items[0].FANTASIA;

        ACBrBoleto.Cedente.Nome := ListaEmpresa.Items[0].NOME;
        ACBrBoleto.Cedente.CNPJCPF := ListaEmpresa.Items[0].CPFCNPJ;
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
          EspecieDoc        := '99';
          Aceite            := TACBrAceiteTitulo(ListaConfiguracao.Items[0].ACEITE);
          DataProcessamento := Now;
          Carteira          := 'RG';
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
          ValorAbatimento   := StrToCurrDef(vBody.GetValue<String>('valorabatimento'),0);
          LocalPagamento    := ListaConfiguracao.Items[0].LOCALPAGAMENTO;
          ValorMoraJuros    := StrToCurrDef(vBody.GetValue<String>('valoramorajuros'),0);
          ValorDesconto     := StrToCurrDef(vBody.GetValue<String>('valoradesconto'),0);
          DataMoraJuros     := StrToDateDef(vBody.GetValue<String>('datamorajuros'),0);
          DataDesconto      := StrToDateDef(vBody.GetValue<String>('datadesconto'),0);
          DataAbatimento    := StrToDateDef(vBody.GetValue<String>('dataabatimento'),0);
          DataProtesto      := StrToDateDef(vBody.GetValue<String>('dataprotesto'),0);
          PercentualMulta   := StrToCurrDef(vBody.GetValue<String>('percentualmulto'),0);
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

        //Função de Envio
        ACBrBoleto.EnviarBoleto;
        {retorno json em caso do uso do registro do boleto online}
        if ACBrBoleto.ListaRetornoWeb.Count > 0 then
          TJSON.ObjectToJsonstring(ACBrBoleto.ListaRetornoWeb.Objects[0]);

        vBody.AddPair('links', ExtractFilePath(ParamStr(0))+ACBrBoletoReport.NomeArquivo);
      try
        TController.New.Titulo.This.Insert(vBody);
        Res.Status(200).Send<TJsonObject>(TJSON.ObjectToJsonObject(ACBrBoleto.ListaRetornoWeb.Objects[0]));
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
          LocalPagamento    := ListaConfiguracao.Items[0].LOCALPAGAMENTO;
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

        {retorno json em caso do uso do registro do boleto online}
        {
        if ACBrBoleto.ListaRetornoWeb.Count > 0 then
          TJSON.ObjectToJsonstring(ACBrBoleto.ListaRetornoWeb.Objects[0]);
        }


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

