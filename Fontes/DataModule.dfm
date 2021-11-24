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
      'fo=False;Initial Catalog=PRG_DATABASE;Data Source=MIGUELHENRIQUE' +
      '\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 48
    Top = 40
  end
  object CONSULTA_DADOS_TABELA: TADOStoredProc
    Connection = DB_CONEXAO
    ProcedureName = 'dbo.CONSULTA_DADOS_TABELA'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end>
    Left = 176
    Top = 144
  end
  object GER_LIVROS_MANUTENCAO: TADOStoredProc
    Connection = DB_CONEXAO
    ProcedureName = 'dbo.GER_LIVROS_MANUTENCAO'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@INP_PAR_TYPE_OPERATION'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
      end
      item
        Name = '@INP_COD_LIVRO'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@INP_DESCRI_LIVRO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
      end
      item
        Name = '@INP_PRECO_LIVRO'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end>
    Left = 160
    Top = 48
  end
end
