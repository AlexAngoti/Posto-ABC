unit uAbastecimento;

interface

uses
  System.SysUtils,
  uBomba,
  uICalculoImposto;

type
  TAbastecimento = class
  private
    FId: Integer;
    FData: TDateTime;
    FBomba: TBomba;
    FLitros: Double;
    FValorTotal: Currency;
    FImposto: Currency;
    FCalculoImposto: ICalculoImposto;
  public
    constructor Create(const ACalculoImposto: ICalculoImposto);
    destructor Destroy; override;

    procedure CalcularImposto;

    property Id: Integer read FId write FId;
    property Data: TDateTime read FData write FData;
    property Bomba: TBomba read FBomba write FBomba;
    property Litros: Double read FLitros write FLitros;
    property ValorTotal: Currency read FValorTotal write FValorTotal;
    property Imposto: Currency read FImposto;
  end;

implementation

constructor TAbastecimento.Create(
  const ACalculoImposto: ICalculoImposto);
begin
  inherited Create;
  FBomba := TBomba.Create;
  FCalculoImposto := ACalculoImposto;
  FData := Now;
end;

destructor TAbastecimento.Destroy;
begin
  FBomba.Free;
  inherited;
end;

procedure TAbastecimento.CalcularImposto;
begin
  FImposto := FCalculoImposto.Calcular(FValorTotal);
end;

end.

