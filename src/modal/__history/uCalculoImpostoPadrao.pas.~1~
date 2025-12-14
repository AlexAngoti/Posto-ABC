unit uBomba;

interface

uses uTanque;

type
  TBomba = class
  private
    FId: Integer;
    FNome: string;
    FTanque: TTanque;
  public
    constructor Create;
    destructor Destroy; override;

    property Id: Integer read FId write FId;
    property Nome: string read FNome write FNome;
    property Tanque: TTanque read FTanque write FTanque;
  end;

implementation

constructor TBomba.Create;
begin
  inherited;
  FTanque := TTanque.Create;
end;

destructor TBomba.Destroy;
begin
  FTanque.Free;
  inherited;
end;

end.

