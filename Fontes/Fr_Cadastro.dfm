object Form2: TForm2
  Left = 213
  Top = 173
  Width = 480
  Height = 229
  Caption = 'Cadastro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 464
    Height = 41
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 0
      Top = 0
      Width = 105
      Height = 41
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 360
      Top = 0
      Width = 105
      Height = 41
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 256
      Top = 0
      Width = 105
      Height = 41
      Caption = 'Limpar '
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 464
    Height = 149
    Align = alClient
    Caption = 'Dados Do Livro'
    TabOrder = 1
    object Label1: TLabel
      Left = 97
      Top = 27
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 81
      Top = 67
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label3: TLabel
      Left = 97
      Top = 100
      Width = 28
      Height = 13
      Caption = 'Pre'#231'o'
    end
    object cod: TEdit
      Left = 136
      Top = 24
      Width = 81
      Height = 25
      TabOrder = 0
    end
    object descri: TEdit
      Left = 136
      Top = 56
      Width = 185
      Height = 25
      TabOrder = 1
    end
    object pre: TEdit
      Left = 136
      Top = 88
      Width = 81
      Height = 25
      TabOrder = 2
    end
  end
  object QueryCad: TADOQuery
    Connection = DataModule1.DB_CONEXAO
    Parameters = <>
    Left = 32
    Top = 105
  end
end
