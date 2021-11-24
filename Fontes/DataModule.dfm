object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 434
  Top = 167
  Height = 363
  Width = 465
  object DB_CONEXAO: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=MIGUELHENRIQUE\miguel;Initial Catalog=PRG_DATAB' +
      'ASE;Data Source=MIGUELHENRIQUE\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 48
    Top = 40
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = DB_CONEXAO
    CursorType = ctStatic
    TableName = 'LIVROS'
    Left = 128
    Top = 40
    object ADOTable1CODIGO: TAutoIncField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object ADOTable1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object ADOTable1PRECO: TFloatField
      FieldName = 'PRECO'
    end
  end
end
