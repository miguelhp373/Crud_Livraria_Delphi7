unit Fr_Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TMenu = class(TForm)
    MainMenu1: TMainMenu;
    Livros1: TMenuItem;
    Gerenciamentodelivros1: TMenuItem;
    Label1: TLabel;
    procedure Gerenciamentodelivros1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Menu: TMenu;

implementation

uses Fr_GerLivros;

{$R *.dfm}

procedure TMenu.Gerenciamentodelivros1Click(Sender: TObject);
begin
  Application.CreateForm(TFr_GerenciamentoLivros,Fr_GerenciamentoLivros);
  Fr_GerenciamentoLivros.ShowModal;
end;

end.
