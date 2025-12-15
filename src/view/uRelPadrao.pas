unit uRelPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RLReport;

type
  TfrmRelPadrao = class(TForm)
    pnlSubTop: TPanel;
    imgLogoTop: TImage;
    btnFechar: TSpeedButton;
    pnlCentrol: TPanel;
    btnImprimir: TSpeedButton;
    btnPesquisar: TSpeedButton;
    pnlGrid: TPanel;
    grdRelatorio: TDBGrid;
    lblDataInicial: TLabel;
    lblDataFinal: TLabel;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    dsRelatorio: TDataSource;
    qryRelatorio: TFDQuery;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPadrao: TfrmRelPadrao;

implementation

{$R *.dfm}

procedure TfrmRelPadrao.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

end.
