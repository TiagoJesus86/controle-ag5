inherited fqrFIN_AReceberEntidade: TfqrFIN_AReceberEntidade
  Left = 337
  Top = 221
  Caption = 'fqrFIN_AReceberEntidade'
  ClientHeight = 599
  ClientWidth = 798
  OnCreate = FormCreate
  ExplicitWidth = 814
  ExplicitHeight = 638
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickRep: TQuickRep
    Left = 0
    Top = 0
    DataSet = cdsFIN_AReceber
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.PrintQuality = 0
    ReportTitle = 'T'#237'tulos A Receber Por Cliente'
    PrevInitialZoom = qrZoomToWidth
    ExplicitLeft = 0
    ExplicitTop = 0
    inherited rbPageHeader: TQRBand
      Size.Values = (
        63.500000000000000000
        1899.708333333333000000)
      inherited _qrsDateTime: TQRSysData
        Size.Values = (
          42.333333333333340000
          1576.916666666667000000
          0.000000000000000000
          322.791666666666700000)
        FontSize = 9
      end
      inherited _qrsPageNumber: TQRSysData
        Left = 628
        Width = 90
        Height = 16
        Size.Values = (
          42.333333333333340000
          1661.583333333333000000
          0.000000000000000000
          238.125000000000000000)
        Font.Height = -12
        FontSize = 9
        ExplicitLeft = 628
        ExplicitWidth = 90
        ExplicitHeight = 16
      end
      inherited QRShapeHeaderSeparator2: TQRShape
        Size.Values = (
          2.645833333333333000
          52.916666666666670000
          44.979166666666670000
          1796.520833333333000000)
      end
      inherited _qrsReportTitle2: TQRSysData
        Size.Values = (
          42.333333333333340000
          859.895833333333400000
          0.000000000000000000
          179.916666666666700000)
        FontSize = 9
      end
    end
    inherited rbTitle: TQRBand
      Size.Values = (
        293.687500000000000000
        1899.708333333333000000)
      inherited _qrsReportTitle: TQRSysData
        Size.Values = (
          60.854166666666680000
          809.625000000000000000
          13.229166666666670000
          277.812500000000000000)
        FontSize = 14
      end
      inherited _qrsDateTimeTitle: TQRSysData
        Size.Values = (
          42.333333333333340000
          1576.916666666667000000
          203.729166666666700000
          322.791666666666700000)
        FontSize = 9
      end
      inherited _qrsPageNumberTitle: TQRSysData
        Size.Values = (
          42.333333333333340000
          1661.583333333333000000
          246.062500000000000000
          238.125000000000000000)
        FontSize = 9
      end
      inherited _qrImageLogo: TQRImage
        Left = 4
        Height = 70
        Size.Values = (
          185.208333333333300000
          10.583333333333330000
          7.937500000000000000
          254.000000000000000000)
        ExplicitLeft = 4
        ExplicitHeight = 70
      end
      inherited _qrlDescricao: TQRLabel
        Size.Values = (
          42.333333333333340000
          846.666666666666600000
          68.791666666666680000
          206.375000000000000000)
        FontSize = 9
      end
      inherited QRShapeHeaderSeparator: TQRShape
        Left = 3
        Width = 714
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          198.437500000000000000
          1889.125000000000000000)
        ExplicitLeft = 3
        ExplicitWidth = 714
      end
      inherited QRImageDomain: TQRImage
        Left = 564
        Top = 5
        Size.Values = (
          156.104166666666700000
          1492.250000000000000000
          13.229166666666670000
          391.583333333333400000)
        ExplicitLeft = 564
        ExplicitTop = 5
      end
    end
    inherited rbDetail: TQRBand
      Top = 210
      Height = 17
      BeforePrint = rbDetailBeforePrint
      Size.Values = (
        44.979166666666670000
        1899.708333333333000000)
      ExplicitTop = 210
      ExplicitHeight = 17
      object QRDBText1: TQRDBText
        Left = 0
        Top = 1
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          0.000000000000000000
          2.645833333333333000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = cdsFIN_AReceber
        DataField = 'VENCTO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 650
        Top = 1
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          1719.791666666667000000
          2.645833333333333000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = cdsFIN_AReceber
        DataField = 'VALOR'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText8: TQRDBText
        Left = 60
        Top = 1
        Width = 90
        Height = 15
        Size.Values = (
          39.687500000000000000
          158.750000000000000000
          2.645833333333333000
          238.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = cdsFIN_AReceber
        DataField = 'DOCUMENTO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 150
        Top = 1
        Width = 300
        Height = 15
        Size.Values = (
          39.687500000000000000
          396.875000000000000000
          2.645833333333333000
          793.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = cdsFIN_AReceber
        DataField = 'HISTORICO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 450
        Top = 1
        Width = 200
        Height = 17
        Size.Values = (
          44.979166666666670000
          1190.625000000000000000
          2.645833333333333000
          529.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = cdsFIN_AReceber
        DataField = 'NOMECONTA'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
    end
    inherited rbPageFooter: TQRBand
      Top = 261
      Height = 72
      Size.Values = (
        190.500000000000000000
        1899.708333333333000000)
      ExplicitTop = 261
      ExplicitHeight = 72
      inherited _qrlFooter: TQRLabel
        Size.Values = (
          34.395833333333340000
          0.000000000000000000
          0.000000000000000000
          140.229166666666700000)
        FontSize = 7
      end
      inherited QRShapeFooterSeparator1: TQRShape
        Top = 11
        Size.Values = (
          2.645833333333333000
          52.916666666666670000
          29.104166666666670000
          1791.229166666667000000)
        ExplicitTop = 11
      end
      inherited QRLabelFooterSeparator1: TQRLabel
        Top = 13
        Size.Values = (
          34.395833333333340000
          55.562500000000000000
          34.395833333333340000
          534.458333333333400000)
        FontSize = 7
        ExplicitTop = 13
      end
      inherited QRShapeFooterSeparator: TQRShape
        Left = 113
        Top = 42
        Width = 587
        Size.Values = (
          2.645833333333333000
          298.979166666666700000
          111.125000000000000000
          1553.104166666667000000)
        ExplicitLeft = 113
        ExplicitTop = 42
        ExplicitWidth = 587
      end
      inherited QRLabelFooterSeparator: TQRLabel
        Left = 192
        Top = 28
        Size.Values = (
          34.395833333333340000
          508.000000000000000000
          74.083333333333340000
          534.458333333333400000)
        FontSize = 7
        ExplicitLeft = 192
        ExplicitTop = 28
      end
      inherited LogoClinica: TQRImage
        Left = 4
        Top = 13
        Width = 150
        Height = 69
        Size.Values = (
          182.562500000000000000
          10.583333333333330000
          34.395833333333330000
          396.875000000000000000)
        ExplicitLeft = 4
        ExplicitTop = 13
        ExplicitWidth = 150
        ExplicitHeight = 69
      end
      inherited _qrlLegenda: TQRLabel
        Size.Values = (
          39.687500000000000000
          44.979166666666670000
          31.750000000000000000
          2.645833333333333000)
        FontSize = 8
      end
      inherited _qrlLegenda1: TQRLabel
        Size.Values = (
          39.687500000000000000
          44.979166666666670000
          7.937500000000000000
          2.645833333333333000)
        FontSize = 8
      end
    end
    object QRGroup1: TQRGroup [4]
      Left = 38
      Top = 190
      Width = 718
      Height = 20
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        52.916666666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'cdsFIN_AReceber.ENTIDADE'
      FooterBand = QRBand7
      Master = QuickRep
      ReprintOnNewPage = False
      object QRDBText2: TQRDBText
        Left = 7
        Top = 0
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          0.000000000000000000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Color = clWhite
        DataSet = cdsFIN_AReceber
        DataField = 'ENTIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
    end
    object QRBand7: TQRBand [5]
      Left = 38
      Top = 227
      Width = 718
      Height = 17
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        44.979166666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel16: TQRLabel
        Left = 486
        Top = 1
        Width = 164
        Height = 15
        Size.Values = (
          39.687500000000000000
          1285.875000000000000000
          2.645833333333333000
          433.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'TOTAL A RECEBER DO CLIENTE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 650
        Top = 1
        Width = 60
        Height = 15
        Frame.DrawTop = True
        Size.Values = (
          39.687500000000000000
          1719.791666666667000000
          2.645833333333333000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ',0.00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel14Print
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    inherited rbSummary: TQRBand
      Top = 244
      Height = 17
      Size.Values = (
        44.979166666666670000
        1899.708333333333000000)
      ExplicitTop = 244
      ExplicitHeight = 17
      inherited qrQuantidadeRegistros: TQRLabel
        Size.Values = (
          34.395833333333340000
          1611.312500000000000000
          50.270833333333330000
          230.187500000000000000)
        FontSize = 7
      end
      object QRLabel10: TQRLabel
        Left = 650
        Top = 1
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          1719.791666666667000000
          2.645833333333333000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = ',0.00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel10Print
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 551
        Top = 1
        Width = 99
        Height = 15
        Size.Values = (
          39.687500000000000000
          1457.854166666667000000
          2.645833333333333000
          261.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'TOTAL A RECEBER'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    inherited rbColumnHeader: TQRBand
      Height = 17
      Size.Values = (
        44.979166666666670000
        1899.708333333333000000)
      ExplicitHeight = 17
      object QRLabel1: TQRLabel
        Left = 0
        Top = 0
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          0.000000000000000000
          0.000000000000000000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Vencto'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 150
        Top = 0
        Width = 300
        Height = 15
        Size.Values = (
          39.687500000000000000
          396.875000000000000000
          0.000000000000000000
          793.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Descri'#231#227'o'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 650
        Top = 0
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          1719.791666666667000000
          0.000000000000000000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '$ Valor'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 60
        Top = 0
        Width = 90
        Height = 15
        Size.Values = (
          39.687500000000000000
          158.750000000000000000
          0.000000000000000000
          238.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Documento'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 450
        Top = 0
        Width = 200
        Height = 15
        Size.Values = (
          39.687500000000000000
          1190.625000000000000000
          0.000000000000000000
          529.166666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Conta'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
  end
  object cdsFIN_AReceber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFIN_AReceber'
    Left = 288
    object cdsFIN_AReceberKFIN_ARECEBER: TStringField
      FieldName = 'KFIN_AReceber'
      Required = True
    end
    object cdsFIN_AReceberHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Required = True
      Size = 60
    end
    object cdsFIN_AReceberENTIDADE: TStringField
      FieldName = 'ENTIDADE'
      Required = True
      Size = 60
    end
    object cdsFIN_AReceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object cdsFIN_AReceberKFIN_ARECEBER_PARCELA: TStringField
      FieldName = 'KFIN_AReceber_PARCELA'
      Required = True
    end
    object cdsFIN_AReceberVENCTO: TSQLTimeStampField
      FieldName = 'VENCTO'
      Required = True
    end
    object cdsFIN_AReceberVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
      DisplayFormat = ',0.00'
    end
    object cdsFIN_AReceberPAGTO: TSQLTimeStampField
      FieldName = 'PAGTO'
    end
    object cdsFIN_AReceberPAGO: TFloatField
      FieldName = 'PAGO'
      DisplayFormat = ',0.00'
    end
    object cdsFIN_AReceberNOMECONTA: TStringField
      FieldName = 'NOMECONTA'
      Size = 30
    end
    object cdsFIN_AReceberPREVISAO: TStringField
      FieldName = 'PREVISAO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dspFIN_AReceber: TDataSetProvider
    DataSet = sqlFIN_AReceber
    Options = [poIncFieldProps, poRetainServerOrder]
    UpdateMode = upWhereKeyOnly
    Left = 224
    Top = 40
  end
  object sqlFIN_AReceber: TTcSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBFinanceiro.SQLDB
    SQL = (
      'SELECT'
      '    A.KFIN_AReceber,'
      '    A.HISTORICO,'
      '    E.NOME as ENTIDADE,'
      '    A.DOCUMENTO,'
      '    P.KFIN_AReceber_PARCELA,'
      '    P.VENCTO,'
      '    P.VALOR,'
      '    P.PAGTO,'
      '    P.PAGO,'
      '    P.PREVISAO,'
      '    c.NOME as NOMECONTA'
      'FROM FIN_AReceber A'
      
        '  JOIN FIN_AReceber_PARCELAS P on (P.KFIN_AReceber = A.KFIN_ARec' +
        'eber)'
      '    LEFT JOIN FIN_CONTAS C on (P.KFIN_CONTA = c.KFIN_CONTA)'
      '  JOIN CAD_ENTIDADES E on (E.KCAD_ENTIDADE = A.KCAD_ENTIDADE)'
      'Where (P.PAGO IS NULL)'
      '%s'
      'Order By E.NOME, A.KCAD_ENTIDADE, P.Vencto')
    Left = 288
    Top = 80
    object sqlFIN_AReceberKFIN_ARECEBER: TStringField
      FieldName = 'KFIN_AReceber'
      Required = True
    end
    object sqlFIN_AReceberHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 128
    end
    object sqlFIN_AReceberENTIDADE: TStringField
      FieldName = 'ENTIDADE'
      Size = 128
    end
    object sqlFIN_AReceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 32
    end
    object sqlFIN_AReceberKFIN_ARECEBER_PARCELA: TStringField
      FieldName = 'KFIN_AReceber_PARCELA'
      Required = True
    end
    object sqlFIN_AReceberVENCTO: TSQLTimeStampField
      FieldName = 'VENCTO'
      Required = True
    end
    object sqlFIN_AReceberVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
      DisplayFormat = ',0.00'
    end
    object sqlFIN_AReceberPAGTO: TSQLTimeStampField
      FieldName = 'PAGTO'
    end
    object sqlFIN_AReceberPAGO: TFloatField
      FieldName = 'PAGO'
      DisplayFormat = ',0.00'
    end
    object sqlFIN_AReceberPREVISAO: TStringField
      FieldName = 'PREVISAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sqlFIN_AReceberNOMECONTA: TStringField
      FieldName = 'NOMECONTA'
      Size = 64
    end
  end
end
