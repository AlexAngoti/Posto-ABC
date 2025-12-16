unit uImpressao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.Imaging.pngimage,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmImpressao = class(TForm)
    rlpAbastecimento: TRLReport;
    rlbHeader: TRLBand;
    RLLabel1: TRLLabel;
    RLImage1: TRLImage;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel5: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    s: TRLBand;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLBand2: TRLBand;
    RLDraw2: TRLDraw;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLBand3: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    qryItens: TFDQuery;
    qryItensDIA: TDateField;
    qryItensTANQUE: TStringField;
    qryItensBOMBA: TStringField;
    qryItensID_BOMBA: TIntegerField;
    qryItensLITROS: TFMTBCDField;
    qryItensVALOR: TFMTBCDField;
    qryItensIMPOSTO: TFMTBCDField;
    qryItensTOTAL_LITROS: TFMTBCDField;
    qryItensTOTAL_VALOR: TFMTBCDField;
    qryItensTOTAL_IMPOSTO: TFMTBCDField;
    qryItensHORA: TTimeField;
    dsItens: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImpressao: TfrmImpressao;

implementation

uses
  uRelAbastecimento;

{$R *.dfm}

procedure TfrmImpressao.FormCreate(Sender: TObject);
begin
  qryItens.Close;
  qryItens.ParamByName('DATAINI').AsDate := frmRelAbastecimento.dtpDataInicial.Date;
  qryItens.ParamByName('DATAFIN').AsDate := frmRelAbastecimento.dtpDataFinal.Date;
  qryItens.Open;
end;

end.
