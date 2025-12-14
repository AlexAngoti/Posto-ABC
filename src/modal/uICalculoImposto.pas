unit uICalculoImposto;

interface

type
  ICalculoImposto = interface
    ['{8BC3CC9F-6C36-44C9-9291-2EECB4909C1D}']
    function Calcular(const AValor: Currency): Currency;
  end;

implementation

end.

