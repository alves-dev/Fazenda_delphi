object Form_Pastos: TForm_Pastos
  Left = 0
  Top = 0
  Caption = 'Pastos'
  ClientHeight = 600
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SB_Novo: TSpeedButton
    Left = 680
    Top = 16
    Width = 87
    Height = 22
    Caption = 'Novo'
    OnClick = SB_NovoClick
  end
  object SB_Limpar: TSpeedButton
    Left = 680
    Top = 58
    Width = 87
    Height = 22
    Caption = 'Limpar'
    Enabled = False
    OnClick = SB_LimparClick
  end
  object SB_Cancelar: TSpeedButton
    Left = 680
    Top = 100
    Width = 87
    Height = 22
    Caption = 'Cancelar'
    Enabled = False
    OnClick = SB_CancelarClick
  end
  object SB_Salvar: TSpeedButton
    Left = 680
    Top = 148
    Width = 87
    Height = 22
    Caption = 'Salvar'
    Enabled = False
    OnClick = SB_SalvarClick
  end
  object SB_Excluir: TSpeedButton
    Left = 680
    Top = 232
    Width = 87
    Height = 22
    Caption = 'Excluir'
    OnClick = SB_ExcluirClick
  end
  object SB_Alterar: TSpeedButton
    Left = 680
    Top = 188
    Width = 87
    Height = 22
    Caption = 'Alterar'
    OnClick = SB_AlterarClick
  end
  object Label1: TLabel
    Left = 40
    Top = 16
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 40
    Top = 72
    Width = 50
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label3: TLabel
    Left = 40
    Top = 133
    Width = 70
    Height = 13
    Caption = 'Status Pastos:'
  end
  object Label4: TLabel
    Left = 256
    Top = 16
    Width = 27
    Height = 13
    Caption = #193'rea:'
  end
  object Label5: TLabel
    Left = 256
    Top = 72
    Width = 89
    Height = 13
    Caption = 'Data de Cadastro:'
  end
  object Label6: TLabel
    Left = 256
    Top = 136
    Width = 123
    Height = 13
    Caption = 'Data da Ultima Altera'#231#227'o:'
  end
  object DBGrid_Pastos: TDBGrid
    Left = 0
    Top = 304
    Width = 825
    Height = 297
    DataSource = DataModule1.DataSource_Pastos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid_PastosDblClick
    OnKeyDown = DBGrid_PastosKeyDown
    OnKeyPress = DBGrid_PastosKeyPress
    OnKeyUp = DBGrid_PastosKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_PASTO'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PASTO'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_STATUS'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AREA'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTCADASTRO'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTULTIMAALTERACAO'
        Width = 140
        Visible = True
      end>
  end
  object Edit_Codigo: TEdit
    Left = 40
    Top = 32
    Width = 145
    Height = 21
    Color = clScrollBar
    Enabled = False
    TabOrder = 1
  end
  object Edit_Descricao: TEdit
    Left = 40
    Top = 92
    Width = 145
    Height = 21
    Color = clScrollBar
    Enabled = False
    MaxLength = 20
    TabOrder = 2
  end
  object ComboBox_StatusPastos: TComboBox
    Left = 40
    Top = 152
    Width = 145
    Height = 21
    Color = clScrollBar
    Enabled = False
    ItemIndex = 0
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    Text = 'Selecionar'
    Items.Strings = (
      'Selecionar')
  end
  object Edit_Area: TEdit
    Left = 256
    Top = 32
    Width = 145
    Height = 21
    Color = clScrollBar
    Enabled = False
    TabOrder = 4
  end
  object Date_Cadastro: TDateTimePicker
    Left = 256
    Top = 92
    Width = 145
    Height = 21
    Date = 43012.722567164350000000
    Time = 43012.722567164350000000
    Color = clScrollBar
    Enabled = False
    TabOrder = 5
  end
  object Date_DataAlteracao: TDateTimePicker
    Left = 256
    Top = 152
    Width = 145
    Height = 21
    Date = 43012.722567164350000000
    Time = 43012.722567164350000000
    Color = clScrollBar
    Enabled = False
    TabOrder = 6
  end
end
