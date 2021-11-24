unit Fr_Cadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox1: TGroupBox;
    cod: TEdit;
    Label1: TLabel;
    descri: TEdit;
    Label2: TLabel;
    pre: TEdit;
    Label3: TLabel;
    QueryCad: TADOQuery;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  
  var_cadastro : string;
  var_cod      : string;
  var_descri   : string;
  var_preco    : string;

implementation

uses DataModule;

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  cod.Text    := '0';
  descri.Text := '';
  pre.Text    := '';
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  With QueryCad do
    begin
      close;

      if(strtoint(cod.Text) = 0)then SQL.Add('INSERT INTO LIVROS(DESCRICAO, PRECO)VALUES(:descricao,:preco)')
      else
        begin
            SQL.Add('UPDATE LIVROS SET DESCRICAO = :descricao, PRECO = :preco WHERE CODIGO = :codigo');
            Parameters.ParamByName('codigo').value := cod.Text;
      end;


      Parameters.ParamByName('descricao').value := descri.Text;
      Parameters.ParamByName('preco').value := pre.Text;
      
      ExecSQL;
  end;

  var_cadastro := 'S';
  close;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin

  cod.Text    := '0';
  descri.Text := '';
  pre.Text    := '';

  if(var_cod <> '')then
    begin
      cod.Text := var_cod;
  end;

  if(var_descri <> '')then
    begin
      descri.Text := var_descri;
  end;

  if(var_preco <> '')then
    begin
      pre.Text := var_preco;
  end;  

end;

end.
