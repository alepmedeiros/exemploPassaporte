unit ServidorHorse.Model.Services.Interfaces;

interface

uses
  ACBrBoleto, ACBrBoletoConversao;

type
  iModelACBrBoleto = interface
    function ACBrBoleto : TACBrBoleto;
  end;

  iModelServicesBoleto = interface

  end;

  iModelServicesBoletoCedente = interface
    function Nome(Value : String) : iModelServicesBoletoCedente;
    function Fantasia(Value : String) : iModelServicesBoletoCedente;
    function Codigo(Value : String) : iModelServicesBoletoCedente;
    function Agencia(Value : String) : iModelServicesBoletoCedente;
    function AgenciaDigito(Value : String) : iModelServicesBoletoCedente;
    function Conta(Value : String) : iModelServicesBoletoCedente;
    function Modalidade(Value : String) : iModelServicesBoletoCedente;
    function Convenio(Value : String) : iModelServicesBoletoCedente;
    function TipoDocumento(Value : TACBrTipoDocumento) : iModelServicesBoletoCedente;//(Tradicional=1, Escritural=2)
    function CNPJCPF(Value : String) : iModelServicesBoletoCedente;
    function Logradouro(Value : String) : iModelServicesBoletoCedente;
    function Numero(Value : String) : iModelServicesBoletoCedente;
    function Complemento(Value : String) : iModelServicesBoletoCedente;
    function Bairro(Value : String) : iModelServicesBoletoCedente;
    function Cidade(Value : String) : iModelServicesBoletoCedente;
    function UF(Value : String) : iModelServicesBoletoCedente;
    function CEP(Value : String) : iModelServicesBoletoCedente;
    function Telefone(Value : String) : iModelServicesBoletoCedente;
    function Operacao(Value : String) : iModelServicesBoletoCedente; 
  end;

implementation

end.
