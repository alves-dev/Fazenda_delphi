object Form_Principal: TForm_Principal
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Fazenda - Principal'
  ClientHeight = 700
  ClientWidth = 1350
  Color = clBtnFace
  ParentFont = True
  Menu = M_menu
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 0
    Top = 0
    Width = 105
    Height = 89
    Caption = 'Animais'
  end
  object M_menu: TMainMenu
    Left = 16
    Top = 176
    object Fazenda: TMenuItem
      Caption = 'Fazenda'
      object Fazenda2: TMenuItem
        Caption = 'Fazenda'
        OnClick = Fazenda2Click
      end
    end
    object Cadastros: TMenuItem
      Caption = 'Cadastros'
      object Status: TMenuItem
        Caption = 'Status'
        OnClick = StatusClick
      end
      object TipodeAnimais: TMenuItem
        Caption = 'Tipo de Animais'
        OnClick = TipodeAnimaisClick
      end
      object RacadeAnimais: TMenuItem
        Caption = 'Ra'#231'a de Animais'
        OnClick = RacadeAnimaisClick
      end
      object StatusPastos: TMenuItem
        Caption = 'Status Pastos'
        OnClick = StatusPastosClick
      end
      object Pastos: TMenuItem
        Caption = 'Pastos'
        OnClick = PastosClick
      end
    end
    object Relatrios: TMenuItem
      Caption = 'Relat'#243'rios'
    end
    object Vendas: TMenuItem
      Caption = 'Vendas'
      object Vendas2: TMenuItem
        Caption = 'Vendas'
      end
    end
    object Compras: TMenuItem
      Caption = 'Compras'
      object Compras2: TMenuItem
        Caption = 'Compras'
      end
    end
  end
end
