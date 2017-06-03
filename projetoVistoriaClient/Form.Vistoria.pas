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
    lblPessoa: TLabel;
    dbgrdItemVistoria: TDBGrid;
    btnAdd: TButton;
    dsItem: TDataSource;
    cdsItem: TClientDataSet;
    intgrfldItemIdItem: TIntegerField;
    strngfldItemdescricao: TStringField;
    dbcbbPessoa: TDBComboBox;
    dsItemGrid: TDataSource;
    cdsItemGrid: TClientDataSet;
    intgrfld1: TIntegerField;
    strngfld1: TStringField;
    dbcbbItem: TDBComboBox;
    lblItem: TLabel;
    procedure FormShow(Sender: TObject);
  private
    procedure carregarComboPessoa();
    procedure carregarComboImovel();
    procedure carregarComboItem();
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



procedure TfrmVistoria.carregarComboImovel;
begin
  with cdsImovel do
    begin
      First;
      while not Eof do
      begin
        dbcbbImovel.Items.AddObject(FindField('Logradouro').AsString, TObject(FindField('IdItem').AsInteger));
        Next;
      end;
    end;
end;

procedure TfrmVistoria.carregarComboItem;
begin
   with cdsItem do
    begin
      First;
      while not Eof do
      begin
        dbcbbItem.Items.AddObject(FindField('Descricao').AsString, TObject(FindField('IdItem').AsInteger));
        Next;
      end;

    end;
end;

procedure TfrmVistoria.carregarComboPessoa;
begin
    with cdsPessoa do
    begin
      First;
      while not Eof do
      begin
        dbcbbPessoa.Items.AddObject(FindField('Nome').AsString, TObject(FindField('IdPessoa').AsInteger));
        Next;
      end;

    end;
end;

procedure TfrmVistoria.FormShow(Sender: TObject);
begin
  getAllImovel;
  carregarComboImovel;
  getAllPessoa;
  carregarComboPessoa;
  getAllItem;
  carregarComboItem;
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

        // A como prefixo apenas para os parametro, para as variaveis nao se usa o "A", A = Argument
        //dbcbbImovel.Items.Add(AImovel.Logradouro);
        // A noite eu vejo isso com mais calma, aqui eu forcei adicionar na combo,
        // ela teria q funcionar sozinha, tenho q relembrar como fazer isso
        // por enquanto deixa assim, mesmo e da continuidade no processo de chamar
        // o save da vistoria e dos itens. blza

        //blz, qualquer coisa meu projeto esta no git vlw
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
  cdsPessoa.Last;
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
     cdsPessoa.First;
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
