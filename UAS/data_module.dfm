object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 150
  Width = 215
  object ZConnection: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Program Files (x86)\Borland\Delphi7\UAS\libmysql.dll'
    Left = 16
    Top = 24
  end
  object ZKustomer: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'SELECT *  FROM kustomer')
    Params = <>
    Left = 80
    Top = 24
  end
  object dsKustomer: TDataSource
    DataSet = ZKustomer
    Left = 144
    Top = 24
  end
end
