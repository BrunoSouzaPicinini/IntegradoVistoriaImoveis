object dmConnection: TdmConnection
  OldCreateOrder = False
  Height = 150
  Width = 215
  object conDatabase: TFDConnection
    Params.Strings = (
      'Database=postgres'
      'User_Name=postgres'
      'Password=root'
      'Server=localhost'
      'DriverID=PG')
    Left = 40
    Top = 64
  end
  object dlPg: TFDPhysPgDriverLink
    Left = 40
    Top = 8
  end
end
