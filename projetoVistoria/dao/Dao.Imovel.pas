unit Dao.Imovel;

interface
uses
System.Generics.Collections, DBXJSON, DBXJSONReflect, BD.Connection,
  FireDAC.Comp.Client, SysUtils, Imovel, FireDAC.Phys.Intf, FireDAC.DApt;

type
  TImovelDao = class
  private
    class function Create (AImovel: TImovel): TImovel;
    class function Update (AImovel: TImovel): TImovel;
    class procedure Consolidate (var AImovel: TImovel; AQuery : TFDQuery);
  public
    class function Read(): TObjectList<TImovel>; overload;
    class function Read(AIdImovel: Integer) : TImovel; overload;
    class function Save(AImovel : TImovel): TImovel;
    class procedure Delete (AIdImovel: Integer);
  end;

implementation

{ TImovelDao }

class procedure TImovelDao.Consolidate(var AImovel: TImovel; AQuery: TFDQuery);
begin

end;

class function TImovelDao.Create(AImovel: TImovel): TImovel;
begin

end;

class procedure TImovelDao.Delete(AIdImovel: Integer);
begin

end;

class function TImovelDao.Read(AIdImovel: Integer): TImovel;
begin

end;

class function TImovelDao.Read: TObjectList<TImovel>;
begin

end;

class function TImovelDao.Save(AImovel: TImovel): TImovel;
begin

end;

class function TImovelDao.Update(AImovel: TImovel): TImovel;
begin

end;

end.
