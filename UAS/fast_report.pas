unit fast_report;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet;

type
  TForm2 = class(TForm)
    frReport: TfrxReport;
    frxdbdtst1: TfrxDBDataset;

  private
    { Private declarations }
  public
    { Public declarations }
    procedure preview;
  end;

var
  Form2: TForm2;

implementation

uses
  data_module;

{$R *.dfm}

{ TForm2 }

procedure TForm2.preview;
begin
   frxdbdtst1.DataSet :=  DataModule1.ZKustomer;
   frReport.ShowReport;
end;

end.
