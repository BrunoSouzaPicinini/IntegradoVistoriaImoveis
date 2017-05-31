unit Methods.ItemVistoria;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  System.JSON, Datasnap.DSProviderDataModuleAdapter,DBXPlatform,
  Dao.ItemVistoria, Bo.ItemVistoria,Vistoria,
  HttpStatusCode;

type
  TsmItemVistoria = class(TDSServerModule)
  private
    { Private declarations }
   public
    procedure updateItemVistoria(AIdVistoria, AIdItem: Integer;
      AObservacao: string); // Post - Create
    procedure acceptItemVistoria(AIdItemVistoria, AIdVistoria, AIdItem: Integer;
      AObservacao: string); // Put - Update
    procedure cancelItemVistoria(AIdItemVistoria: Integer); // Delete - Delete
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TsmItemVistoria }

procedure TsmItemVistoria.acceptItemVistoria(AIdItemVistoria, AIdVistoria,
  AIdItem: Integer; AObservacao: string);
begin
end;

procedure TsmItemVistoria.cancelItemVistoria(AIdItemVistoria: Integer);
var
  Dao: TItemVistoriaDao;
begin
  try
    try
      Dao := TItemVistoriaDao.Create;
      Dao.Delete(AIdItemVistoria);
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

procedure TsmItemVistoria.updateItemVistoria(AIdVistoria, AIdItem: Integer;
  AObservacao: string);
var
  Dao: TItemVistoriaDao;
begin
  try
    try
      Dao := TItemVistoriaDao.Create;
      Dao.Save(TItemVistoriaBo.Create(AIdVistoria, AIdItem, AObservacao));
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
