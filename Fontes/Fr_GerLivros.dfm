object Fr_GerenciamentoLivros: TFr_GerenciamentoLivros
  Left = 685
  Top = 159
  Width = 524
  Height = 271
  Caption = 'Gerenciamento De Livros'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 508
    Height = 41
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 0
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Novo'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 432
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 508
    Height = 191
    Align = alClient
    DataSource = FornecedorDeDados
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 264
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Title.Caption = 'Pre'#231'o'
        Width = 95
        Visible = True
      end>
  end
  object FornecedorDeDados: TDataSource
    DataSet = DataModule1.ADOTable1
    Left = 16
    Top = 136
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = DataModule1.DB_CONEXAO
    CursorType = ctStatic
    DataSource = FornecedorDeDados
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM LIVROS')
    Left = 96
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    Left = 288
    Top = 136
    object Editar1: TMenuItem
      Caption = 'Editar'
      OnClick = Editar1Click
    end
    object Apagar1: TMenuItem
      Caption = 'Apagar'
      OnClick = Apagar1Click
    end
  end
  object Delete: TADOQuery
    Connection = DataModule1.DB_CONEXAO
    Parameters = <>
    Left = 192
    Top = 160
  end
end
