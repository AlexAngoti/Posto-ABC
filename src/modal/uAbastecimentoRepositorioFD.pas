unit uAbastecimentoRepositorioFD;

interface

uses
  uIAbastecimentoRepositorio,
  uAbastecimento,
  uDM, Datasnap.DBClient, System.SysUtils;

type
  TAbastecimentoRepositorioFD = class(TInterfacedObject, IAbastecimentoRepositorio)
  public
    procedure Inserir(const AAbastecimento: TAbastecimento);
  end;

implementation

procedure TAbastecimentoRepositorioFD.Inserir(
  const AAbastecimento: TAbastecimento);
begin
  (dm.dsAbastecimento.DataSet as TClientDataSet).Close;
  (dm.dsAbastecimento.DataSet as TClientDataSet).Open;
  (dm.dsAbastecimento.DataSet as TClientDataSet).Insert;

  (dm.dsAbastecimento.DataSet as TClientDataSet).FieldByName('DATA_ABAST').AsDateTime := AAbastecimento.Data;
  (dm.dsAbastecimento.DataSet as TClientDataSet).FieldByName('ID_BOMBA').AsInteger    := AAbastecimento.Bomba.Id;
  (dm.dsAbastecimento.DataSet as TClientDataSet).FieldByName('LITROS').AsFloat        := AAbastecimento.Litros;
  (dm.dsAbastecimento.DataSet as TClientDataSet).FieldByName('VALOR_TOTAL').AsFloat   := AAbastecimento.ValorTotal;
  (dm.dsAbastecimento.DataSet as TClientDataSet).FieldByName('IMPOSTO').AsFloat       := AAbastecimento.Imposto;
  (dm.dsAbastecimento.DataSet as TClientDataSet).Post;
  (dm.dsAbastecimento.DataSet as TClientDataSet).ApplyUpdates(-1);
end;

end.

