inherited frmRelAbastecimento: TfrmRelAbastecimento
  Caption = 'frmRelAbastecimento'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited pnlSubTop: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited pnlCentrol: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited lblDataInicial: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lblDataFinal: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited pnlGrid: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited qryRelatorio: TFDQuery
    Connection = dm.FDConnection
    SQL.Strings = (
      
        '                                SELECT CAST(a.DATA_ABAST AS DATE' +
        ') AS DIA,'
      #9'   t.NOME                     AS TANQUE,'
      #9'   b.NOME                     AS BOMBA,'
      #9'   SUM(a.LITROS)              AS TOTAL_LITROS,'
      #9'   SUM(a.VALOR_TOTAL)         AS TOTAL_VALOR,'
      #9'   SUM(a.IMPOSTO)             AS TOTAL_IMPOSTO'
      '  FROM ABASTECIMENTO a'
      ' INNER JOIN BOMBA b  ON b.ID = a.ID_BOMBA'
      ' INNER JOIN TANQUE t ON t.ID = b.ID_TANQUE'
      ' WHERE CAST(a.DATA_ABAST AS DATE) BETWEEN :DATAINI AND :DATAFIN'
      ' GROUP BY CAST(a.DATA_ABAST AS DATE), '
      '          t.NOME,'
      '          b.NOME'
      '  ORDER BY DIA,'
      '           TANQUE,'
      '           BOMBA;')
    ParamData = <
      item
        Name = 'DATAINI'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATAFIN'
        ParamType = ptInput
      end>
  end
end
