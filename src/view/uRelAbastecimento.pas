unit uRelAbastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uRelPadrao, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmRelAbastecimento = class(TfrmRelPadrao)
    qryRelatorioDIA: TDateField;
    qryRelatorioTANQUE: TStringField;
    qryRelatorioBOMBA: TStringField;
    qryRelatorioTOTAL_LITROS: TFMTBCDField;
    qryRelatorioTOTAL_VALOR: TFMTBCDField;
    qryRelatorioTOTAL_IMPOSTO: TFMTBCDField;
    qryRelatorioID_BOMBA: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
  private
    procedure OpenDataSet;
    procedure Impressao;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelAbastecimento: TfrmRelAbastecimento;

implementation

uses
  uDm, uImpressao;

{$R *.dfm}

{ TfrmRelAbastecimento }

procedure TfrmRelAbastecimento.btnImprimirClick(Sender: TObject);
begin
  inherited;
  Self.Impressao;
end;

procedure TfrmRelAbastecimento.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  Self.OpenDataSet;
end;

procedure TfrmRelAbastecimento.FormCreate(Sender: TObject);
begin
  inherited;
  dtpDataInicial.Date := Date - 30;
  dtpDataFinal.Date   := Date;
end;

procedure TfrmRelAbastecimento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
    VK_F2: btnPesquisarClick(nil);
  end;
end;

procedure TfrmRelAbastecimento.OpenDataSet;
begin
  qryRelatorio.Close;
  qryRelatorio.ParamByName('DATAINI').AsDate := dtpDataInicial.Date;
  qryRelatorio.ParamByName('DATAFIN').AsDate := dtpDataFinal.Date;
  qryRelatorio.Open;
end;

procedure TfrmRelAbastecimento.Impressao;
begin
  frmImpressao := TfrmImpressao.Create(nil);
  try
     frmImpressao.rlpAbastecimento.Prepare;
     frmImpressao.rlpAbastecimento.PreviewModal;
  finally
     FreeAndNil(frmImpressao)
  end;
end;

end.
