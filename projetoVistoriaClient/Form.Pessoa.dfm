object frmPessoa: TfrmPessoa
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsSizeToolWin
  Caption = 'Pessoa'
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
  object pgcPessoa: TPageControl
    Left = 0
    Top = 0
    Width = 447
    Height = 201
    ActivePage = Consulta
    Align = alClient
    TabOrder = 0
    object tsCadastro: TTabSheet
      Caption = 'Cadastro'
    end
    object Consulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object grdPessoa: TDBGrid
        Left = 0
        Top = 0
        Width = 439
        Height = 173
        Align = alClient
        DataSource = dsPessoa
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 144
    Top = 88
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 216
    Top = 88
    object intgrfldPessoaIdPessoa: TIntegerField
      FieldName = 'IdPessoa'
    end
    object cdsPessoaNome: TStringField
      FieldName = 'Nome'
      Size = 45
    end
  end
end
