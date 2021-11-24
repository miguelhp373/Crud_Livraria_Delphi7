program PjLivraria;

uses
  Forms,
  Fr_Menu in 'Fr_Menu.pas' {Menu},
  Fr_Cadastro in 'Fr_Cadastro.pas' {Form2},
  Fr_GerLivros in 'Fr_GerLivros.pas' {Fr_GerenciamentoLivros},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TMenu, Menu);
  Application.Run;
end.
