object frmVistoria: TfrmVistoria
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsSizeToolWin
  Caption = 'Vistoria'
  ClientHeight = 508
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblData: TLabel
    Left = 200
    Top = 32
    Width = 33
    Height = 13
    Caption = 'lblData'
  end
  object pgcVistoria: TPageControl
    Left = 0
    Top = 0
    Width = 717
    Height = 508
    ActivePage = tsCadastro
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 500
    object tsCadastro: TTabSheet
      Caption = 'Cadastro'
      ExplicitLeft = 8
      ExplicitTop = 28
      object lblCodigo: TLabel
        Left = 24
        Top = 3
        Width = 33
        Height = 13
        Caption = 'Codigo'
      end
      object Label1: TLabel
        Left = 180
        Top = 3
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object lblObservacao: TLabel
        Left = 368
        Top = 3
        Width = 58
        Height = 13
        Caption = 'Observacao'
      end
      object lblImovel: TLabel
        Left = 24
        Top = 53
        Width = 32
        Height = 13
        Caption = 'Im'#243'vel'
      end
      object lblPessoa: TLabel
        Left = 24
        Top = 103
        Width = 34
        Height = 13
        Caption = 'Pessoa'
      end
      object lblItem: TLabel
        Left = 24
        Top = 149
        Width = 37
        Height = 13
        Caption = 'Item'
      end
      object edtCodigo: TEdit
        Left = 24
        Top = 22
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object dtpData: TDateTimePicker
        Left = 180
        Top = 22
        Width = 173
        Height = 21
        Date = 42888.040032175920000000
        Time = 42888.040032175920000000
        TabOrder = 1
      end
      object edtObservacao: TEdit
        Left = 368
        Top = 22
        Width = 329
        Height = 21
        TabOrder = 2
      end
      object dbcbbImovel: TDBComboBox
        Left = 24
        Top = 72
        Width = 249
        Height = 21
        BevelWidth = 10
        DataField = 'logradouro'
        DataSource = dsImovel
        TabOrder = 3
      end
      object dbgrdItemVistoria: TDBGrid
        Left = 24
        Top = 200
        Width = 673
        Height = 201
        DataSource = dsItemGrid
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object btnAdd: TButton
        Left = 295
        Top = 166
        Width = 75
        Height = 25
        Caption = '+'
        TabOrder = 5
        OnClick = btnAddClick
      end
      object dbcbbPessoa: TDBComboBox
        Left = 24
        Top = 122
        Width = 249
        Height = 21
        BevelWidth = 10
        DataField = 'Nome'
        DataSource = dsPessoa
        TabOrder = 4
      end
      object btnGravar: TButton
        Left = 24
        Top = 424
        Width = 75
        Height = 25
        Caption = 'Gravar'
        TabOrder = 7
        OnClick = btnGravarClick
      end
      object dbcbbItem: TDBComboBox
        Left = 24
        Top = 168
        Width = 249
        Height = 21
        BevelWidth = 10
        DataField = 'Descricao'
        DataSource = dsItem
        TabOrder = 8
      end
    end
    object Consulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      ExplicitHeight = 472
    end
  end
  object dsImovel: TDataSource
    DataSet = cdsImovel
    Left = 428
    Top = 64
  end
  object cdsImovel: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 500
    Top = 64
    object intgrfldImovelIdImovel: TIntegerField
      FieldName = 'IdImovel'
    end
    object strngfldImovelquadra: TStringField
      FieldName = 'quadra'
      Size = 45
    end
    object strngfldImovellote: TStringField
      FieldName = 'lote'
      Size = 45
    end
    object fltfldImovelmetragemterreno: TFloatField
      FieldName = 'metragemterreno'
    end
    object fltfldImovelmetragemimovel: TFloatField
      FieldName = 'metragemimovel'
    end
    object strngfldImovellogradouro: TStringField
      FieldName = 'logradouro'
      Size = 45
    end
    object strngfldImovelbairro: TStringField
      FieldName = 'bairro'
      Size = 45
    end
    object strngfldImovelcomplemento: TStringField
      FieldName = 'complemento'
      Size = 45
    end
    object intgrfldImovelnumero: TIntegerField
      FieldName = 'numero'
    end
    object strngfldImovelcep: TStringField
      FieldName = 'cep'
      Size = 45
    end
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 496
    Top = 112
    object intgrfldPessoaIdPessoa: TIntegerField
      FieldName = 'IdPessoa'
    end
    object strngfldPessoaNome: TStringField
      FieldName = 'Nome'
      Size = 45
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 432
    Top = 112
  end
  object dsItemGrid: TDataSource
    DataSet = cdsItemGrid
    Left = 548
    Top = 328
  end
  object cdsItemGrid: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 604
    Top = 328
    object intgrfld1: TIntegerField
      FieldName = 'IdItem'
    end
    object strngfld1: TStringField
      FieldName = 'descricao'
      Size = 45
    end
  end
  object cdsItem: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 496
    Top = 184
    object intgrfldItemIdItem: TIntegerField
      FieldName = 'IdItem'
    end
    object strngfldItemDescricao: TStringField
      FieldName = 'Descricao'
      Size = 45
    end
  end
  object dsItem: TDataSource
    DataSet = cdsItem
    Left = 432
    Top = 184
  end
end
