unit Methods.Imovel;

interface

uses
   System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  System.JSON,Imovel, Datasnap.DSProviderDataModuleAdapter,DBXPlatform;

type
  TsmImovel = class(TDSServerModule)
  private
    { Private declarations }
  public
    function getImovel(AIdImovel: Integer): TJSONValue; // Get - Read
    function getAllImovel(): TJSONArray; // Get - Read
    procedure updateImovel(AQuadra, ALote, ALogradouro, ABairro, AComplemento,
      ACep: string; AMetragemTerreno, AMetragemImovel: Double; ANumero:Integer);
    // Post - Create
    procedure acceptImovel(AIdImovel: Integer; AQuadra, ALote, ALogradouro, ABairro,
      AComplemento,  ACep: string;
      AMetragemTerreno, AMetragemImovel: Double;ANumero : Integer);
     // Put Update
    procedure cancelImovel(AIdImovel: Integer); // Delete - Delete
  end;


implementation
uses Dao.Imovel, Bo.Imovel, HttpStatusCode;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TsmImovel }



{ TsmImovel }

procedure TsmImovel.acceptImovel(AIdImovel: Integer; AQuadra, ALote,
  ALogradouro, ABairro, AComplemento, ACep: string; AMetragemTerreno,
  AMetragemImovel: Double; ANumero: Integer);
var
  Dao: TImovelDao;
  Imovel: TImovel;
begin
  try
    try
      Dao := TImovelDao.Create;
      Imovel := Dao.Read(AIdImovel);
      TImovelBo.Update(Imovel, AQuadra, ALote, ALogradouro, ABairro,
        AComplemento, ACep, AMetragemTerreno, AMetragemImovel,ANumero);

      Dao.Save(Imovel);
      GetInvocationMetadata().ResponseCode := HttpStatusCode.SUCCESS_NO_CONTENT;
    except
      on e: Exception do
      begin
        GetInvocationMetadata().ResponseCode := HttpStatusCode.SERVER_ERROR;
      end
    end;
  finally
    Dao.Free;
  end;
end;

procedure TsmImovel.cancelImovel(AIdImovel: Integer);
var
  Dao: TImovelDao;
begin
  try
    try
      Dao := TImovelDao.Create;
      Dao.Delete(AIdImovel);
      GetInvocationMetadata().ResponseCode := HttpStatusCode.SUCCESS_NO_CONTENT;
    except
      on e: Exception do
      begin
        GetInvocationMetadata().ResponseCode := HttpStatusCode.SERVER_ERROR;
      end
    end;
  finally
    Dao.Free;
  end;
end;

function TsmImovel.getAllImovel: TJSONArray;
var
  Dao: TImovelDao;
  Imovel: TImovel;
begin
  Result := TJSONArray.Create;
  try
    try
      Dao := TImovelDao.Create;
      for Imovel in Dao.Read do
        Result.AddElement(TImovel.ObjectToJSON(Imovel));
      GetInvocationMetadata().ResponseCode := HttpStatusCode.SUCCESS;
    except
      on e: Exception do
      begin
        GetInvocationMetadata().ResponseCode := HttpStatusCode.NOT_FOUND;
      end
    end;
  finally
    Dao.Free;
  end;
end;

function TsmImovel.getImovel(AIdImovel: Integer): TJSONValue;
var
  Dao: TImovelDao;
  Imovel: TImovel;
begin
  Result := TJSONValue.Create;
  try
    try
      Dao := TImovelDao.Create;
      Result := TImovel.ObjectToJSON(Dao.Read(AIdImovel));
      GetInvocationMetadata().ResponseCode := HttpStatusCode.SUCCESS;
    except
      on e: Exception do
      begin
        GetInvocationMetadata().ResponseCode := HttpStatusCode.NOT_FOUND;
      end
    end;
  finally
    Dao.Free;
  end;
end;

procedure TsmImovel.updateImovel(AQuadra, ALote, ALogradouro, ABairro,
  AComplemento, ACep: string; AMetragemTerreno, AMetragemImovel: Double;
  ANumero: Integer);
var
  Dao: TImovelDao;
begin
  try
    try
      Dao := TImovelDao.Create;

      Dao.Save(TImovelBo.Create(AQuadra, ALote, ALogradouro, ABairro,
        AComplemento,  ACep, AMetragemTerreno, AMetragemImovel,ANumero));

      GetInvocationMetadata().ResponseCode := HttpStatusCode.SUCCESS_NO_CONTENT;
    except
      on e: Exception do
      begin
        GetInvocationMetadata().ResponseCode := HttpStatusCode.SERVER_ERROR;
      end
    end;
  finally
    Dao.Free;
  end;
end;

end.

