//
// Created by the DataSnap proxy generator.
// 04/06/2017 14:32:01
//

unit Client.Classes;

interface

uses System.JSON, Datasnap.DSProxyRest, Datasnap.DSClientRest, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Vistoria, Data.DBXJSONReflect;

type

  IDSRestCachedTVistoria = interface;

  TsmTesteClient = class(TDSAdminRestClient)
  private
    FEchoStringCommand: TDSRestCommand;
    FReverseStringCommand: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string; const ARequestFilter: string = ''): string;
    function ReverseString(Value: string; const ARequestFilter: string = ''): string;
  end;

  TsmPessoaClient = class(TDSAdminRestClient)
  private
    FgetPessoaCommand: TDSRestCommand;
    FgetPessoaCommand_Cache: TDSRestCommand;
    FgetAllPessoaCommand: TDSRestCommand;
    FgetAllPessoaCommand_Cache: TDSRestCommand;
    FupdatePessoaCommand: TDSRestCommand;
    FacceptPessoaCommand: TDSRestCommand;
    FdeleteUserCommand: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function getPessoa(AIdPessoa: Integer; const ARequestFilter: string = ''): TJSONValue;
    function getPessoa_Cache(AIdPessoa: Integer; const ARequestFilter: string = ''): IDSRestCachedJSONValue;
    function getAllPessoa(const ARequestFilter: string = ''): TJSONArray;
    function getAllPessoa_Cache(const ARequestFilter: string = ''): IDSRestCachedJSONArray;
    procedure updatePessoa(ANome: string);
    procedure acceptPessoa(ANome: string; AIdPessoa: Integer);
    procedure deleteUser(AIdPessoa: Integer);
  end;

  TsmItemClient = class(TDSAdminRestClient)
  private
    FgetItemCommand: TDSRestCommand;
    FgetItemCommand_Cache: TDSRestCommand;
    FgetAllItemCommand: TDSRestCommand;
    FgetAllItemCommand_Cache: TDSRestCommand;
    FupdateItemCommand: TDSRestCommand;
    FacceptItemCommand: TDSRestCommand;
    FdeleteItemCommand: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function getItem(AIdItem: Integer; const ARequestFilter: string = ''): TJSONValue;
    function getItem_Cache(AIdItem: Integer; const ARequestFilter: string = ''): IDSRestCachedJSONValue;
    function getAllItem(const ARequestFilter: string = ''): TJSONArray;
    function getAllItem_Cache(const ARequestFilter: string = ''): IDSRestCachedJSONArray;
    procedure updateItem(ADescricao: string);
    procedure acceptItem(ADescricao: string; AIdItem: Integer);
    procedure deleteItem(AidItem: Integer);
  end;

  TsmImovelClient = class(TDSAdminRestClient)
  private
    FgetImovelCommand: TDSRestCommand;
    FgetImovelCommand_Cache: TDSRestCommand;
    FgetAllImovelCommand: TDSRestCommand;
    FgetAllImovelCommand_Cache: TDSRestCommand;
    FupdateImovelCommand: TDSRestCommand;
    FacceptImovelCommand: TDSRestCommand;
    FcancelImovelCommand: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function getImovel(AIdImovel: Integer; const ARequestFilter: string = ''): TJSONValue;
    function getImovel_Cache(AIdImovel: Integer; const ARequestFilter: string = ''): IDSRestCachedJSONValue;
    function getAllImovel(const ARequestFilter: string = ''): TJSONArray;
    function getAllImovel_Cache(const ARequestFilter: string = ''): IDSRestCachedJSONArray;
    procedure updateImovel(AQuadra: string; ALote: string; ALogradouro: string; ABairro: string; AComplemento: string; ACep: string; AMetragemTerreno: Double; AMetragemImovel: Double; ANumero: Integer);
    procedure acceptImovel(AIdImovel: Integer; AQuadra: string; ALote: string; ALogradouro: string; ABairro: string; AComplemento: string; ACep: string; AMetragemTerreno: Double; AMetragemImovel: Double; ANumero: Integer);
    procedure cancelImovel(AIdImovel: Integer);
  end;

  TsmVistoriaClient = class(TDSAdminRestClient)
  private
    FupdateVistoriaCommand: TDSRestCommand;
    FupdateVistoriaCommand_Cache: TDSRestCommand;
    FacceptVistoriaCommand: TDSRestCommand;
    FcancelVistoriaCommand: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function updateVistoria(AIdPessoa: Integer; AIdImovel: Integer; AData: string; AObeservacao: string; const ARequestFilter: string = ''): TVistoria;
    function updateVistoria_Cache(AIdPessoa: Integer; AIdImovel: Integer; AData: string; AObeservacao: string; const ARequestFilter: string = ''): IDSRestCachedTVistoria;
    procedure acceptVistoria(AIdVistoria: Integer; AIdImovel: Integer; AIdPessoa: Integer; AData: string; AObservacao: string);
    procedure cancelVistoria(AIdVistoria: Integer);
  end;

  TsmItemVistoriaClient = class(TDSAdminRestClient)
  private
    FupdateItemVistoriaCommand: TDSRestCommand;
    FacceptItemVistoriaCommand: TDSRestCommand;
    FcancelItemVistoriaCommand: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure updateItemVistoria(AIdVistoria: Integer; AIdItem: Integer; AObservacao: string);
    procedure acceptItemVistoria(AIdItemVistoria: Integer; AIdVistoria: Integer; AIdItem: Integer; AObservacao: string);
    procedure cancelItemVistoria(AIdItemVistoria: Integer);
  end;

  IDSRestCachedTVistoria = interface(IDSRestCachedObject<TVistoria>)
  end;

  TDSRestCachedTVistoria = class(TDSRestCachedObject<TVistoria>, IDSRestCachedTVistoria, IDSRestCachedCommand)
  end;

const
  TsmTeste_EchoString: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TsmTeste_ReverseString: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TsmPessoa_getPessoa: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AIdPessoa'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONValue')
  );

  TsmPessoa_getPessoa_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AIdPessoa'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TsmPessoa_getAllPessoa: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONArray')
  );

  TsmPessoa_getAllPessoa_Cache: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TsmPessoa_updatePessoa: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'ANome'; Direction: 1; DBXType: 26; TypeName: 'string')
  );

  TsmPessoa_acceptPessoa: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'ANome'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'AIdPessoa'; Direction: 1; DBXType: 6; TypeName: 'Integer')
  );

  TsmPessoa_deleteUser: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'AIdPessoa'; Direction: 1; DBXType: 6; TypeName: 'Integer')
  );

  TsmItem_getItem: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AIdItem'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONValue')
  );

  TsmItem_getItem_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AIdItem'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TsmItem_getAllItem: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONArray')
  );

  TsmItem_getAllItem_Cache: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TsmItem_updateItem: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'ADescricao'; Direction: 1; DBXType: 26; TypeName: 'string')
  );

  TsmItem_acceptItem: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'ADescricao'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'AIdItem'; Direction: 1; DBXType: 6; TypeName: 'Integer')
  );

  TsmItem_deleteItem: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'AidItem'; Direction: 1; DBXType: 6; TypeName: 'Integer')
  );

  TsmImovel_getImovel: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AIdImovel'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONValue')
  );

  TsmImovel_getImovel_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AIdImovel'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TsmImovel_getAllImovel: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONArray')
  );

  TsmImovel_getAllImovel_Cache: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TsmImovel_updateImovel: array [0..8] of TDSRestParameterMetaData =
  (
    (Name: 'AQuadra'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ALote'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ALogradouro'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ABairro'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'AComplemento'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ACep'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'AMetragemTerreno'; Direction: 1; DBXType: 7; TypeName: 'Double'),
    (Name: 'AMetragemImovel'; Direction: 1; DBXType: 7; TypeName: 'Double'),
    (Name: 'ANumero'; Direction: 1; DBXType: 6; TypeName: 'Integer')
  );

  TsmImovel_acceptImovel: array [0..9] of TDSRestParameterMetaData =
  (
    (Name: 'AIdImovel'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'AQuadra'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ALote'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ALogradouro'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ABairro'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'AComplemento'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ACep'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'AMetragemTerreno'; Direction: 1; DBXType: 7; TypeName: 'Double'),
    (Name: 'AMetragemImovel'; Direction: 1; DBXType: 7; TypeName: 'Double'),
    (Name: 'ANumero'; Direction: 1; DBXType: 6; TypeName: 'Integer')
  );

  TsmImovel_cancelImovel: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'AIdImovel'; Direction: 1; DBXType: 6; TypeName: 'Integer')
  );

  TsmVistoria_updateVistoria: array [0..4] of TDSRestParameterMetaData =
  (
    (Name: 'AIdPessoa'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'AIdImovel'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'AData'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'AObeservacao'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TVistoria')
  );

  TsmVistoria_updateVistoria_Cache: array [0..4] of TDSRestParameterMetaData =
  (
    (Name: 'AIdPessoa'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'AIdImovel'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'AData'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'AObeservacao'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TsmVistoria_acceptVistoria: array [0..4] of TDSRestParameterMetaData =
  (
    (Name: 'AIdVistoria'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'AIdImovel'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'AIdPessoa'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'AData'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'AObservacao'; Direction: 1; DBXType: 26; TypeName: 'string')
  );

  TsmVistoria_cancelVistoria: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'AIdVistoria'; Direction: 1; DBXType: 6; TypeName: 'Integer')
  );

  TsmItemVistoria_updateItemVistoria: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'AIdVistoria'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'AIdItem'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'AObservacao'; Direction: 1; DBXType: 26; TypeName: 'string')
  );

  TsmItemVistoria_acceptItemVistoria: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'AIdItemVistoria'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'AIdVistoria'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'AIdItem'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'AObservacao'; Direction: 1; DBXType: 26; TypeName: 'string')
  );

  TsmItemVistoria_cancelItemVistoria: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'AIdItemVistoria'; Direction: 1; DBXType: 6; TypeName: 'Integer')
  );

implementation

function TsmTesteClient.EchoString(Value: string; const ARequestFilter: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FConnection.CreateCommand;
    FEchoStringCommand.RequestType := 'GET';
    FEchoStringCommand.Text := 'TsmTeste.EchoString';
    FEchoStringCommand.Prepare(TsmTeste_EchoString);
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.Execute(ARequestFilter);
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TsmTesteClient.ReverseString(Value: string; const ARequestFilter: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FConnection.CreateCommand;
    FReverseStringCommand.RequestType := 'GET';
    FReverseStringCommand.Text := 'TsmTeste.ReverseString';
    FReverseStringCommand.Prepare(TsmTeste_ReverseString);
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.Execute(ARequestFilter);
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

constructor TsmTesteClient.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TsmTesteClient.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TsmTesteClient.Destroy;
begin
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  inherited;
end;

function TsmPessoaClient.getPessoa(AIdPessoa: Integer; const ARequestFilter: string): TJSONValue;
begin
  if FgetPessoaCommand = nil then
  begin
    FgetPessoaCommand := FConnection.CreateCommand;
    FgetPessoaCommand.RequestType := 'GET';
    FgetPessoaCommand.Text := 'TsmPessoa.getPessoa';
    FgetPessoaCommand.Prepare(TsmPessoa_getPessoa);
  end;
  FgetPessoaCommand.Parameters[0].Value.SetInt32(AIdPessoa);
  FgetPessoaCommand.Execute(ARequestFilter);
  Result := TJSONValue(FgetPessoaCommand.Parameters[1].Value.GetJSONValue(FInstanceOwner));
end;

function TsmPessoaClient.getPessoa_Cache(AIdPessoa: Integer; const ARequestFilter: string): IDSRestCachedJSONValue;
begin
  if FgetPessoaCommand_Cache = nil then
  begin
    FgetPessoaCommand_Cache := FConnection.CreateCommand;
    FgetPessoaCommand_Cache.RequestType := 'GET';
    FgetPessoaCommand_Cache.Text := 'TsmPessoa.getPessoa';
    FgetPessoaCommand_Cache.Prepare(TsmPessoa_getPessoa_Cache);
  end;
  FgetPessoaCommand_Cache.Parameters[0].Value.SetInt32(AIdPessoa);
  FgetPessoaCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONValue.Create(FgetPessoaCommand_Cache.Parameters[1].Value.GetString);
end;

function TsmPessoaClient.getAllPessoa(const ARequestFilter: string): TJSONArray;
begin
  if FgetAllPessoaCommand = nil then
  begin
    FgetAllPessoaCommand := FConnection.CreateCommand;
    FgetAllPessoaCommand.RequestType := 'GET';
    FgetAllPessoaCommand.Text := 'TsmPessoa.getAllPessoa';
    FgetAllPessoaCommand.Prepare(TsmPessoa_getAllPessoa);
  end;
  FgetAllPessoaCommand.Execute(ARequestFilter);
  Result := TJSONArray(FgetAllPessoaCommand.Parameters[0].Value.GetJSONValue(FInstanceOwner));
end;

function TsmPessoaClient.getAllPessoa_Cache(const ARequestFilter: string): IDSRestCachedJSONArray;
begin
  if FgetAllPessoaCommand_Cache = nil then
  begin
    FgetAllPessoaCommand_Cache := FConnection.CreateCommand;
    FgetAllPessoaCommand_Cache.RequestType := 'GET';
    FgetAllPessoaCommand_Cache.Text := 'TsmPessoa.getAllPessoa';
    FgetAllPessoaCommand_Cache.Prepare(TsmPessoa_getAllPessoa_Cache);
  end;
  FgetAllPessoaCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONArray.Create(FgetAllPessoaCommand_Cache.Parameters[0].Value.GetString);
end;

procedure TsmPessoaClient.updatePessoa(ANome: string);
begin
  if FupdatePessoaCommand = nil then
  begin
    FupdatePessoaCommand := FConnection.CreateCommand;
    FupdatePessoaCommand.RequestType := 'GET';
    FupdatePessoaCommand.Text := 'TsmPessoa.updatePessoa';
    FupdatePessoaCommand.Prepare(TsmPessoa_updatePessoa);
  end;
  FupdatePessoaCommand.Parameters[0].Value.SetWideString(ANome);
  FupdatePessoaCommand.Execute;
end;

procedure TsmPessoaClient.acceptPessoa(ANome: string; AIdPessoa: Integer);
begin
  if FacceptPessoaCommand = nil then
  begin
    FacceptPessoaCommand := FConnection.CreateCommand;
    FacceptPessoaCommand.RequestType := 'GET';
    FacceptPessoaCommand.Text := 'TsmPessoa.acceptPessoa';
    FacceptPessoaCommand.Prepare(TsmPessoa_acceptPessoa);
  end;
  FacceptPessoaCommand.Parameters[0].Value.SetWideString(ANome);
  FacceptPessoaCommand.Parameters[1].Value.SetInt32(AIdPessoa);
  FacceptPessoaCommand.Execute;
end;

procedure TsmPessoaClient.deleteUser(AIdPessoa: Integer);
begin
  if FdeleteUserCommand = nil then
  begin
    FdeleteUserCommand := FConnection.CreateCommand;
    FdeleteUserCommand.RequestType := 'GET';
    FdeleteUserCommand.Text := 'TsmPessoa.deleteUser';
    FdeleteUserCommand.Prepare(TsmPessoa_deleteUser);
  end;
  FdeleteUserCommand.Parameters[0].Value.SetInt32(AIdPessoa);
  FdeleteUserCommand.Execute;
end;

constructor TsmPessoaClient.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TsmPessoaClient.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TsmPessoaClient.Destroy;
begin
  FgetPessoaCommand.DisposeOf;
  FgetPessoaCommand_Cache.DisposeOf;
  FgetAllPessoaCommand.DisposeOf;
  FgetAllPessoaCommand_Cache.DisposeOf;
  FupdatePessoaCommand.DisposeOf;
  FacceptPessoaCommand.DisposeOf;
  FdeleteUserCommand.DisposeOf;
  inherited;
end;

function TsmItemClient.getItem(AIdItem: Integer; const ARequestFilter: string): TJSONValue;
begin
  if FgetItemCommand = nil then
  begin
    FgetItemCommand := FConnection.CreateCommand;
    FgetItemCommand.RequestType := 'GET';
    FgetItemCommand.Text := 'TsmItem.getItem';
    FgetItemCommand.Prepare(TsmItem_getItem);
  end;
  FgetItemCommand.Parameters[0].Value.SetInt32(AIdItem);
  FgetItemCommand.Execute(ARequestFilter);
  Result := TJSONValue(FgetItemCommand.Parameters[1].Value.GetJSONValue(FInstanceOwner));
end;

function TsmItemClient.getItem_Cache(AIdItem: Integer; const ARequestFilter: string): IDSRestCachedJSONValue;
begin
  if FgetItemCommand_Cache = nil then
  begin
    FgetItemCommand_Cache := FConnection.CreateCommand;
    FgetItemCommand_Cache.RequestType := 'GET';
    FgetItemCommand_Cache.Text := 'TsmItem.getItem';
    FgetItemCommand_Cache.Prepare(TsmItem_getItem_Cache);
  end;
  FgetItemCommand_Cache.Parameters[0].Value.SetInt32(AIdItem);
  FgetItemCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONValue.Create(FgetItemCommand_Cache.Parameters[1].Value.GetString);
end;

function TsmItemClient.getAllItem(const ARequestFilter: string): TJSONArray;
begin
  if FgetAllItemCommand = nil then
  begin
    FgetAllItemCommand := FConnection.CreateCommand;
    FgetAllItemCommand.RequestType := 'GET';
    FgetAllItemCommand.Text := 'TsmItem.getAllItem';
    FgetAllItemCommand.Prepare(TsmItem_getAllItem);
  end;
  FgetAllItemCommand.Execute(ARequestFilter);
  Result := TJSONArray(FgetAllItemCommand.Parameters[0].Value.GetJSONValue(FInstanceOwner));
end;

function TsmItemClient.getAllItem_Cache(const ARequestFilter: string): IDSRestCachedJSONArray;
begin
  if FgetAllItemCommand_Cache = nil then
  begin
    FgetAllItemCommand_Cache := FConnection.CreateCommand;
    FgetAllItemCommand_Cache.RequestType := 'GET';
    FgetAllItemCommand_Cache.Text := 'TsmItem.getAllItem';
    FgetAllItemCommand_Cache.Prepare(TsmItem_getAllItem_Cache);
  end;
  FgetAllItemCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONArray.Create(FgetAllItemCommand_Cache.Parameters[0].Value.GetString);
end;

procedure TsmItemClient.updateItem(ADescricao: string);
begin
  if FupdateItemCommand = nil then
  begin
    FupdateItemCommand := FConnection.CreateCommand;
    FupdateItemCommand.RequestType := 'GET';
    FupdateItemCommand.Text := 'TsmItem.updateItem';
    FupdateItemCommand.Prepare(TsmItem_updateItem);
  end;
  FupdateItemCommand.Parameters[0].Value.SetWideString(ADescricao);
  FupdateItemCommand.Execute;
end;

procedure TsmItemClient.acceptItem(ADescricao: string; AIdItem: Integer);
begin
  if FacceptItemCommand = nil then
  begin
    FacceptItemCommand := FConnection.CreateCommand;
    FacceptItemCommand.RequestType := 'GET';
    FacceptItemCommand.Text := 'TsmItem.acceptItem';
    FacceptItemCommand.Prepare(TsmItem_acceptItem);
  end;
  FacceptItemCommand.Parameters[0].Value.SetWideString(ADescricao);
  FacceptItemCommand.Parameters[1].Value.SetInt32(AIdItem);
  FacceptItemCommand.Execute;
end;

procedure TsmItemClient.deleteItem(AidItem: Integer);
begin
  if FdeleteItemCommand = nil then
  begin
    FdeleteItemCommand := FConnection.CreateCommand;
    FdeleteItemCommand.RequestType := 'GET';
    FdeleteItemCommand.Text := 'TsmItem.deleteItem';
    FdeleteItemCommand.Prepare(TsmItem_deleteItem);
  end;
  FdeleteItemCommand.Parameters[0].Value.SetInt32(AidItem);
  FdeleteItemCommand.Execute;
end;

constructor TsmItemClient.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TsmItemClient.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TsmItemClient.Destroy;
begin
  FgetItemCommand.DisposeOf;
  FgetItemCommand_Cache.DisposeOf;
  FgetAllItemCommand.DisposeOf;
  FgetAllItemCommand_Cache.DisposeOf;
  FupdateItemCommand.DisposeOf;
  FacceptItemCommand.DisposeOf;
  FdeleteItemCommand.DisposeOf;
  inherited;
end;

function TsmImovelClient.getImovel(AIdImovel: Integer; const ARequestFilter: string): TJSONValue;
begin
  if FgetImovelCommand = nil then
  begin
    FgetImovelCommand := FConnection.CreateCommand;
    FgetImovelCommand.RequestType := 'GET';
    FgetImovelCommand.Text := 'TsmImovel.getImovel';
    FgetImovelCommand.Prepare(TsmImovel_getImovel);
  end;
  FgetImovelCommand.Parameters[0].Value.SetInt32(AIdImovel);
  FgetImovelCommand.Execute(ARequestFilter);
  Result := TJSONValue(FgetImovelCommand.Parameters[1].Value.GetJSONValue(FInstanceOwner));
end;

function TsmImovelClient.getImovel_Cache(AIdImovel: Integer; const ARequestFilter: string): IDSRestCachedJSONValue;
begin
  if FgetImovelCommand_Cache = nil then
  begin
    FgetImovelCommand_Cache := FConnection.CreateCommand;
    FgetImovelCommand_Cache.RequestType := 'GET';
    FgetImovelCommand_Cache.Text := 'TsmImovel.getImovel';
    FgetImovelCommand_Cache.Prepare(TsmImovel_getImovel_Cache);
  end;
  FgetImovelCommand_Cache.Parameters[0].Value.SetInt32(AIdImovel);
  FgetImovelCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONValue.Create(FgetImovelCommand_Cache.Parameters[1].Value.GetString);
end;

function TsmImovelClient.getAllImovel(const ARequestFilter: string): TJSONArray;
begin
  if FgetAllImovelCommand = nil then
  begin
    FgetAllImovelCommand := FConnection.CreateCommand;
    FgetAllImovelCommand.RequestType := 'GET';
    FgetAllImovelCommand.Text := 'TsmImovel.getAllImovel';
    FgetAllImovelCommand.Prepare(TsmImovel_getAllImovel);
  end;
  FgetAllImovelCommand.Execute(ARequestFilter);
  Result := TJSONArray(FgetAllImovelCommand.Parameters[0].Value.GetJSONValue(FInstanceOwner));
end;

function TsmImovelClient.getAllImovel_Cache(const ARequestFilter: string): IDSRestCachedJSONArray;
begin
  if FgetAllImovelCommand_Cache = nil then
  begin
    FgetAllImovelCommand_Cache := FConnection.CreateCommand;
    FgetAllImovelCommand_Cache.RequestType := 'GET';
    FgetAllImovelCommand_Cache.Text := 'TsmImovel.getAllImovel';
    FgetAllImovelCommand_Cache.Prepare(TsmImovel_getAllImovel_Cache);
  end;
  FgetAllImovelCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONArray.Create(FgetAllImovelCommand_Cache.Parameters[0].Value.GetString);
end;

procedure TsmImovelClient.updateImovel(AQuadra: string; ALote: string; ALogradouro: string; ABairro: string; AComplemento: string; ACep: string; AMetragemTerreno: Double; AMetragemImovel: Double; ANumero: Integer);
begin
  if FupdateImovelCommand = nil then
  begin
    FupdateImovelCommand := FConnection.CreateCommand;
    FupdateImovelCommand.RequestType := 'GET';
    FupdateImovelCommand.Text := 'TsmImovel.updateImovel';
    FupdateImovelCommand.Prepare(TsmImovel_updateImovel);
  end;
  FupdateImovelCommand.Parameters[0].Value.SetWideString(AQuadra);
  FupdateImovelCommand.Parameters[1].Value.SetWideString(ALote);
  FupdateImovelCommand.Parameters[2].Value.SetWideString(ALogradouro);
  FupdateImovelCommand.Parameters[3].Value.SetWideString(ABairro);
  FupdateImovelCommand.Parameters[4].Value.SetWideString(AComplemento);
  FupdateImovelCommand.Parameters[5].Value.SetWideString(ACep);
  FupdateImovelCommand.Parameters[6].Value.SetDouble(AMetragemTerreno);
  FupdateImovelCommand.Parameters[7].Value.SetDouble(AMetragemImovel);
  FupdateImovelCommand.Parameters[8].Value.SetInt32(ANumero);
  FupdateImovelCommand.Execute;
end;

procedure TsmImovelClient.acceptImovel(AIdImovel: Integer; AQuadra: string; ALote: string; ALogradouro: string; ABairro: string; AComplemento: string; ACep: string; AMetragemTerreno: Double; AMetragemImovel: Double; ANumero: Integer);
begin
  if FacceptImovelCommand = nil then
  begin
    FacceptImovelCommand := FConnection.CreateCommand;
    FacceptImovelCommand.RequestType := 'GET';
    FacceptImovelCommand.Text := 'TsmImovel.acceptImovel';
    FacceptImovelCommand.Prepare(TsmImovel_acceptImovel);
  end;
  FacceptImovelCommand.Parameters[0].Value.SetInt32(AIdImovel);
  FacceptImovelCommand.Parameters[1].Value.SetWideString(AQuadra);
  FacceptImovelCommand.Parameters[2].Value.SetWideString(ALote);
  FacceptImovelCommand.Parameters[3].Value.SetWideString(ALogradouro);
  FacceptImovelCommand.Parameters[4].Value.SetWideString(ABairro);
  FacceptImovelCommand.Parameters[5].Value.SetWideString(AComplemento);
  FacceptImovelCommand.Parameters[6].Value.SetWideString(ACep);
  FacceptImovelCommand.Parameters[7].Value.SetDouble(AMetragemTerreno);
  FacceptImovelCommand.Parameters[8].Value.SetDouble(AMetragemImovel);
  FacceptImovelCommand.Parameters[9].Value.SetInt32(ANumero);
  FacceptImovelCommand.Execute;
end;

procedure TsmImovelClient.cancelImovel(AIdImovel: Integer);
begin
  if FcancelImovelCommand = nil then
  begin
    FcancelImovelCommand := FConnection.CreateCommand;
    FcancelImovelCommand.RequestType := 'GET';
    FcancelImovelCommand.Text := 'TsmImovel.cancelImovel';
    FcancelImovelCommand.Prepare(TsmImovel_cancelImovel);
  end;
  FcancelImovelCommand.Parameters[0].Value.SetInt32(AIdImovel);
  FcancelImovelCommand.Execute;
end;

constructor TsmImovelClient.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TsmImovelClient.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TsmImovelClient.Destroy;
begin
  FgetImovelCommand.DisposeOf;
  FgetImovelCommand_Cache.DisposeOf;
  FgetAllImovelCommand.DisposeOf;
  FgetAllImovelCommand_Cache.DisposeOf;
  FupdateImovelCommand.DisposeOf;
  FacceptImovelCommand.DisposeOf;
  FcancelImovelCommand.DisposeOf;
  inherited;
end;

function TsmVistoriaClient.updateVistoria(AIdPessoa: Integer; AIdImovel: Integer; AData: string; AObeservacao: string; const ARequestFilter: string): TVistoria;
begin
  if FupdateVistoriaCommand = nil then
  begin
    FupdateVistoriaCommand := FConnection.CreateCommand;
    FupdateVistoriaCommand.RequestType := 'GET';
    FupdateVistoriaCommand.Text := 'TsmVistoria.updateVistoria';
    FupdateVistoriaCommand.Prepare(TsmVistoria_updateVistoria);
  end;
  FupdateVistoriaCommand.Parameters[0].Value.SetInt32(AIdPessoa);
  FupdateVistoriaCommand.Parameters[1].Value.SetInt32(AIdImovel);
  FupdateVistoriaCommand.Parameters[2].Value.SetWideString(AData);
  FupdateVistoriaCommand.Parameters[3].Value.SetWideString(AObeservacao);
  FupdateVistoriaCommand.Execute(ARequestFilter);
  if not FupdateVistoriaCommand.Parameters[4].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FupdateVistoriaCommand.Parameters[4].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TVistoria(FUnMarshal.UnMarshal(FupdateVistoriaCommand.Parameters[4].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FupdateVistoriaCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TsmVistoriaClient.updateVistoria_Cache(AIdPessoa: Integer; AIdImovel: Integer; AData: string; AObeservacao: string; const ARequestFilter: string): IDSRestCachedTVistoria;
begin
  if FupdateVistoriaCommand_Cache = nil then
  begin
    FupdateVistoriaCommand_Cache := FConnection.CreateCommand;
    FupdateVistoriaCommand_Cache.RequestType := 'GET';
    FupdateVistoriaCommand_Cache.Text := 'TsmVistoria.updateVistoria';
    FupdateVistoriaCommand_Cache.Prepare(TsmVistoria_updateVistoria_Cache);
  end;
  FupdateVistoriaCommand_Cache.Parameters[0].Value.SetInt32(AIdPessoa);
  FupdateVistoriaCommand_Cache.Parameters[1].Value.SetInt32(AIdImovel);
  FupdateVistoriaCommand_Cache.Parameters[2].Value.SetWideString(AData);
  FupdateVistoriaCommand_Cache.Parameters[3].Value.SetWideString(AObeservacao);
  FupdateVistoriaCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTVistoria.Create(FupdateVistoriaCommand_Cache.Parameters[4].Value.GetString);
end;

procedure TsmVistoriaClient.acceptVistoria(AIdVistoria: Integer; AIdImovel: Integer; AIdPessoa: Integer; AData: string; AObservacao: string);
begin
  if FacceptVistoriaCommand = nil then
  begin
    FacceptVistoriaCommand := FConnection.CreateCommand;
    FacceptVistoriaCommand.RequestType := 'GET';
    FacceptVistoriaCommand.Text := 'TsmVistoria.acceptVistoria';
    FacceptVistoriaCommand.Prepare(TsmVistoria_acceptVistoria);
  end;
  FacceptVistoriaCommand.Parameters[0].Value.SetInt32(AIdVistoria);
  FacceptVistoriaCommand.Parameters[1].Value.SetInt32(AIdImovel);
  FacceptVistoriaCommand.Parameters[2].Value.SetInt32(AIdPessoa);
  FacceptVistoriaCommand.Parameters[3].Value.SetWideString(AData);
  FacceptVistoriaCommand.Parameters[4].Value.SetWideString(AObservacao);
  FacceptVistoriaCommand.Execute;
end;

procedure TsmVistoriaClient.cancelVistoria(AIdVistoria: Integer);
begin
  if FcancelVistoriaCommand = nil then
  begin
    FcancelVistoriaCommand := FConnection.CreateCommand;
    FcancelVistoriaCommand.RequestType := 'GET';
    FcancelVistoriaCommand.Text := 'TsmVistoria.cancelVistoria';
    FcancelVistoriaCommand.Prepare(TsmVistoria_cancelVistoria);
  end;
  FcancelVistoriaCommand.Parameters[0].Value.SetInt32(AIdVistoria);
  FcancelVistoriaCommand.Execute;
end;

constructor TsmVistoriaClient.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TsmVistoriaClient.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TsmVistoriaClient.Destroy;
begin
  FupdateVistoriaCommand.DisposeOf;
  FupdateVistoriaCommand_Cache.DisposeOf;
  FacceptVistoriaCommand.DisposeOf;
  FcancelVistoriaCommand.DisposeOf;
  inherited;
end;

procedure TsmItemVistoriaClient.updateItemVistoria(AIdVistoria: Integer; AIdItem: Integer; AObservacao: string);
begin
  if FupdateItemVistoriaCommand = nil then
  begin
    FupdateItemVistoriaCommand := FConnection.CreateCommand;
    FupdateItemVistoriaCommand.RequestType := 'GET';
    FupdateItemVistoriaCommand.Text := 'TsmItemVistoria.updateItemVistoria';
    FupdateItemVistoriaCommand.Prepare(TsmItemVistoria_updateItemVistoria);
  end;
  FupdateItemVistoriaCommand.Parameters[0].Value.SetInt32(AIdVistoria);
  FupdateItemVistoriaCommand.Parameters[1].Value.SetInt32(AIdItem);
  FupdateItemVistoriaCommand.Parameters[2].Value.SetWideString(AObservacao);
  FupdateItemVistoriaCommand.Execute;
end;

procedure TsmItemVistoriaClient.acceptItemVistoria(AIdItemVistoria: Integer; AIdVistoria: Integer; AIdItem: Integer; AObservacao: string);
begin
  if FacceptItemVistoriaCommand = nil then
  begin
    FacceptItemVistoriaCommand := FConnection.CreateCommand;
    FacceptItemVistoriaCommand.RequestType := 'GET';
    FacceptItemVistoriaCommand.Text := 'TsmItemVistoria.acceptItemVistoria';
    FacceptItemVistoriaCommand.Prepare(TsmItemVistoria_acceptItemVistoria);
  end;
  FacceptItemVistoriaCommand.Parameters[0].Value.SetInt32(AIdItemVistoria);
  FacceptItemVistoriaCommand.Parameters[1].Value.SetInt32(AIdVistoria);
  FacceptItemVistoriaCommand.Parameters[2].Value.SetInt32(AIdItem);
  FacceptItemVistoriaCommand.Parameters[3].Value.SetWideString(AObservacao);
  FacceptItemVistoriaCommand.Execute;
end;

procedure TsmItemVistoriaClient.cancelItemVistoria(AIdItemVistoria: Integer);
begin
  if FcancelItemVistoriaCommand = nil then
  begin
    FcancelItemVistoriaCommand := FConnection.CreateCommand;
    FcancelItemVistoriaCommand.RequestType := 'GET';
    FcancelItemVistoriaCommand.Text := 'TsmItemVistoria.cancelItemVistoria';
    FcancelItemVistoriaCommand.Prepare(TsmItemVistoria_cancelItemVistoria);
  end;
  FcancelItemVistoriaCommand.Parameters[0].Value.SetInt32(AIdItemVistoria);
  FcancelItemVistoriaCommand.Execute;
end;

constructor TsmItemVistoriaClient.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TsmItemVistoriaClient.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TsmItemVistoriaClient.Destroy;
begin
  FupdateItemVistoriaCommand.DisposeOf;
  FacceptItemVistoriaCommand.DisposeOf;
  FcancelItemVistoriaCommand.DisposeOf;
  inherited;
end;

end.

