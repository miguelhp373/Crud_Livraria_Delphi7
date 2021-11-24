object Menu: TMenu
  Left = 418
  Top = 287
  Width = 526
  Height = 242
  Caption = 'Livraria'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 112
    Top = 72
    Width = 283
    Height = 32
    Caption = 'Gerenciador de Livraria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object MainMenu1: TMainMenu
    Left = 8
    object Livros1: TMenuItem
      Caption = 'Livros'
      object Gerenciamentodelivros1: TMenuItem
        Caption = 'Gerenciamento de livros'
        OnClick = Gerenciamentodelivros1Click
      end
    end
  end
end
