inherited FIN_VendasPorCentroCustoReport: TFIN_VendasPorCentroCustoReport
  Left = 354
  Top = 85
  Caption = 'Vendas por centro de custo'
  ClientWidth = 814
  ExplicitWidth = 830
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickRep: TQuickRep
    Left = -4
    Top = 0
    BeforePrint = QuickRepBeforePrint
    DataSet = cdsMaster
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
    ReportTitle = 'Vendas por centro de custo'
    ExplicitLeft = -4
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
      Frame.Color = 15724527
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
        Top = 92
        Size.Values = (
          42.333333333333340000
          1661.583333333333000000
          243.416666666666700000
          238.125000000000000000)
        FontSize = 9
        ExplicitTop = 92
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
      Top = 193
      Height = 24
      Frame.Color = 15724527
      Frame.DrawTop = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      BeforePrint = rbDetailBeforePrint
      Size.Values = (
        63.500000000000000000
        1899.708333333333000000)
      ExplicitTop = 193
      ExplicitHeight = 24
      object QRDBText1: TQRDBText
        Left = 74
        Top = 3
        Width = 87
        Height = 16
        Size.Values = (
          42.333333333333330000
          195.791666666666700000
          7.937500000000000000
          230.187500000000000000)
        XLColumn = 1
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = cdsMaster
        DataField = 'DATA_EMISSAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 217
        Top = 3
        Width = 80
        Height = 16
        Size.Values = (
          42.333333333333330000
          574.145833333333300000
          7.937500000000000000
          211.666666666666700000)
        XLColumn = 3
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = cdsMaster
        DataField = 'NOTA_FISCAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 326
        Top = 3
        Width = 36
        Height = 16
        Size.Values = (
          42.333333333333330000
          862.541666666666800000
          7.937500000000000000
          95.250000000000000000)
        XLColumn = 5
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = cdsMaster
        DataField = 'SERIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 552
        Top = 3
        Width = 160
        Height = 16
        Size.Values = (
          42.333333333333330000
          1460.500000000000000000
          7.937500000000000000
          423.333333333333300000)
        XLColumn = 9
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = cdsMaster
        DataField = 'NOMEENTIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 7
        Top = 3
        Width = 66
        Height = 16
        Size.Values = (
          42.333333333333340000
          18.520833333333330000
          7.937500000000000000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data emiss'#227'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 162
        Top = 3
        Width = 52
        Height = 16
        Size.Values = (
          42.333333333333340000
          428.625000000000000000
          7.937500000000000000
          137.583333333333300000)
        XLColumn = 2
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nota fiscal'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 299
        Top = 3
        Width = 26
        Height = 16
        Size.Values = (
          42.333333333333340000
          791.104166666666800000
          7.937500000000000000
          68.791666666666680000)
        XLColumn = 4
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'S'#233'rie'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 517
        Top = 3
        Width = 33
        Height = 16
        Size.Values = (
          42.333333333333340000
          1367.895833333333000000
          7.937500000000000000
          87.312500000000000000)
        XLColumn = 8
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cliente'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText13: TQRDBText
        Left = 393
        Top = 3
        Width = 118
        Height = 16
        Size.Values = (
          42.333333333333330000
          1039.812500000000000000
          7.937500000000000000
          312.208333333333300000)
        XLColumn = 7
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = cdsMaster
        DataField = 'TOTAL_NOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptNumeric
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 367
        Top = 3
        Width = 24
        Height = 16
        Size.Values = (
          42.333333333333340000
          971.020833333333400000
          7.937500000000000000
          63.500000000000000000)
        XLColumn = 6
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    inherited rbPageFooter: TQRBand
      Top = 259
      Height = 72
      Frame.Color = 15724527
      Size.Values = (
        190.500000000000000000
        1899.708333333333000000)
      ExplicitTop = 259
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
        Width = 75
        Height = 35
        Size.Values = (
          92.604166666666680000
          10.583333333333330000
          34.395833333333340000
          198.437500000000000000)
        ExplicitLeft = 4
        ExplicitTop = 13
        ExplicitWidth = 75
        ExplicitHeight = 35
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
    inherited rbSummary: TQRBand
      Top = 237
      Height = 22
      Frame.DrawBottom = True
      AlignToBottom = False
      BeforePrint = rbSummaryBeforePrint
      Enabled = True
      Size.Values = (
        58.208333333333340000
        1899.708333333333000000)
      ExplicitTop = 237
      ExplicitHeight = 22
      inherited qrQuantidadeRegistros: TQRLabel
        Size.Values = (
          34.395833333333340000
          1611.312500000000000000
          50.270833333333330000
          230.187500000000000000)
        FontSize = 7
      end
      object QRLabel5: TQRLabel
        Left = 454
        Top = 2
        Width = 114
        Height = 17
        Size.Values = (
          44.979166666666670000
          1201.208333333333000000
          5.291666666666667000
          301.625000000000000000)
        XLColumn = 8
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total per'#237'odo : R$'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrlTotal: TQRLabel
        Left = 571
        Top = 2
        Width = 142
        Height = 17
        Size.Values = (
          44.979166666666670000
          1510.770833333333000000
          5.291666666666667000
          375.708333333333300000)
        XLColumn = 9
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '#,0.00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptNumeric
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
    end
    inherited rbColumnHeader: TQRBand
      Height = 20
      Frame.Color = 15724527
      Frame.DrawTop = True
      Size.Values = (
        52.916666666666670000
        1899.708333333333000000)
      ExplicitHeight = 20
      object QRLabel1: TQRLabel
        Left = 53
        Top = 2
        Width = 143
        Height = 15
        Size.Values = (
          39.687500000000000000
          140.229166666666700000
          5.291666666666667000
          378.354166666666700000)
        XLColumn = 1
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Produto'
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
      object QRLabel10: TQRLabel
        Left = 198
        Top = 2
        Width = 64
        Height = 15
        Size.Values = (
          39.687500000000000000
          523.875000000000000000
          5.291666666666667000
          169.333333333333300000)
        XLColumn = 2
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Quantidade'
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
      object QRLabel11: TQRLabel
        Left = 264
        Top = 2
        Width = 66
        Height = 15
        Size.Values = (
          39.687500000000000000
          698.500000000000000000
          5.291666666666667000
          174.625000000000000000)
        XLColumn = 3
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Valor unit'#225'rio'
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
      object QRLabel12: TQRLabel
        Left = 333
        Top = 2
        Width = 64
        Height = 15
        Size.Values = (
          39.687500000000000000
          881.062500000000000000
          5.291666666666667000
          169.333333333333300000)
        XLColumn = 4
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Total'
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
      object QRLabel7: TQRLabel
        Left = 400
        Top = 2
        Width = 32
        Height = 15
        Size.Values = (
          39.687500000000000000
          1058.333333333333000000
          5.291666666666667000
          84.666666666666680000)
        XLColumn = 5
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '%'
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
      object QRLabel13: TQRLabel
        Left = 435
        Top = 2
        Width = 133
        Height = 15
        Size.Values = (
          39.687500000000000000
          1150.937500000000000000
          5.291666666666667000
          351.895833333333300000)
        XLColumn = 6
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Conta cont'#225'bil'
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
        Left = 571
        Top = 2
        Width = 142
        Height = 15
        Size.Values = (
          39.687500000000000000
          1510.770833333333000000
          5.291666666666667000
          375.708333333333300000)
        XLColumn = 7
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Centro de custo'
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
      object QRLabel8: TQRLabel
        Left = 5
        Top = 2
        Width = 45
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          5.291666666666667000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'C'#243'digo'
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
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 217
      Width = 718
      Height = 20
      Frame.Color = 15724527
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep
      DataSet = cdsDetalhes
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText5: TQRDBText
        Left = 5
        Top = 2
        Width = 45
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          5.291666666666667000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = cdsDetalhes
        DataField = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 53
        Top = 2
        Width = 143
        Height = 15
        Size.Values = (
          39.687500000000000000
          140.229166666666700000
          5.291666666666667000
          378.354166666666700000)
        XLColumn = 1
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = cdsDetalhes
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 198
        Top = 2
        Width = 64
        Height = 15
        Size.Values = (
          39.687500000000000000
          523.875000000000000000
          5.291666666666667000
          169.333333333333300000)
        XLColumn = 2
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = cdsDetalhes
        DataField = 'QTDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptNumeric
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText8: TQRDBText
        Left = 264
        Top = 2
        Width = 66
        Height = 15
        Size.Values = (
          39.687500000000000000
          698.500000000000000000
          5.291666666666667000
          174.625000000000000000)
        XLColumn = 3
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = cdsDetalhes
        DataField = 'CUSTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptNumeric
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Left = 333
        Top = 2
        Width = 64
        Height = 15
        Size.Values = (
          39.687500000000000000
          881.062500000000000000
          5.291666666666667000
          169.333333333333300000)
        XLColumn = 4
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = cdsDetalhes
        DataField = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptNumeric
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText10: TQRDBText
        Left = 400
        Top = 2
        Width = 32
        Height = 15
        Size.Values = (
          39.687500000000000000
          1058.333333333333000000
          5.291666666666667000
          84.666666666666680000)
        XLColumn = 5
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = cdsDetalhes
        DataField = 'PORCENTAGEM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText11: TQRDBText
        Left = 435
        Top = 2
        Width = 133
        Height = 15
        Size.Values = (
          39.687500000000000000
          1150.937500000000000000
          5.291666666666667000
          351.895833333333300000)
        XLColumn = 6
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = cdsDetalhes
        DataField = 'CONTACONTABIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText12: TQRDBText
        Left = 571
        Top = 2
        Width = 142
        Height = 15
        Size.Values = (
          39.687500000000000000
          1510.770833333333000000
          5.291666666666667000
          375.708333333333300000)
        XLColumn = 7
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = cdsDetalhes
        DataField = 'CENTROCUSTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
    end
  end
  object cdsMaster: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFixedChar
        Name = 'KSYS$DOMAIN'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DATAINI'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DATAFIM'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'TODOS'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'KCAD_ENTIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'TODASCONTAS'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'KFIN_PLANOCONTA'
        ParamType = ptInput
      end>
    ProviderName = 'dspMaster'
    Left = 208
    Top = 8
    object cdsMasterKVND_PEDIDO: TStringField
      FieldName = 'KVND_PEDIDO'
      Required = True
      FixedChar = True
    end
    object cdsMasterNOMEENTIDADE: TStringField
      FieldName = 'NOMEENTIDADE'
      Required = True
      Size = 128
    end
    object cdsMasterNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Size = 32
    end
    object cdsMasterSERIE: TStringField
      FieldName = 'SERIE'
      Size = 32
    end
    object cdsMasterDATA_EMISSAO: TSQLTimeStampField
      FieldName = 'DATA_EMISSAO'
      Required = True
    end
    object cdsMasterTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
      Required = True
      DisplayFormat = '#,0.00'
    end
    object cdsMasterOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsMastersqlDetalhes: TDataSetField
      FieldName = 'sqlDetalhes'
    end
  end
  object dspMaster: TDataSetProvider
    DataSet = sqlMaster
    Options = [poIncFieldProps, poReadOnly, poDisableInserts, poDisableEdits, poDisableDeletes]
    UpdateMode = upWhereKeyOnly
    Left = 166
    Top = 51
  end
  object sqlMaster: TTcSQLDataSet
    SchemaName = 'sysdba'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftFixedChar
        Name = 'KSYS$DOMAIN'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DATAINI'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DATAFIM'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'TODOS'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'KCAD_ENTIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'TODASCONTAS'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'KFIN_PLANOCONTA'
        ParamType = ptInput
      end>
    SQLConnection = DBFinanceiro.SQLDB
    SQL = (
      'SELECT DISTINCT'
      '    P.KVND_PEDIDO,'
      '    P.NOMEENTIDADE,'
      '    P.NOTA_FISCAL,'
      '    P.SERIE,'
      '    P.DATA_EMISSAO,'
      '    P.TOTAL_NOTA,'
      '    P.OBS'
      'FROM VND_PEDIDOS P'
      'LEFT JOIN VND_PEDIDO_ITENS I ON I.KVND_PEDIDO = P.KVND_PEDIDO'
      'WHERE ( P.KSYS$DOMAIN = :KSYS$DOMAIN )'
      '  AND ( P.DATA_EMISSAO BETWEEN :DATAINI AND :DATAFIM )'
      '  AND ( :TODOS = '#39'T'#39' OR ( P.KCAD_ENTIDADE = :KCAD_ENTIDADE ) )'
      
        '  AND ( ( :TODASCONTAS = '#39'T'#39' ) OR ( I.KFIN_PLANOCONTA = :KFIN_PL' +
        'ANOCONTA ) )')
    Left = 206
    Top = 93
    object sqlMasterKVND_PEDIDO: TStringField
      FieldName = 'KVND_PEDIDO'
      Required = True
      FixedChar = True
    end
    object sqlMasterNOMEENTIDADE: TStringField
      FieldName = 'NOMEENTIDADE'
      Required = True
      Size = 128
    end
    object sqlMasterNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Size = 32
    end
    object sqlMasterSERIE: TStringField
      FieldName = 'SERIE'
      Size = 32
    end
    object sqlMasterDATA_EMISSAO: TSQLTimeStampField
      FieldName = 'DATA_EMISSAO'
      Required = True
    end
    object sqlMasterTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
      Required = True
    end
    object sqlMasterOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object sqlDetalhes: TTcSQLDataSet
    SchemaName = 'sysdba'
    DataSource = dtsSQLMaster
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFixedChar
        Name = 'KVND_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'TODOSCENTROS'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'KFIN_CENTROCUSTO'
        ParamType = ptInput
      end>
    SQLConnection = DBFinanceiro.SQLDB
    SQL = (
      'SELECT '
      '  I.KVND_PEDIDO,'
      '  I.CODIGO,'
      '  I.NOME,'
      '  I.CUSTO,'
      '  (( I.QTDE * COALESCE( A.PORCENTAGEM, 100) ) / 100 ) QTDE,'
      '  A.PORCENTAGEM,'
      '  (( I.TOTAL * COALESCE( A.PORCENTAGEM, 100 ) ) / 100 ) TOTAL,'
      '  P.NOME CONTACONTABIL,'
      '  C.NOME CENTROCUSTO'
      'FROM VND_PEDIDO_ITENS I'
      
        'LEFT JOIN FIN_PLANOCONTAS P ON P.KFIN_PLANOCONTA = I.KFIN_PLANOC' +
        'ONTA'
      
        'LEFT JOIN FIN_APROPRIACAO A ON A.TABLENAME = '#39'VND_PEDIDO_ITENS'#39' ' +
        'AND A.TABLEKEY= I.KVND_PEDIDO_ITEM'
      
        'LEFT JOIN FIN_CENTROSCUSTO C ON C.KFIN_CENTROCUSTO = A.KFIN_CENT' +
        'ROCUSTO'
      'WHERE ( I.KVND_PEDIDO = :KVND_PEDIDO )'
      
        '  AND ( ( :TODOSCENTROS = '#39'T'#39' ) OR ( C.KFIN_CENTROCUSTO = :KFIN_' +
        'CENTROCUSTO ) )')
    Left = 310
    Top = 93
    object sqlDetalhesKVND_PEDIDO: TStringField
      FieldName = 'KVND_PEDIDO'
      Required = True
      FixedChar = True
    end
    object sqlDetalhesCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 32
    end
    object sqlDetalhesNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 128
    end
    object sqlDetalhesCUSTO: TFloatField
      FieldName = 'CUSTO'
      Required = True
    end
    object sqlDetalhesQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object sqlDetalhesPORCENTAGEM: TFloatField
      FieldName = 'PORCENTAGEM'
    end
    object sqlDetalhesTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object sqlDetalhesCONTACONTABIL: TStringField
      FieldName = 'CONTACONTABIL'
      Size = 64
    end
    object sqlDetalhesCENTROCUSTO: TStringField
      FieldName = 'CENTROCUSTO'
      Size = 64
    end
  end
  object dtsSQLMaster: TDataSource
    DataSet = sqlMaster
    Left = 262
    Top = 50
  end
  object cdsDetalhes: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMastersqlDetalhes
    Params = <>
    Left = 312
    Top = 8
    object cdsDetalhesKVND_PEDIDO: TStringField
      FieldName = 'KVND_PEDIDO'
      Required = True
      FixedChar = True
    end
    object cdsDetalhesCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 32
    end
    object cdsDetalhesNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 128
    end
    object cdsDetalhesCUSTO: TFloatField
      FieldName = 'CUSTO'
      Required = True
      DisplayFormat = '#,0.00'
    end
    object cdsDetalhesQTDE: TFloatField
      FieldName = 'QTDE'
      DisplayFormat = '0.##'
    end
    object cdsDetalhesPORCENTAGEM: TFloatField
      FieldName = 'PORCENTAGEM'
      DisplayFormat = '0.##'
    end
    object cdsDetalhesTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '#,0.00'
    end
    object cdsDetalhesCONTACONTABIL: TStringField
      FieldName = 'CONTACONTABIL'
      Size = 64
    end
    object cdsDetalhesCENTROCUSTO: TStringField
      FieldName = 'CENTROCUSTO'
      Size = 64
    end
  end
end
