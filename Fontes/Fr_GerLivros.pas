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
    ADOQuery1: TADOQuery;
    PopupMenu1: TPopupMenu;
    Editar1: TMenuItem;
    Apagar1: TMenuItem;
    Delete: TADOQuery;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Apagar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fr_GerenciamentoLivros: TFr_GerenciamentoLivros;

implementation

uses DataModule,Fr_Cadastro;

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
      FornecedorDeDados.DataSet.Active := false;
      FornecedorDeDados.DataSet.Active := True;
  end;
end;

procedure TFr_GerenciamentoLivros.DBGrid1DblClick(Sender: TObject);
begin
  var_cadastro := 'N';

  var_cod      := DataModule1.ADOTable1.Fields[0].AsString;
  var_descri   := DataModule1.ADOTable1.Fields[1].AsString;
  var_preco    := DataModule1.ADOTable1.Fields[2].AsString;



  Application.CreateForm(TForm2,Form2);
  Form2.ShowModal;

  var_cod      :=  '';
  var_descri   :=  '';
  var_preco    :=  '';

  if(var_cadastro <> 'N')Then
    begin
      FornecedorDeDados.DataSet.Active := false;
      FornecedorDeDados.DataSet.Active := True;
  end;
end;

procedure TFr_GerenciamentoLivros.Editar1Click(Sender: TObject);
begin
  var_cadastro := 'N';

  var_cod      := DataModule1.ADOTable1.Fields[0].AsString;
  var_descri   := DataModule1.ADOTable1.Fields[1].AsString;
  var_preco    := DataModule1.ADOTable1.Fields[2].AsString;



  Application.CreateForm(TForm2,Form2);
  Form2.ShowModal;

  var_cod      :=  '';
  var_descri   :=  '';
  var_preco    :=  '';

  if(var_cadastro <> 'N')Then
    begin
      FornecedorDeDados.DataSet.Active := false;
      FornecedorDeDados.DataSet.Active := True;
  end;
end;

procedure TFr_GerenciamentoLivros.Apagar1Click(Sender: TObject);
begin
  With Delete do
    begin
      close;
      SQL.Add('DELETE FROM LIVROS WHERE CODIGO = :codigo');
      Parameters.ParamByName('codigo').value := DataModule1.ADOTable1.Fields[0].AsString;
      ExecSQL;

      FornecedorDeDados.DataSet.Active := false;
      FornecedorDeDados.DataSet.Active := True;

  end;
end;

end.
