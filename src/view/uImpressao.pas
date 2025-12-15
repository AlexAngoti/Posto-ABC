unit uImpressao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TfrmImpressao = class(TForm)
    rlImpressaoAbast: TRLReport;
    lblTitulo: TRLLabel;
    rlbndPrincipal: TRLBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImpressao: TfrmImpressao;

implementation

{$R *.dfm}

end.
