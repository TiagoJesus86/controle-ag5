inherited frmFIN_PagamentosRecebimentos: TfrmFIN_PagamentosRecebimentos
  Left = 461
  Top = 175
  Caption = 'Pagamentos e Recebimentos'
  ClientHeight = 694
  ClientWidth = 930
  ActionList.Left = 178
  ActionList.Top = 4
  ExplicitWidth = 936
  ExplicitHeight = 723
  PixelsPerInch = 96
  TextHeight = 13
  inherited _pnlForm: TJvPanel
    Width = 930
    Height = 694
    ExplicitWidth = 930
    ExplicitHeight = 694
    inherited _pnlFooter: TJvPanel
      Top = 663
      Width = 926
      ExplicitTop = 663
      ExplicitWidth = 926
      inherited _imageBottom: TImage
        Width = 926
        ExplicitWidth = 614
      end
      inherited _btbPrior: TTcGDIButton
        Left = 735
        ExplicitLeft = 735
      end
      inherited _btbNext: TTcGDIButton
        Left = 826
        ExplicitLeft = 826
      end
      inherited _btbExecute: TTcGDIButton
        Left = 837
        ExplicitLeft = 837
      end
    end
    inherited _pnlDetail: TJvPanel
      Width = 926
      Height = 661
      ExplicitWidth = 926
      ExplicitHeight = 661
      inherited PageControl: TJvPageControl
        Width = 926
        Height = 661
        ActivePage = TabSheet1
        ExplicitWidth = 926
        ExplicitHeight = 661
        object TabSheet1: TTabSheet
          Caption = 'TabSheet1'
          DesignSize = (
            926
            638)
          object gbxPeriodo: TGroupBox
            Left = 20
            Top = 16
            Width = 430
            Height = 65
            Caption = ' Per'#237'odo '
            TabOrder = 0
            object Label1: TLabel
              Left = 10
              Top = 27
              Width = 51
              Height = 13
              Caption = 'Data inicial'
            end
            object Label2: TLabel
              Left = 232
              Top = 27
              Width = 46
              Height = 13
              Caption = 'Data final'
            end
            object deDataInicial: TTcDateEdit
              Left = 76
              Top = 24
              Width = 121
              Height = 21
              Checked = False
              CheckOnExit = False
              TabOrder = 0
            end
            object deDataFinal: TTcDateEdit
              Left = 295
              Top = 24
              Width = 121
              Height = 21
              Checked = False
              CheckOnExit = False
              TabOrder = 1
            end
          end
          object rgCentroCusto: TRadioGroup
            Left = 20
            Top = 94
            Width = 430
            Height = 118
            ItemIndex = 0
            Items.Strings = (
              'Todos'
              'Sem centro de custo'
              'Centro de custo')
            TabOrder = 2
            OnClick = rgCentroCustoClick
          end
          object edSearchCentroCusto: TJvComboEdit
            Left = 156
            Top = 182
            Width = 260
            Height = 21
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            ButtonWidth = 15
            ClipboardCommands = []
            ImageKind = ikEllipsis
            TabOrder = 3
            Text = ''
            OnButtonClick = edSearchCentroCustoButtonClick
            OnChange = edSearchCentroCustoChange
            OnEnter = edSearchCentroCustoEnter
            OnExit = edSearchCentroCustoExit
          end
          object rgDebitos: TRadioGroup
            Left = 468
            Top = 94
            Width = 430
            Height = 118
            ItemIndex = 0
            Items.Strings = (
              'Todos fornecedores'
              'Fornecedor')
            TabOrder = 14
            StyleElements = []
            OnClick = rgDebitosClick
          end
          object edSearchFornecedor: TJvComboEdit
            Left = 604
            Top = 175
            Width = 260
            Height = 21
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            ButtonWidth = 15
            ClipboardCommands = []
            ImageKind = ikEllipsis
            TabOrder = 15
            Text = ''
            OnButtonClick = edSearchFornecedorButtonClick
            OnChange = edSearchFornecedorChange
            OnEnter = edSearchFornecedorEnter
            OnExit = edSearchFornecedorExit
          end
          object chkRatearCC: TCheckBox
            Left = 28
            Top = 89
            Width = 165
            Height = 18
            Caption = 'Ratear por Centro de custo'
            Checked = True
            State = cbChecked
            TabOrder = 1
            OnClick = chkRatearCCClick
          end
          object rgContaContabil: TRadioGroup
            Left = 22
            Top = 232
            Width = 430
            Height = 118
            ItemIndex = 0
            Items.Strings = (
              'Todos'
              'Conta')
            TabOrder = 5
            OnClick = rgContaContabilClick
          end
          object edSearchContaContabil: TJvComboEdit
            Left = 156
            Top = 313
            Width = 260
            Height = 21
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            ButtonWidth = 15
            ClipboardCommands = []
            ImageKind = ikEllipsis
            TabOrder = 6
            Text = ''
            OnButtonClick = edSearchContaContabilButtonClick
            OnChange = edSearchContaContabilChange
            OnEnter = edSearchContaContabilEnter
            OnExit = edSearchContaContabilExit
          end
          object PnlChkCentroCusto: TPanel
            Left = 423
            Top = 184
            Width = 16
            Height = 16
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            AutoSize = True
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            ShowCaption = False
            TabOrder = 7
            StyleElements = [seFont, seClient]
            object ImgChkCentroCusto: TImage
              Left = 0
              Top = 0
              Width = 16
              Height = 16
              Cursor = crHelp
              ParentShowHint = False
              ShowHint = True
              Visible = False
            end
          end
          object PnlChkContaContabil: TPanel
            Left = 423
            Top = 315
            Width = 16
            Height = 16
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            AutoSize = True
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            ParentShowHint = False
            ShowCaption = False
            ShowHint = False
            TabOrder = 8
            StyleElements = [seFont, seClient]
            object ImgChkContaContabil: TImage
              Left = 0
              Top = 0
              Width = 16
              Height = 16
              Cursor = crHelp
              ParentShowHint = False
              ShowHint = True
              Visible = False
            end
          end
          object PnlChkEntidade: TPanel
            Left = 871
            Top = 177
            Width = 16
            Height = 16
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            AutoSize = True
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            ParentShowHint = False
            ShowCaption = False
            ShowHint = False
            TabOrder = 9
            StyleElements = [seFont, seClient]
            object ImgChkFornecedor: TImage
              Left = 0
              Top = 0
              Width = 16
              Height = 16
              Cursor = crHelp
              ParentShowHint = False
              ShowHint = True
              Visible = False
            end
          end
          object rgCreditos: TRadioGroup
            Left = 468
            Top = 232
            Width = 430
            Height = 118
            ItemIndex = 0
            Items.Strings = (
              'Todos clientes'
              'Cliente')
            TabOrder = 19
            StyleElements = []
            OnClick = rgCreditosClick
          end
          object edSearchCliente: TJvComboEdit
            Left = 604
            Top = 313
            Width = 260
            Height = 21
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            ButtonWidth = 15
            ClipboardCommands = []
            ImageKind = ikEllipsis
            TabOrder = 20
            Text = ''
            OnButtonClick = edSearchClienteButtonClick
            OnChange = edSearchClienteChange
            OnEnter = edSearchClienteEnter
            OnExit = edSearchClienteExit
          end
          object Panel1: TPanel
            Left = 871
            Top = 315
            Width = 16
            Height = 16
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            AutoSize = True
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            ParentShowHint = False
            ShowCaption = False
            ShowHint = False
            TabOrder = 10
            StyleElements = [seFont, seClient]
            object ImgChkCliente: TImage
              Left = 0
              Top = 0
              Width = 16
              Height = 16
              Cursor = crHelp
              ParentShowHint = False
              ShowHint = True
              Visible = False
            end
          end
          object chkDebitos: TCheckBox
            Left = 476
            Top = 88
            Width = 73
            Height = 18
            Caption = 'D'#233'bitos'
            Checked = True
            State = cbChecked
            TabOrder = 11
            OnClick = chkDebitosClick
          end
          object chkCreditos: TCheckBox
            Left = 476
            Top = 226
            Width = 73
            Height = 18
            Caption = 'Cr'#233'ditos'
            Checked = True
            State = cbChecked
            TabOrder = 16
            OnClick = chkCreditosClick
          end
          object GroupBox1: TGroupBox
            Left = 20
            Top = 368
            Width = 523
            Height = 225
            Anchors = [akLeft, akTop, akBottom]
            Caption = 'Selecionar contas'
            TabOrder = 21
            object dbgSelectContas: TJvDBUltimGrid
              Left = 2
              Top = 47
              Width = 519
              Height = 176
              Align = alClient
              BorderStyle = bsNone
              DataSource = dtsContas
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentColor = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnCellClick = dbgSelectContasCellClick
              OnKeyPress = dbgSelectContasKeyPress
              AutoAppend = False
              OnShowEditor = dbgSelectContasShowEditor
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              CanDelete = False
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              OnCheckIfBooleanField = dbgSelectContasCheckIfBooleanField
              Columns = <
                item
                  Expanded = False
                  FieldName = 'SELECT'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOME'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'BANCO'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'AGENCIA'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CONTA_CORRENTE'
                  Width = 100
                  Visible = True
                end>
            end
            object Panel4: TPanel
              Left = 2
              Top = 15
              Width = 519
              Height = 32
              Align = alTop
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 0
              object cbSelectAll: TCheckBox
                Left = 21
                Top = 4
                Width = 161
                Height = 17
                Caption = 'Todas as contas'
                TabOrder = 0
                OnClick = cbSelectAllClick
              end
            end
          end
          object chkProvisaoDebitos: TCheckBox
            Left = 660
            Top = 102
            Width = 97
            Height = 17
            Caption = 'Provis'#245'es'
            TabOrder = 12
          end
          object chkProgramacaoDebitos: TCheckBox
            Left = 783
            Top = 102
            Width = 97
            Height = 17
            Caption = 'Programados'
            TabOrder = 13
          end
          object chkProvisaoCreditos: TCheckBox
            Left = 659
            Top = 240
            Width = 97
            Height = 17
            Caption = 'Provis'#245'es'
            TabOrder = 17
          end
          object chkProgramacaoCreditos: TCheckBox
            Left = 785
            Top = 240
            Width = 97
            Height = 17
            Caption = 'Programados'
            TabOrder = 18
          end
          object chkRatearContaContabil: TCheckBox
            Left = 28
            Top = 224
            Width = 165
            Height = 18
            Caption = 'Ratear por conta cont'#225'bil'
            Checked = True
            State = cbChecked
            TabOrder = 4
            OnClick = chkRatearContaContabilClick
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'TabSheet2'
          ImageIndex = 1
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dbgResultado: TJvDBUltimGrid
            Left = 0
            Top = 0
            Width = 926
            Height = 597
            Align = alClient
            DataSource = dtsResultado
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            AutoAppend = False
            OnShowEditor = dbgResultadoShowEditor
            AutoSizeColumns = True
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
          end
          object Panel2: TPanel
            Left = 0
            Top = 597
            Width = 926
            Height = 41
            Align = alBottom
            Caption = ' '
            TabOrder = 1
            DesignSize = (
              926
              41)
            object Label3: TLabel
              Left = 483
              Top = 12
              Width = 40
              Height = 13
              Anchors = [akTop, akRight]
              Caption = 'Cr'#233'ditos'
            end
            object DBText1: TDBText
              Left = 804
              Top = 12
              Width = 114
              Height = 17
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              DataField = 'TOTAL_DEBITO'
              DataSource = dtsResultado
            end
            object DBText2: TDBText
              Left = 584
              Top = 12
              Width = 114
              Height = 17
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              DataField = 'TOTAL_CREDITO'
              DataSource = dtsResultado
            end
            object Label4: TLabel
              Left = 739
              Top = 12
              Width = 36
              Height = 13
              Anchors = [akTop, akRight]
              Caption = 'D'#233'bitos'
            end
          end
        end
      end
    end
  end
  inherited ActionList: TInternalActionList
    Left = 178
    Top = 4
  end
  object dtsResultado: TDataSource
    AutoEdit = False
    DataSet = dtmFIN_PagamentosRecebimentos.cdsPagamentosRecebimentos
    Left = 402
    Top = 8
  end
  object ImageList1: TImageList
    Left = 436
    Top = 32
    Bitmap = {
      494C010103000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFCFCFFFEFEFDFFFCFDFBFFFBFCFCFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFDFCFFFFFFFBFFDFE6EFFFE3E7F3FFE2E7F3FFE5E7F5FFE2E6F2FFFBFE
      FDFFFFFFFBFFFAFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFDFFFFFF
      FBFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFBFEFAFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFEFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5A79D0FF0008B7FF0013B5FF0013B6FF0011B7FF000FB3FF0126
      BAFFF5FCF9FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAFF7FB7
      EAFF60ABE9FF63ADEAFF63ACE9FF63ADE9FF62ADEAFF63ACE9FF63ACE9FF5CAD
      E9FF5EABE4FFA7D5EBFFFFFFF9FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFEFEFEFFFCFE
      FDFFFFFFFFFFE4EFE9FF006244FFCEE4DBFFFFFFFFFFFCFEFDFFFFFEFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFFFFFFFBFDFFFFFF
      FFFF5E76CBFF0013BBFF0022BAFF0328C3FF092DBDFF072CC4FF0026BFFF001E
      B5FF0928BEFFF3F4FAFFFFFFFDFFFFFDFEFFFFFFFFFFFFFFFFFF248CE3FF007D
      F7FF007FF5FF007FF5FF0080F5FF0082FFFF0084FFFF0082FEFF0083F5FF007E
      F3FF0082F5FF0070EFFFA9D2E7FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFEFEFDFFFFFF
      FFFFE4ECEBFF036B41FF036F44FF016440FFD0E3DEFFFFFFFFFFFAFBFCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFF5D78
      CDFF001DBFFF3555CBFF8CA5DDFF002CBFFF0831C6FF0025BBFF4D71CEFF808F
      DEFF0022C1FF0834B9FFF0F2F8FFFBFEFEFFFFFFFFFFFFFFFFFF0079E4FF048C
      F3FF088BF5FF088BF4FF078EFFFF1867A7FF402211FF1174BEFF0B8DFCFF0A8B
      F5FF068CF5FF0088F6FF60ACE7FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFE9EF
      EFFF006E43FF127A53FF157B59FF177C55FF026946FFCCE7DEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFF8C97DAFF0026
      C3FF002AC5FFFFFFFBFFFFFFFEFFD5DFF1FF0020C0FF6480DBFFFFFFFFFFFFFF
      FEFF4B6ED1FF002FCCFF0E38BAFFFFFFFDFFFFFFFFFFFFFFFFFF58B2EAFF0190
      FAFF0F90F4FF0F90F5FF0E94F7FF147FCCFF274657FF1984DCFF0B94FBFF1190
      F5FF0D91F5FF0087F0FFD1E8F3FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFDFDFDFFD9EAE6FF0972
      49FF1F855FFF1F8660FF20855FFF218761FF20865EFF026E4AFFCFE5DDFFFFFF
      FFFFFBF9F8FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A85D7FF043E
      CEFF043BCDFF7898E0FFFFFFFDFFFFFFFFFFDDE8F3FFFFFFFEFFFFFFF6FFEBF0
      F7FF063FCEFF1045CEFF0028C6FFFFFFFFFFFFFFFFFFFFFFFFFFF6F7F5FF008F
      ECFF149AF7FF159AF6FF149AF5FF1599FBFF1A6692FF139EFFFF0F97F6FF1198
      F3FF0B97F8FF41A9E9FFFFFFFAFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFD6E7E4FF127C55FF2A90
      67FF298E68FF298F69FF228C64FF2A906AFF2D8D67FF2A9168FF187654FFC8E1
      DAFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C8AD7FF0B48
      D6FF1854CEFF003FD1FF7D9DE5FFFFFFFBFFFFFEFAFFFEFFFCFFD0E1F4FF0F47
      D2FF0E4ED7FF1356D0FF0034C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFF7CBF
      E7FF0C9FF9FF16A0F4FF21A1FEFF1884CAFF421701FF1498E7FF1BA4F8FF1DA1
      F5FF0798F1FFE4F0F5FFFFFEFBFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF7BB19FFF1F9366FF3399
      73FF399874FF1B9065FF9CC8B5FF1E8A62FF399D70FF339A6FFF31986FFF1F80
      5EFFD0E0DBFFFFFFFFFFFBFFFEFFFBFDFDFFFFFFFFFFFFFFFFFF6F8EDAFF0C54
      D8FF1C59E0FF054FD4FF5A8EDEFFFFFFF9FFFFFDFEFFFFFFFAFFCED9EEFF0049
      D8FF195BD9FF195ADFFF043DC5FFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFDFFFFFC
      FBFF1B9EF0FF1DAAF4FF24ADFFFF297EB3FF351F0DFF2B94D8FF24AAFBFF15AA
      F8FF68B8EBFFFFFFFBFFF9FEFEFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFEFEFEFF7DAF9AFF2BA1
      6DFF27986CFFBAD5CBFFFFFFFFFFD5E3DFFF23936BFF3EA77FFF44A57AFF35A9
      7AFF1E885CFFCEDFDCFFFFFFFFFFFEFBFEFFFFFFFFFFFFFFFFFF6F8FD9FF1461
      DFFF115FDFFF7099E9FFFFFFFCFFFCFFFCFFF1F5FBFFFFFFFEFFFFFFFCFFE0EC
      F2FF105CDEFF1A6ADCFF0343CAFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFFFFFF
      FFFF8FC9E6FF1DAFFBFF2BB6FFFF2B7BABFF321E0FFF2989C2FF2AB6FDFF0FA2
      EEFFFEF8F8FFFCFEFAFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFBFCFFFFFFFFFFFF8CBB
      ABFFBCD8D0FFFFFFFFFFFBFDFCFFFFFFFFFFD1E1D6FF2D9B74FF4FB187FF4DAD
      86FF4DB183FF28926AFFC3DDD0FFFFFFFFFFFFFFFFFFFFFFFFFF7595DCFF166C
      EDFF0F65D9FFFDFFFBFFFFFFFCFFE6F0FBFF0C62D9FF85B6EDFFFFFFFDFFFFFF
      FFFF5B97E4FF176EE8FF0851D2FFFFFFFEFFFFFFFFFFFFFFFFFFFEFEFEFFFEFE
      FEFFFFFFFBFF22A7E2FF2FC1FFFF327498FF342010FF3284B2FF23C5FFFF8EC5
      E6FFFFFFFFFFF8FEFBFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFEFEFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1E2DAFF31A272FF5BB9
      8DFF50B48FFF52BD8DFF3F9472FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFCFF3670
      D9FF1377EEFF5A9AEBFFB6D3F3FF2377E4FF1F75EBFF0C6DE8FF7AADEEFFA4CC
      F4FF1D72E3FF1465E6FFC7CDEFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
      FEFFFFFFFEFFACD5EAFF28C4FEFF358FABFF2A0A01FF389CC9FF25AFF1FFFFFF
      FDFFFFFFFAFFFCFDFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFDFFFFFFFFFFC3DFD4FF41A6
      81FF61C893FF40A47DFFF0F5F3FFFFFEFEFFFFFFFFFFFFFFFFFFF9FEF9FFFFFF
      FBFF4575D9FF1A80F1FF1576E9FF287EE7FF2B80EDFF2A80EAFF237CE8FF1177
      EEFF196DECFFCBD1E8FFFFFFFAFFF7FDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF
      FDFFFBFBFCFFFFFFFCFF3CB5E4FF3ACBFFFF49D7FFFF25C8FEFFA7D4E4FFFFFF
      FDFFFCFDFDFFFFFDFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFEFEFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFDFFFFFFFFFFFFFFCADB
      D5FF3FA67CFFF1F0F2FFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFFFFFFFDFFFFFFFF
      FFFFFFFFFBFF3E77DBFF208CF6FF228DF3FF248CF1FF258BF4FF258CF6FF1772
      E6FFC5CFE8FFFFFFFDFFFFFEFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF
      FEFFFEFEFFFFFFFFFFFFD1E2EDFF2AC5ECFF36D9FCFF49BCDFFFFFFEFCFFFEFF
      FFFFFFFEFEFFFFFFFEFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFEFFFFFDFFFFFFFF
      FFFFFEFFFFFFFEFEFEFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFF8FFFCFAF7FFA4B7DEFFA8BAE6FFA8BBE6FFA8B8E6FFA2B4E3FFD3DC
      F1FFFFFFF9FFFAFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFAFFD8E8EEFFA1D0E6FFFFFAFDFFFBFBF7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFEFFFCFEFEFFFEFF
      FCFFFDFEFEFFFEFDFDFFFEFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBFDFDFFFFFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFF
      FFFFFBFDFDFFFDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFCFDFFFFFEFFFFFFFFFAFFFFFEFDFFFDFCFCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object dtsContas: TDataSource
    DataSet = dtmFIN_PagamentosRecebimentos.cdsLstContas
    Left = 346
    Top = 4
  end
end
