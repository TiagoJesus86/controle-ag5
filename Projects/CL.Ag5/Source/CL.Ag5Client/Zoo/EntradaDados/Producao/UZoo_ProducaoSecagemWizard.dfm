inherited Zoo_ProducaoSecagemWizard: TZoo_ProducaoSecagemWizard
  Left = 402
  Top = 224
  Caption = 'Secagem'
  ClientHeight = 412
  ClientWidth = 924
  ActionList.Left = 560
  ActionList.Top = 36
  ExplicitWidth = 930
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited _pnlForm: TJvPanel
    Width = 924
    Height = 412
    Margins.Left = 3
    Margins.Top = 3
    Margins.Right = 3
    Margins.Bottom = 3
    ExplicitWidth = 924
    ExplicitHeight = 412
    inherited _pnlFooter: TJvPanel
      Top = 381
      Width = 920
      Margins.Left = 3
      Margins.Top = 3
      Margins.Right = 3
      Margins.Bottom = 3
      ExplicitTop = 381
      ExplicitWidth = 920
      inherited _imageBottom: TImage
        Width = 920
        ExplicitWidth = 738
      end
      inherited _btbPrior: TTcGDIButton
        Left = 729
        Margins.Left = 3
        Margins.Top = 3
        Margins.Right = 3
        Margins.Bottom = 3
        ExplicitLeft = 729
      end
      inherited _btbCancel: TTcGDIButton
        Margins.Left = 3
        Margins.Top = 3
        Margins.Right = 3
        Margins.Bottom = 3
      end
      inherited _btbNext: TTcGDIButton
        Left = 820
        Margins.Left = 3
        Margins.Top = 3
        Margins.Right = 3
        Margins.Bottom = 3
        ExplicitLeft = 820
      end
      inherited _btbExecute: TTcGDIButton
        Left = 835
        Margins.Left = 3
        Margins.Top = 3
        Margins.Right = 3
        Margins.Bottom = 3
        ExplicitLeft = 835
      end
    end
    inherited _pnlDetail: TJvPanel
      Width = 920
      Height = 379
      Margins.Left = 3
      Margins.Top = 3
      Margins.Right = 3
      Margins.Bottom = 3
      ExplicitWidth = 920
      ExplicitHeight = 379
      inherited PageControl: TJvPageControl
        Width = 920
        Height = 379
        Margins.Left = 3
        Margins.Top = 3
        Margins.Right = 3
        Margins.Bottom = 3
        ActivePage = tbsSecagem
        ExplicitWidth = 920
        ExplicitHeight = 379
        object tbsData: TTabSheet
          Caption = 'tbsData'
          ImageIndex = 1
          object rbPrevisaoParto: TRadioButton
            Left = 111
            Top = 72
            Width = 202
            Height = 17
            Caption = 'Animais para secar at'#233
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object dePrevisaoSecagem: TTcDateEdit
            Left = 280
            Top = 70
            Width = 101
            Height = 21
            Checked = False
            CheckOnExit = False
            ButtonWidth = 19
            TabOrder = 1
          end
        end
        object tbsSecagem: TTabSheet
          Caption = 'tbsSecagem'
          object Label1: TLabel
            Left = 392
            Top = 216
            Width = 30
            Height = 13
            Caption = 'Causa'
          end
          object JvDBUltimGrid1: TJvDBUltimGrid
            Left = 0
            Top = 43
            Width = 920
            Height = 313
            Align = alClient
            BorderStyle = bsNone
            DataSource = dtsSecagem
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnKeyPress = JvDBUltimGrid1KeyPress
            AutoAppend = False
            OnShowEditor = JvDBUltimGrid1ShowEditor
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            CanDelete = False
            EditControls = <
              item
                ControlName = 'DBMemo1'
                FieldName = 'OBS_SECAGEM'
                FitCell = fcBiggest
                LeaveOnEnterKey = True
                LeaveOnUpDownKey = True
              end
              item
                ControlName = 'JvDBDateEdit1'
                FieldName = 'DATA_SECAGEM'
                FitCell = fcCellSize
                LeaveOnEnterKey = True
                LeaveOnUpDownKey = True
              end
              item
                ControlName = 'JvDBComboBox1'
                FieldName = 'DESCR_CAUSA'
                FitCell = fcCellSize
                LeaveOnEnterKey = True
              end
              item
                ControlName = 'edProtocolosGrid'
                FieldName = 'DESCR_PROTOCOLO'
                FitCell = fcCellSize
                LeaveOnEnterKey = True
                LeaveOnUpDownKey = True
              end>
            RowsHeight = 17
            TitleRowHeight = 17
            OnCheckIfBooleanField = JvDBUltimGrid1CheckIfBooleanField
            Columns = <
              item
                Expanded = False
                FieldName = 'BRINCO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME'
                ReadOnly = True
                Width = 184
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_SECAGEM'
                Width = 119
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCR_CAUSA'
                Width = 148
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OBS_SECAGEM'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'APLICADO_PROTOCOLO_SECAGEM'
                Width = -1
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'DESCR_PROTOCOLO'
                Title.Caption = 'Protocolos'
                Width = 216
                Visible = True
              end>
          end
          object JvDBDateEdit1: TTcDBDateEdit
            Left = 333
            Top = 116
            Width = 113
            Height = 21
            Checked = False
            DataField = 'DATA_SECAGEM'
            DataSource = dtsSecagem
            CheckOnExit = False
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ButtonWidth = 20
            ParentFont = False
            TabOrder = 2
            Visible = False
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 0
            Width = 920
            Height = 43
            Align = alTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label5: TLabel
              Left = 4
              Top = 13
              Width = 36
              Height = 13
              Caption = '&Brinco'
            end
            object lblData: TLabel
              Left = 167
              Top = 13
              Width = 27
              Height = 13
              Caption = 'Data'
              Visible = False
            end
            object lblCausa: TLabel
              Left = 328
              Top = 13
              Width = 36
              Height = 13
              Caption = 'Causa'
              Visible = False
            end
            object btbRemoverSecagem: TTcGDIButton
              Left = 657
              Top = 9
              Width = 136
              Height = 29
              Caption = 'Remover secagem selecionada'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              Picture.Data = {
                424D380500000000000036000000280000001500000014000000010018000000
                000002050000120B0000120B000000000000000000008300E58300E58300E5B3
                B0AFBFBDBC6967A83636B1A3A0A5A4A09F9A96968F8B8B837E7F7D797A949192
                BBB8B8B4B2B1BAB8B8DDDBDB8300E58300E58300E5008300E58300E58300E5C6
                C3C37171BF6060D65757D4A3A2B7C6C3C1BBB7B6ADA9A99E9A9A8D898A7B7678
                716C6DD4D3D2E4E2E1ADAAA9C4C2C18300E58300E5008300E58300E58300E568
                67B76D6DD97D7DDD5555D38887ADA5A2B79D9BB09592A88B889E98949A908B8C
                7D787A989495F1F1F0E5E4E3C1BEBDC2C0C08300E5008300E5D9D8DC7676D064
                64D76F6FDA6F6FDA5F5FD65151D25151D25151D25151D24C4CD16D6BA8A29E9E
                918D8EA09D9EFAF9F9F2F2F1E7E6E5AEABAAD4D3D200D9D8DC5555CD5A5AD460
                60D66060D66060D66060D66060D66060D66060D66060D65A5AD47574B2B2AEAD
                A4A09FBDBABBE0DFE0D9D7D8E1E0E0E8E7E6AAA8A7007575CD5252D25454D354
                54D35454D35454D35454D35454D35454D35454D35454D35454D37C7BBCC0BCBB
                B3AFAFA5A1A1959192837E80706B6DA09E9EB8B5B500D9D8DC5E5ED14949D047
                47D04747D04747D04747D04747D04747D04747D04747D04D4DD18281C4CBC9C7
                C1BDBCB5B1B0A7A3A2979394868182726D6FADAAAA008300E5D9D8DC6262D341
                41CE3939CC3939CC4141CE4949D04949D04949D04949D05252D28786CCD5D3D2
                CCCAC8C2BFBDB6B2B1A8A4A49995958783847A7577008300E58300E5D9D8DC69
                68CF3D3DCD3232C25555D39F9EDED0D0E8D0CFE8CECDE6CCCBE3CDCCDDDDDCDA
                D6D4D2CDCBC9C3C0BFB8B4B3AAA6A69B9797817C7D008300E58300E58300E5B5
                B2B77574D63737CB5757D4B9B8CEEEEDECEEEDECEDECECEBEAEAE8E7E6E4E2E1
                DEDCDBD7D5D3CFCCCAC4C1C0B9B5B4ACA8A78F8B8B008300E58300E58300E5BA
                B8B7CCCBCE9493DA6F6FDAD0CFD9ECEBEAEEEDECEEEDECEEEDECECEBEAE9E8E7
                E5E4E3DFDDDCD8D6D4CFCDCBC6C3C1BAB7B69B9797008300E58300E58300E5B5
                B2B2CFCCCBD7D5D4DEDDDBE4E3E1E8E7E6ECEBEAEDECECEEEDECEEEDECECEBEA
                E9E8E7E5E4E3DFDEDCD9D7D5D1CECCC7C4C2A6A2A1008300E58300E58300E5AF
                ACABC3C0BFCECBCAD6D4D3DDDCDAE3E2E1E8E7E6EBEAE9EDECECEEEDECEEEDEC
                ECEBEBEAE9E7E5E4E3E0DFDDD9D8D6D1CFCDAFACAB008300E58300E58300E5A8
                A4A4B7B3B2C2BFBECCCAC8D5D3D2DDDBDAE3E1E0E8E6E5EBEAE9EDECEBEEEDEC
                EEEDECEDECEBEAE9E8E5E4E3E1DFDEDAD9D7B7B4B3008300E58300E58300E59F
                9C9CA7A3A3B5B1B0C1BEBCCCC9C7D5D3D1DCDAD9E2E1DFE7E6E5EBEAE9EDECEB
                EEEDECEEEDECEDECEBEAE9E8E5E4E3E1E0DEBDBABA008300E58300E58300E596
                9292969292A6A2A1B4B0AFC0BCBBCAC8C6D4D2D0DBDAD8E2E0DFE5E4E3EAE9E8
                EDECEBEEEDECEEEDECEDECEBEBEAE9E7E6E5C2C0BF008300E58300E58300E58B
                8788827D7F949090A4A0A0B2AEAEBEBBBAC9C7C5D3D1CFDAD9D7E1DFDEE5E4E3
                EAE9E8EDECEBEEEDECEEEDECEDECEBEBEAE9C6C4C3008300E58300E58300E580
                7C7C6C6769807B7D928E8EA29E9EB1ADACBDBAB9C8C6C4D2D0CEDAD8D6E0DFDD
                E5E4E3EAE9E7ECEBEBEEEDECEEEDECEDECECC9C7C6008300E58300E58300E573
                6F705550516A65667D797A908C8DA19D9CAFABABBCB8B7C7C4C2D1CFCDD9D7D5
                DFDEDCE5E4E3E9E8E7ECEBEAEEEDECEEEDECCAC8C8008300E58300E58300E56D
                6A6A464243585354686364777273858081918D8D9C9897A5A1A1AEAAA9B5B2B1
                BBB8B7C0BDBDC4C2C1C7C5C4C9C7C7CAC8C8B0ADAD000000}
              TabOrder = 4
              OnClick = btbRemoverSecagemClick
              Appearance.ColorChecked = 16111818
              Appearance.ColorCheckedTo = 16367008
              Appearance.ColorDisabled = 15921906
              Appearance.ColorDisabledTo = 15921906
              Appearance.ColorDown = 16111818
              Appearance.ColorDownTo = 16367008
              Appearance.ColorHot = 16117985
              Appearance.ColorHotTo = 16372402
              Appearance.ColorMirrorHot = 16107693
              Appearance.ColorMirrorHotTo = 16775412
              Appearance.ColorMirrorDown = 16102556
              Appearance.ColorMirrorDownTo = 16768988
              Appearance.ColorMirrorChecked = 16102556
              Appearance.ColorMirrorCheckedTo = 16768988
              Appearance.ColorMirrorDisabled = 11974326
              Appearance.ColorMirrorDisabledTo = 15921906
            end
            object btnSelecionarAnimais: TTcGDIButton
              Left = 522
              Top = 9
              Width = 129
              Height = 29
              Caption = 'Selecionar Animais'
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 3
              OnClick = btnSelecionarAnimaisClick
              Appearance.ColorChecked = 16111818
              Appearance.ColorCheckedTo = 16367008
              Appearance.ColorDisabled = 15921906
              Appearance.ColorDisabledTo = 15921906
              Appearance.ColorDown = 16111818
              Appearance.ColorDownTo = 16367008
              Appearance.ColorHot = 16117985
              Appearance.ColorHotTo = 16372402
              Appearance.ColorMirrorHot = 16107693
              Appearance.ColorMirrorHotTo = 16775412
              Appearance.ColorMirrorDown = 16102556
              Appearance.ColorMirrorDownTo = 16768988
              Appearance.ColorMirrorChecked = 16102556
              Appearance.ColorMirrorCheckedTo = 16768988
              Appearance.ColorMirrorDisabled = 11974326
              Appearance.ColorMirrorDisabledTo = 15921906
            end
            object CheckBox1: TCheckBox
              Left = 803
              Top = 15
              Width = 185
              Height = 17
              Caption = 'Aplicar protocolo a todos'
              Checked = True
              State = cbChecked
              TabOrder = 5
              OnClick = CheckBox1Click
            end
            object edtBrinco: TJvComboEdit
              Left = 48
              Top = 13
              Width = 104
              Height = 21
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              ButtonWidth = 15
              ImageKind = ikEllipsis
              TabOrder = 0
              Text = ''
              OnButtonClick = edtBrincoButtonClick
              OnChange = edtBrincoChange
              OnEnter = edtBrincoEnter
              OnKeyDown = edtBrincoKeyDown
              OnKeyPress = edtBrincoKeyPress
            end
            object dbeDataSecagem: TTcDBDateEdit
              Left = 204
              Top = 13
              Width = 113
              Height = 21
              Checked = False
              DataField = 'DATA_SECAGEM'
              DataSource = dtsSecagem
              CheckOnExit = False
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ButtonWidth = 20
              ParentFont = False
              TabOrder = 1
              OnKeyPress = dbeDataSecagemKeyPress
            end
            object cmbCausa: TJvDBComboBox
              Left = 373
              Top = 13
              Width = 136
              Height = 22
              Style = csOwnerDrawVariable
              DataField = 'CAUSA_SECAGEM'
              DataSource = dtsSecagem
              DropDownWidth = 250
              TabOrder = 2
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
              ListSettings.KeyField = 'VALOR'
              ListSettings.DisplayField = 'DESCRICAO'
              ListSettings.DataSource = dtsMotivoSecagem
              OnEnter = JvDBComboBoxEnter
              OnKeyDown = JvDBComboBoxKeyDown
              OnKeyPress = cmbCausaKeyPress
            end
          end
          object DBMemo1: TDBMemo
            Left = 452
            Top = 126
            Width = 185
            Height = 47
            DataField = 'OBS_SECAGEM'
            DataSource = dtsSecagem
            TabOrder = 3
            Visible = False
          end
          object JvDBComboBox1: TJvDBComboBox
            Left = 392
            Top = 251
            Width = 145
            Height = 22
            Style = csOwnerDrawVariable
            DataField = 'CAUSA_SECAGEM'
            DataSource = dtsSecagem
            DropDownWidth = 250
            TabOrder = 4
            Visible = False
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
            ListSettings.KeyField = 'VALOR'
            ListSettings.DisplayField = 'DESCRICAO'
            ListSettings.DataSource = dtsMotivoSecagem
            OnEnter = JvDBComboBoxEnter
            OnKeyDown = JvDBComboBoxKeyDown
          end
          object PanelSelectProtocolos: TPanel
            Left = 148
            Top = 57
            Width = 281
            Height = 254
            Color = clWhite
            ParentBackground = False
            TabOrder = 5
            Visible = False
            object PanelSelectProtocolosSecagem: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 273
              Height = 246
              Align = alClient
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 0
              object dbgProtocolosSecagem: TJvDBUltimGrid
                AlignWithMargins = True
                Left = 3
                Top = 38
                Width = 267
                Height = 205
                Align = alClient
                DataSource = dtsProtocolosSecagem
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnCellClick = dbgProtocolosSecagemCellClick
                OnKeyPress = dbgProtocolosSecagemKeyPress
                AutoAppend = False
                SelectColumnsDialogStrings.Caption = 'Select columns'
                SelectColumnsDialogStrings.OK = '&OK'
                SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                CanDelete = False
                EditControls = <>
                RowsHeight = 17
                TitleRowHeight = 17
                OnCheckIfBooleanField = dbgProtocolosSecagemCheckIfBooleanField
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'SELECTED'
                    Width = 40
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOME'
                    ReadOnly = True
                    Title.Caption = 'Protocolo'
                    Visible = False
                  end
                  item
                    Expanded = False
                    FieldName = 'CODIGO'
                    Title.Caption = 'Protocolo'
                    Width = 150
                    Visible = True
                  end>
              end
              object Panel1: TPanel
                Left = 0
                Top = 0
                Width = 273
                Height = 35
                Align = alTop
                BevelOuter = bvNone
                Color = clWhite
                ParentBackground = False
                TabOrder = 1
                DesignSize = (
                  273
                  35)
                object lbProtocolosParto: TLabel
                  Left = 59
                  Top = 1
                  Width = 144
                  Height = 13
                  Anchors = [akLeft, akTop, akRight]
                  AutoSize = False
                  Caption = 'Protocolos aplicados'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object chkSelectAllProtocolosSecagem: TCheckBox
                  Left = 15
                  Top = 20
                  Width = 105
                  Height = 17
                  Caption = 'Selecionar Todos'
                  State = cbGrayed
                  TabOrder = 0
                  OnClick = chkSelectAllProtocolosSecagemClick
                end
              end
            end
          end
          object edProtocolosGrid: TJvDBComboEdit
            Left = 53
            Top = 168
            Width = 125
            Height = 21
            DataField = 'DESCR_PROTOCOLO'
            DataSource = dtsSecagem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageKind = ikDropDown
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
            Visible = False
            OnButtonClick = edProtocolosGridButtonClick
            OnKeyDown = edProtocolosGridKeyDown
          end
        end
      end
    end
  end
  inherited ActionList: TInternalActionList
    Left = 560
    Top = 36
    inherited _actNext: TAction
      OnUpdate = _actNextUpdate
    end
    inherited _actExecute: TAction
      OnUpdate = _actExecuteUpdate
    end
  end
  object dtsSecagem: TDataSource
    DataSet = Zoo_ProducaoSecagemDatamodule.cdsSecagens
    OnDataChange = dtsSecagemDataChange
    Left = 181
    Top = 125
  end
  object dtsMotivoSecagem: TDataSource
    DataSet = Zoo_ProducaoSecagemDatamodule.cdsMotivoSecagem
    Left = 417
    Top = 9
  end
  object dtsProtocolosSecagem: TDataSource
    DataSet = Zoo_ProducaoSecagemDatamodule.cdsProtocolosSecagem
    Left = 602
    Top = 225
  end
  object ControlPopuperProtocolos: TTcControlPopuper
    Control = PanelSelectProtocolos
    PopupStyle = cpsPopup
    OnClose = ControlPopuperProtocolosClose
    Left = 645
    Top = 133
  end
end
