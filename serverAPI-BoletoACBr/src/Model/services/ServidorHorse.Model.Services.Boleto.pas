unit ServidorHorse.Model.Services.Boleto;

interface

uses
  ACBrBoleto,
  ServidorHorse.Model.Services.Interfaces;

type
  TModelACBrBoleto = class(TInterfacedObject, iModelACBrBoleto)
    private
      FParent : TACBrBoleto;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelACBrBoleto;
      function ACBrBoleto : TACBrBoleto;
  end;

implementation


{ TModelACBrBoleto }

function TModelACBrBoleto.ACBrBoleto: TACBrBoleto;
begin
  Result := FParent;
end;

constructor TModelACBrBoleto.Create;
begin
  FParent := TACBrBoleto.Create(nil);;
end;

destructor TModelACBrBoleto.Destroy;
begin
  FParent.Free;
  inherited;
end;

class function TModelACBrBoleto.New: iModelACBrBoleto;
begin
  Result := Self.Create;
end;

end.
