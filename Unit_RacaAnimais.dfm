object Form_RacaAnimais: TForm_RacaAnimais
  Left = 0
  Top = 0
  Caption = 'Ra'#231'a de Animais'
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
  object SB_Novo: TSpeedButton
    Left = 376
    Top = 8
    Width = 87
    Height = 22
    Caption = 'Novo'
    OnClick = SB_NovoClick
  end
  object SB_Limpar: TSpeedButton
    Left = 376
    Top = 50
    Width = 87
    Height = 22
    Caption = 'Limpar'
    Enabled = False
    OnClick = SB_LimparClick
  end
  object SB_Cancelar: TSpeedButton
    Left = 376
    Top = 92
    Width = 87
    Height = 22
    Caption = 'Cancelar'
    Enabled = False
    OnClick = SB_CancelarClick
  end
  object SB_Salvar: TSpeedButton
    Left = 376
    Top = 140
    Width = 87
    Height = 22
    Caption = 'Salvar'
    Enabled = False
    OnClick = SB_SalvarClick
  end
  object SB_Excluir: TSpeedButton
    Left = 376
    Top = 224
    Width = 87
    Height = 22
    Caption = 'Excluir'
    OnClick = SB_ExcluirClick
  end
  object SB_Alterar: TSpeedButton
    Left = 376
    Top = 180
    Width = 87
    Height = 22
    Caption = 'Alterar'
    OnClick = SB_AlterarClick
  end
  object Label3: TLabel
    Left = 40
    Top = 133
    Width = 73
    Height = 13
    Caption = 'Tipo de Animal:'
  end
  object DBGrid_RacaAnimais: TDBGrid
    Left = 480
    Top = 0
    Width = 320
    Height = 601
    DataSource = DataModule1.DataSource_RacaAnimais
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid_RacaAnimaisDblClick
    OnKeyDown = DBGrid_RacaAnimaisKeyDown
    OnKeyPress = DBGrid_RacaAnimaisKeyPress
    OnKeyUp = DBGrid_RacaAnimaisKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_RACA'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RACA'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_TIPO'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_DESCRICAO'
        Width = 90
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
  object ComboBox_TipoAnimal: TComboBox
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
end
