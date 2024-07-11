unit data_module;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TDataModule1 = class(TDataModule)
    ZConnection: TZConnection;
    ZKustomer: TZQuery;
    dsKustomer: TDataSource;
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

uses
  kustomer;

{$R *.dfm}


end.
