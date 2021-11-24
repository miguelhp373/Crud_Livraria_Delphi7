unit DataModule;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    DB_CONEXAO: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1CODIGO: TAutoIncField;
    ADOTable1DESCRICAO: TStringField;
    ADOTable1PRECO: TFloatField;
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
