unit Dao.ItemVistoria;

interface

uses
  System.Generics.Collections, DBXJSON, DBXJSONReflect, BD.Connection,
  FireDAC.Comp.Client, SysUtils, Dao.Vistoria, ItemVistoria, Dao.Item,
  FireDAC.Phys.Intf,
  FireDAC.DApt;

type
  TItemVistoriaDao = class
  private
    class function Create(AItemVistoria: TItemVistoria): TItemVistoria;
    class function Update(AItemVistoria: TItemVistoria): TItemVistoria;
    class procedure Consolidate(var AItemVistoria: TItemVistoria;
      AQuery: TFDQuery);
  public
    class function Save(AItemVistoria: TItemVistoria): TItemVistoria;
    class function Read(AIdItemVistoria: Integer): TItemVistoria; overload;
    class procedure Delete(AIdItemVistoria: Integer);
    // class procedure Delete(AId: Integer);
  end;

implementation

{ TItemDao }

class procedure TItemVistoriaDao.Consolidate(var AItemVistoria: TItemVistoria;
  AQuery: TFDQuery);
var
  DaoVistoria: TVistoriaDao;
  DaoItem: TItemDao;
begin
  DaoVistoria := TVistoriaDao.Create;
  DaoItem := TItemDao.Create;

  with AQuery do
  begin
    AItemVistoria.IdItemVistoria := FindField('idItemVistoria').AsInteger;
    AItemVistoria.Vistoria := DaoVistoria.
      Read(FindField('idvistoria').AsInteger);
    AItemVistoria.Item := DaoItem.Read(FindField('iditem').AsInteger);
    AItemVistoria.Observacao := FindField('observacao').AsString;
  end;
end;

class function TItemVistoriaDao.Create(AItemVistoria: TItemVistoria)
  : TItemVistoria;
var
  Con: TFDConnection;
  QueryString: string;
  Id: Integer;
begin
  Con := TConnection.GetConnection;
  QueryString :=
    Format('INSERT INTO aula.movitemvistoria (idvistoria, iditem, observacao) '
    + 'values (''%d'', ''%d'', ''%s'') RETURNING idItemVistoria',
    [AItemVistoria.Vistoria.Idvistoria, AItemVistoria.Item.IdItem,
    AItemVistoria.Observacao]);

  AItemVistoria.IdItemVistoria := Con.ExecSQLScalar(QueryString);
  Result := AItemVistoria;

end;

class procedure TItemVistoriaDao.Delete(AIdItemVistoria: Integer);
var
  Con: TFDConnection;
  QueryString: string;
begin
  Con := TConnection.GetConnection;

  QueryString :=
    Format('DELETE FROM aula.movitemvistoria WHERE iditemvistoria = %d', [AIdItemVistoria]);
  Con.ExecSQL(QueryString);
end;

class function TItemVistoriaDao.Read(AIdItemVistoria: Integer): TItemVistoria;
var
  Query: TFDQuery;
  QueryString: string;
begin
  Result := TItemVistoria.Create;
  Query := TFDQuery.Create(nil);

  QueryString :=
    Format('SELECT * FROM aula.movitemvistoria WHERE iditemvistoria = %d', [AIdItemVistoria]);

  with Query do
  begin
    Connection := TConnection.GetConnection;
    Close;
    SQL.Clear;
    SQL.Add(QueryString);
    Open;

    if IsEmpty then
      Raise Exception.Create('Not Found.');

    First;
    Consolidate(Result, Query);
  end;
end;

class function TItemVistoriaDao.Save(AItemVistoria: TItemVistoria)
  : TItemVistoria;
begin
  if (AItemVistoria.IdItemVistoria = 0) then
  begin
    Exit(Create(AItemVistoria));
  end;
  Exit(Update(AItemVistoria));
end;

class function TItemVistoriaDao.Update(AItemVistoria: TItemVistoria)
  : TItemVistoria;
var
  Con: TFDConnection;
  QueryString: string;
begin
  Con := TConnection.GetConnection;
  QueryString := Format('UPDATE aula.movitemvistoria SET idvistoria = ''%d'', '
    + ' iditem = ''%d'', observacao = ''%s'' WHERE iditemvistoria = ''%d'' ',
    [AItemVistoria.Vistoria.IdVistoria, AItemVistoria.Item.IdItem,
    AItemVistoria.Observacao, AItemVistoria.IdItemVistoria]);

  Con.ExecSQL(QueryString);
  Result := AItemVistoria;
end;

end.
