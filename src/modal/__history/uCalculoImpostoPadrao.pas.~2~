unit uCalculoImpostoPadrao;

interface

uses uICalculoImposto;

type
  TCalculoImpostoPadrao = class(TInterfacedObject, ICalculoImposto)
  public
    function Calcular(const AValor: Currency): Currency;
  end;

implementation

function TCalculoImpostoPadrao.Calcular(const AValor: Currency): Currency;
begin
  Result := AValor * 0.13;
end;

end.

