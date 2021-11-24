unit DataModule;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    DB_CONEXAO: TADOConnection;
    CONSULTA_DADOS_TABELA: TADOStoredProc;
    GER_LIVROS_MANUTENCAO: TADOStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
