object frmImpressao: TfrmImpressao
  Left = 0
  Top = 0
  Caption = 'Impress'#227'o'
  ClientHeight = 441
  ClientWidth = 847
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object rlImpressaoAbast: TRLReport
    Left = 35
    Top = 0
    Width = 794
    Height = 1123
    AllowedBands = [btDetail]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object lblTitulo: TRLLabel
      Left = 267
      Top = 12
      Width = 223
      Height = 19
      Caption = 'Relat'#243'rio de Abastecimentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object rlbndPrincipal: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 16
    end
  end
end
