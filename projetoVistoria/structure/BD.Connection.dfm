object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 150
  Width = 215
  object dlPg: TFDPhysPgDriverLink
    Left = 32
    Top = 24
  end
  object conDatabase: TFDConnection
    Params.Strings = (
      'Database=aula'
      'User_Name=postgres'
      'Password=root'
      'Server=localhost'
      'DriverID=PG')
    Left = 80
    Top = 96
  end
end
