unit Fr_GerLivros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, ADODB, Menus;

type
  TFr_GerenciamentoLivros = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    FornecedorDeDados: TDataSource;
    PopupMenu1: TPopupMenu;
    Editar1: TMenuItem;
    Apagar1: TMenuItem;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Apagar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure ConsultaDados;
  end;

var
  Fr_GerenciamentoLivros: TFr_GerenciamentoLivros;

implementation

uses DataModule,Fr_Cadastro, DateUtils;

{$R *.dfm}

procedure TFr_GerenciamentoLivros.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TFr_GerenciamentoLivros.Button1Click(Sender: TObject);
begin
  var_cadastro := 'N';

  Application.CreateForm(TForm2,Form2);
  Form2.ShowModal;

  var_cod      :=  '';
  var_descri   :=  '';
  var_preco    :=  '';

  if(var_cadastro <> 'N')Then
    begin
        ConsultaDados;
  end;
end;

procedure TFr_GerenciamentoLivros.DBGrid1DblClick(Sender: TObject);
begin
  var_cadastro := 'N';

  var_cod      := DataModule1.CONSULTA_DADOS_TABELA.FieldByName('CODIGO').AsString;
  var_descri   := DataModule1.CONSULTA_DADOS_TABELA.FieldByName('DESCRICAO').AsString;
  var_preco    := DataModule1.CONSULTA_DADOS_TABELA.FieldByName('PRECO').AsString;



  Application.CreateForm(TForm2,Form2);
  Form2.ShowModal;

  var_cod      :=  '';
  var_descri   :=  '';
  var_preco    :=  '';

  if(var_cadastro <> 'N')Then
    begin
      ConsultaDados;
  end;
end;

procedure TFr_GerenciamentoLivros.Editar1Click(Sender: TObject);
begin
  var_cadastro := 'N';

  var_cod      := DataModule1.CONSULTA_DADOS_TABELA.FieldByName('CODIGO').AsString;
  var_descri   := DataModule1.CONSULTA_DADOS_TABELA.FieldByName('DESCRICAO').AsString;
  var_preco    := DataModule1.CONSULTA_DADOS_TABELA.FieldByName('PRECO').AsString;



  Application.CreateForm(TForm2,Form2);
  Form2.ShowModal;

  var_cod      :=  '';
  var_descri   :=  '';
  var_preco    :=  '';

  if(var_cadastro <> 'N')Then
    begin
      ConsultaDados;
  end;
end;

procedure TFr_GerenciamentoLivros.Apagar1Click(Sender: TObject);
begin

  with DataModule1.GER_LIVROS_MANUTENCAO do
    begin
      close;
      Parameters.ParambyName('@INP_PAR_TYPE_OPERATION').value := 'EXC';
      Parameters.ParambyName('@INP_COD_LIVRO').value := strToInt(DataModule1.CONSULTA_DADOS_TABELA.FieldByName('CODIGO').AsString);
      ExecProc;
  end;

  ConsultaDados;

end;

procedure TFr_GerenciamentoLivros.FormCreate(Sender: TObject);
begin
  ConsultaDados;
end;

procedure TFr_GerenciamentoLivros.ConsultaDados;
begin
    with DataModule1.CONSULTA_DADOS_TABELA do
    begin
      close;
      Open; First;  
    end
end;

end.
