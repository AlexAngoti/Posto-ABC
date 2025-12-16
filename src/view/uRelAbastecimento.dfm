inherited frmRelAbastecimento: TfrmRelAbastecimento
  Caption = 'frmRelAbastecimento'
  ClientWidth = 1054
  KeyPreview = True
  Position = poScreenCenter
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  ExplicitWidth = 1054
  TextHeight = 15
  inherited pnlSubTop: TPanel
    Width = 1044
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1044
    inherited btnFechar: TSpeedButton
      Left = 1000
      ExplicitLeft = 1000
    end
    inherited btnImprimir: TSpeedButton
      OnClick = btnImprimirClick
    end
    inherited btnPesquisar: TSpeedButton
      OnClick = btnPesquisarClick
    end
  end
  inherited pnlCentrol: TPanel
    Width = 1044
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1044
    inherited lblDataInicial: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lblDataFinal: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited pnlGrid: TPanel
    Width = 1044
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1044
    inherited grdRelatorio: TDBGrid
      Width = 1044
      DataSource = dsRelatorio
      Font.Name = 'Sans Serif Collection'
      ParentFont = False
      Columns = <
        item
          Expanded = False
          FieldName = 'DIA'
          Title.Caption = 'Data Abast.'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TANQUE'
          Title.Caption = 'Tanque'
          Width = 201
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BOMBA'
          Title.Caption = 'Bomba'
          Width = 143
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'TOTAL_LITROS'
          Title.Caption = 'Abastecimento (Litros)'
          Width = 167
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'TOTAL_VALOR'
          Title.Caption = 'Valor (R$)'
          Width = 139
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'TOTAL_IMPOSTO'
          Title.Caption = 'Imposto (R$)'
          Width = 140
          Visible = True
        end>
    end
  end
  inherited dsRelatorio: TDataSource
    Top = 323
  end
  inherited qryRelatorio: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      
        '                                SELECT CAST(a.DATA_ABAST AS DATE' +
        ') AS DIA,'
      #9'   t.NOME                     AS TANQUE,'
      #9'   b.NOME                     AS BOMBA,'
      '           a.ID_BOMBA,'
      #9'   SUM(a.LITROS)              AS TOTAL_LITROS,'
      #9'   SUM(a.VALOR_TOTAL)         AS TOTAL_VALOR,'
      #9'   SUM(a.IMPOSTO)             AS TOTAL_IMPOSTO'
      '  FROM ABASTECIMENTO a'
      ' INNER JOIN BOMBA b  ON b.ID = a.ID_BOMBA'
      ' INNER JOIN TANQUE t ON t.ID = b.ID_TANQUE'
      ' WHERE CAST(a.DATA_ABAST AS DATE) BETWEEN :DATAINI AND :DATAFIN'
      ' GROUP BY CAST(a.DATA_ABAST AS DATE), '
      '          t.NOME,'
      '          b.NOME, a.ID_BOMBA'
      '  ORDER BY DIA,'
      '           TANQUE,'
      '           BOMBA;')
    Top = 323
    ParamData = <
      item
        Name = 'DATAINI'
        ParamType = ptInput
      end
      item
        Name = 'DATAFIN'
        ParamType = ptInput
      end>
    object qryRelatorioDIA: TDateField
      FieldName = 'DIA'
      Origin = 'DIA'
      Required = True
    end
    object qryRelatorioTANQUE: TStringField
      FieldName = 'TANQUE'
      Origin = 'TANQUE'
      Required = True
      Size = 50
    end
    object qryRelatorioBOMBA: TStringField
      FieldName = 'BOMBA'
      Origin = 'BOMBA'
      Required = True
      Size = 50
    end
    object qryRelatorioTOTAL_LITROS: TFMTBCDField
      FieldName = 'TOTAL_LITROS'
      Origin = 'TOTAL_LITROS'
      DisplayFormat = '#,##0.00'
      Precision = 38
      Size = 3
    end
    object qryRelatorioTOTAL_VALOR: TFMTBCDField
      FieldName = 'TOTAL_VALOR'
      Origin = 'TOTAL_VALOR'
      DisplayFormat = '#,##0.00'
      Precision = 38
      Size = 2
    end
    object qryRelatorioTOTAL_IMPOSTO: TFMTBCDField
      FieldName = 'TOTAL_IMPOSTO'
      Origin = 'TOTAL_IMPOSTO'
      DisplayFormat = '#,##0.00'
      Precision = 38
      Size = 2
    end
    object qryRelatorioID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      Required = True
    end
  end
end
