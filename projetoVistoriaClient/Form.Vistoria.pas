unit Form.Vistoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Imovel,Pessoa,Item,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls,Client.Classes, Client.Module, System.json,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmVistoria = class(TForm)
    pgcVistoria: TPageControl;
    tsCadastro: TTabSheet;
    Consulta: TTabSheet;
    lblCodigo: TLabel;
    edtCodigo: TEdit;
    lblData: TLabel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    edtObservacao: TEdit;
    lblObservacao: TLabel;
    edtImovel: TEdit;
    dbcbbImovel: TDBComboBox;
    dsImovel: TDataSource;
    cdsImovel: TClientDataSet;
    intgrfldImovelIdImovel: TIntegerField;
    strngfldImovelquadra: TStringField;
    strngfldImovellote: TStringField;
    fltfldImovelmetragemterreno: TFloatField;
    fltfldImovelmetragemimovel: TFloatField;
    strngfldImovellogradouro: TStringField;
    strngfldImovelbairro: TStringField;
    strngfldImovelcomplemento: TStringField;
    intgrfldImovelnumero: TIntegerField;
    strngfldImovelcep: TStringField;
    cdsPessoa: TClientDataSet;
    intgrfldPessoaIdPessoa: TIntegerField;
    strngfldPessoaNome: TStringField;
    dsPessoa: TDataSource;
    lblImovel: TLabel;
    dbcbbPessoa: TDBComboBox;
    lblPessoa: TLabel;
    edtPessoa: TEdit;
    dbgrdItemVistoria: TDBGrid;
    dbcbbItem: TDBComboBox;
    edtItem: TEdit;
    btnAdd: TButton;
    dsItem: TDataSource;
    cdsItem: TClientDataSet;
    intgrfldItemIdItem: TIntegerField;
    strngfldItemdescricao: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure getAllImovel();
    procedure getAllPessoa();
    procedure getAllItem();
  end;

var
  frmVistoria: TfrmVistoria;

implementation

{$R *.dfm}
var
AImovelClient : TsmImovelClient;
APessoaClient : TsmPessoaClient;
AItemClient : TsmItemClient;

procedure TfrmVistoria.FormShow(Sender: TObject);
begin
  getAllImovel;
  getAllPessoa;
  getAllItem;
end;

procedure TfrmVistoria.getAllImovel;
var
  AImovel: TImovel;
  JArray: TJSONArray;
  i: Integer;
begin
  if not cdsImovel.Active then
    cdsImovel.CreateDataSet;

  cdsImovel.EmptyDataSet;

  AImovelClient := TsmImovelClient.Create(ClientModule.dsConnection);
  try
    JArray := AImovelClient.getAllImovel();

    for i := 0 to JArray.Size -1 do
    begin
      AImovel := TImovel.Create;
      try
        AImovel := TImovel.JSONToObject<TImovel>(JArray.Get(i));

        cdsImovel.InsertRecord([AImovel.IdImovel, AImovel.Quadra, AImovel.Lote,AImovel.MetragemTerreno,
        AImovel.MetragemImovel,AImovel.Logradouro,AImovel.Bairro,AImovel.Complemento,AImovel.Numero,AImovel.Cep]);
      finally
        AImovel.Free;
      end;
    end;
  finally
    FreeAndNil(AImovelClient);
  end;
end;


procedure TfrmVistoria.getAllPessoa;
var
  APessoa: TPessoa;
  JArray: TJSONArray;
  i: Integer;
begin
  if not cdsPessoa.Active then
    cdsPessoa.CreateDataSet;

  cdsPessoa.EmptyDataSet;

  APessoaClient := TsmPessoaClient.Create(ClientModule.dsConnection);
  try
    JArray := APessoaClient.getAllPessoa();

    for i := 0 to JArray.Size -1 do
    begin
      APessoa := TPessoa.Create;
      try
        APessoa := TPessoa.JSONToObject<TPessoa>(JArray.Get(i));

        cdsPessoa.InsertRecord([APessoa.IdPessoa, APessoa.Nome]);
      finally
        APessoa.Free;
      end;
    end;
  finally
    FreeAndNil(APessoaClient);
  end;
end;


procedure TfrmVistoria.getAllItem;
var
  AItem: TItem;
  JArray: TJSONArray;
  i: Integer;
begin
  if not cdsItem.Active then
    cdsItem.CreateDataSet;

  cdsItem.EmptyDataSet;

  AItemClient := TsmItemClient.Create(ClientModule.dsConnection);
  try
    JArray := AItemClient.getAllItem();

    for i := 0 to JArray.Size -1 do
    begin
      AItem := TItem.Create;
      try
        AItem := TItem.JSONToObject<TItem>(JArray.Get(i));

        cdsItem.InsertRecord([AItem.IdItem, AItem.Descricao]);
      finally
        AItem.Free;
      end;
    end;
  finally
    FreeAndNil(AItemClient);
  end;
end;

end.