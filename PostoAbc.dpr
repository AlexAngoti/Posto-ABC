program PostoAbc;

uses
  Vcl.Forms,
  uMenu in 'src\view\uMenu.pas' {frmMenu},
  uICalculoImposto in 'src\modal\uICalculoImposto.pas',
  uCalculoImpostoPadrao in 'src\modal\uCalculoImpostoPadrao.pas',
  uTanque in 'src\modal\uTanque.pas',
  uBomba in 'src\modal\uBomba.pas',
  uAbastecimento in 'src\modal\uAbastecimento.pas',
  uIAbastecimentoRepositorio in 'src\modal\uIAbastecimentoRepositorio.pas',
  uDm in 'src\modal\uDm.pas' {dm: TDataModule},
  uAbastecimentoRepositorioFD in 'src\modal\uAbastecimentoRepositorioFD.pas',
  uMovAbastecimento in 'src\view\uMovAbastecimento.pas' {frmMovAbastecimento},
  uFuncoes in 'src\modal\uFuncoes.pas',
  UFundo in 'src\view\UFundo.pas' {frmFundo},
  uRelPadrao in 'src\view\uRelPadrao.pas' {frmRelPadrao},
  uImpressao in 'src\view\uImpressao.pas' {frmImpressao},
  uRelAbastecimento in 'src\view\uRelAbastecimento.pas' {frmRelAbastecimento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
