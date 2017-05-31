object frmUser: TfrmUser
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsSizeToolWin
  Caption = 'Cadastro Usu'#225'rio'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pgcUser: TPageControl
    Left = 0
    Top = 0
    Width = 447
    Height = 201
    ActivePage = tsConsulta
    Align = alClient
    TabOrder = 0
    object tsCadastro: TTabSheet
      Caption = 'Cadastro'
    end
    object tsConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object grdUser: TDBGrid
        Left = 0
        Top = 0
        Width = 439
        Height = 173
        Align = alClient
        DataSource = dsUser
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object dsUser: TDataSource
    DataSet = cdsUser
    Left = 136
    Top = 80
  end
  object cdsUser: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 256
    Top = 80
    object intgrfldUserIDUser: TIntegerField
      FieldName = 'IDUser'
    end
    object strngfldUserLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 50
    end
    object strngfldUserPASS: TStringField
      FieldName = 'PASS'
    end
  end
end
