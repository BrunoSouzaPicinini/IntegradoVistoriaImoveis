unit Bo.ItemVistoria;

interface

uses Vistoria, Dao.Vistoria, Dao.Item, SysUtils, DateUtils, System.Classes,
  System.Generics.Collections, ItemVistoria;

type
  TItemVistoriaBo = class
  private
  public
    class function Create(AIdVistoria, AIdItem: Integer;
      const AObservacao: string): TItemVistoria;
    //
    class function Update(var AItemVistoria: TItemVistoria;
      const AIdVistoria, AIdItem: Integer; const AObservacao: string)
      : TItemVistoria;
  end;

implementation

{ TVistoriaItemBo }

class function TItemVistoriaBo.Create(AIdVistoria, AIdItem: Integer;
  const AObservacao: string): TItemVistoria;
var
  DaoVistoria: TVistoriaDao;
  DaoItem: TItemDao;
begin
  Result := TItemVistoria.Create;

  Result.IdItemVistoria := 0;
  Result.Vistoria := DaoVistoria.Read(AIdVistoria);
  Result.Item := DaoItem.Read(AIdItem);
  Result.Observacao := AObservacao;
end;

class function TItemVistoriaBo.Update(var AItemVistoria: TItemVistoria;
  const AIdVistoria, AIdItem: Integer; const AObservacao: string)
  : TItemVistoria;
var
  DaoVistoria: TVistoriaDao;
  DaoItem: TItemDao;
begin
  DaoVistoria := TVistoriaDao.Create;
  DaoItem := TItemDao.Create;

  AItemVistoria.Vistoria := DaoVistoria.Read(AIdVistoria);
  AItemVistoria.Item := DaoItem.Read(AIdItem);
  AItemVistoria.Observacao := AObservacao;

  Result := AItemVistoria;
end;

end.
