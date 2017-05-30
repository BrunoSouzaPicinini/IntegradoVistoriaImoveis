unit Dao.Pessoa;

interface
uses
System.Generics.Collections, DBXJSON, DBXJSONReflect, BD.Connection,
  FireDAC.Comp.Client, SysUtils, Pessoa, FireDAC.Phys.Intf, FireDAC.DApt;

type
  TPessoaDao = class
  private
    class function Create (APessoa: TPessoa): TPessoa;
    class function Update (APessoa: TPessoa): TPessoa;
    class procedure Consolidate (var APessoa: TPessoa; AQuery : TFDQuery);
  public
    class function Read(): TObjectList<TPessoa>; overload;
    class function Read(AIdPessoa: Integer) : TPessoa; overload;
    class function Save(APessoa : TPessoa): TPessoa;
    class procedure Delete (AIdPessoa: Integer);
  end;

implementation

{ TPessoaDao }


{ TPessoaDao }

class procedure TPessoaDao.Consolidate(var APessoa: TPessoa; AQuery: TFDQuery);
begin
  with AQuery do
  begin
    APessoa.IdPessoa := FindField('idpessoa').AsInteger;
    APessoa.Nome := FindField('nome').AsString;
  end;
end;

class function TPessoaDao.Create(APessoa: TPessoa): TPessoa;
var
  Con : TFDConnection;
  QueryString : string;
  IdPessoa: Integer;
begin
  Con := TConnection.GetConnection;

  QueryString := Format(
  'INSERT INTO aula.cadpessoa (nome) VALUES ( ''%s'' ) RETURNING idpessoa',
  [APessoa.Nome]);

end;

class procedure TPessoaDao.Delete(AIdPessoa: Integer);
var
  Con : TFDConnection;
  QueryString: string;
begin
  Con := TConnection.GetConnection;
  QueryString := Format('DELETE FROM aula.cadpessoa WHERE idpessoa = %d ',
  [AidPessoa]);

end;

class function TPessoaDao.Read(AIdPessoa: Integer): TPessoa;
var
  Query : TFDQuery;
  QueryString : string;
begin
  Result := TPessoa.Create;
  Query := TFDQuery.Create(nil);

  QueryString := Format('SELECT * FROM aula.cadpessoa WHERE idpessoa = %d',
  [AIdPessoa]
  );
  with Query do
  begin
    Connection := TConnection.GetConnection;
    Close;
    SQL.Clear;
    SQL.Add(QueryString);
    Open;

    if IsEmpty then
      Raise Exception.Create('Not Found');

    First;
    Consolidate(Result, Query);

  end;
end;

class function TPessoaDao.Read: TObjectList<TPessoa>;
var
  Query: TFDQuery;
  QueryString : string;
  Pessoa : TPessoa;
begin
  Result := TObjectList<TPessoa>.Create;
  Query := TFDQuery.Create(nil);

  QueryString := 'SELECT * FROM aula.pessoa';

  with Query do
  begin
    Connection := TConnection.GetConnection;
    Close;
    SQL.Clear;
    SQL.Add(QueryString);
    Open;

    if isEmpty then
      raise Exception.Create('Not found');

    First;

    while not eof do
    begin
      Pessoa := TPessoa.Create;
      Consolidate(Pessoa, Query);
      Result.Add(Pessoa);
      Next;
    end;
  end;
end;

class function TPessoaDao.Save(APessoa: TPessoa): TPessoa;
begin
  if (APessoa.IdPessoa = 0) then
  begin
    Exit(Create(APessoa));
  end;
    Exit(Update(APessoa));
end;

class function TPessoaDao.Update(APessoa: TPessoa): TPessoa;
var
  Con : TFDConnection;
  QueryString: string;
begin
  Con := TConnection.GetConnection;
  QueryString := Format(
  'UPDATE aula.cadpessoa SET nome = ''%s'' WHERE idpessoa = %d',
  [APessoa.Nome]);

  Con.ExecSQL(QueryString);
  Result := APessoa;
end;

end.
