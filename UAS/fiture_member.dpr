program fiture_member;

uses
  Forms,
  kustomer in 'kustomer.pas' {Form1},
  data_module in 'data_module.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.