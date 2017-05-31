unit Dao.Vistoria;

interface

uses
  System.Generics.Collections, system.json, DBXJSONReflect, BD.Connection,
  FireDAC.Comp.Client, SysUtils, Vistoria, Imovel, Pessoa, Dao.Pessoa,
  Dao.Imovel, FireDAC.Phys.Intf,
  FireDAC.DApt;

type
  TVistoriaDao = class
  private
    class function Create(AVistoria: TVistoria): TVistoria;
    class function Update(AVistoria: TVistoria): TVistoria;
    class procedure Consolidate(var AVistoria: TVistoria; AQuery: TFDQuery);

  public
    class function Save(AVistoria: TVistoria): TVistoria;
    class function Read(AIdVistoria: Integer): TVistoria; overload;
    class procedure Delete(AIdVistoria: Integer);
    // class procedure Delete(AId: Integer);
  end;

implementation

{ TItemDao }

class procedure TVistoriaDao.Consolidate(var AVistoria: TVistoria;
  AQuery: TFDQuery);
var
  DaoImovel: TImovelDao;
  DaoPessoa: TPessoaDao;
begin
  DaoImovel := TImovelDao.Create;
  DaoPessoa := TPessoaDao.Create;

  with AQuery do
  begin
    AVistoria.IdVistoria := FindField('idvistoria').AsInteger;
    AVistoria.Imovel := DaoImovel.Read(FindField('idimovel').AsInteger);
    AVistoria.Pessoa := DaoPessoa.Read(FindField('idpessoa').AsInteger);
    AVistoria.Data := FindField('data').AsString;
    AVistoria.Observacao := FindField('observacao').AsString;
  end;
end;

class function TVistoriaDao.Create(AVistoria: TVistoria): TVistoria;
var
  Con: TFDConnection;
  QueryString: string;
  Id: Integer;
begin
  Con := TConnection.GetConnection;
  QueryString :=
    Format('INSERT INTO aula.movvistoria (idimovel, idpessoa, data, observacao)'
    + ' values (''%d'', ''%d'', ''%s'', ''%s'')' + ' RETURNING id',
    [AVistoria.Imovel.IdImovel, AVistoria.Pessoa.IdPessoa, AVistoria.Data,
    AVistoria.Observacao]);

  AVistoria.IdVistoria := Con.ExecSQLScalar(QueryString);
  Result := AVistoria;
end;

class procedure TVistoriaDao.Delete(AIdVistoria: Integer);
var
  Con: TFDConnection;
  QueryString: string;
begin
  Con := TConnection.GetConnection;

  QueryString := Format('DELETE FROM aula.movvistoria WHERE idvistoria = %d', [AIdVistoria]);
  Con.ExecSQL(QueryString);
end;

class function TVistoriaDao.Read(AIdVistoria: Integer): TVistoria;
var
  Query: TFDQuery;
  QueryString: string;
begin
  Result := TVistoria.Create;
  Query := TFDQuery.Create(nil);

  QueryString := Format('SELECT * FROM aula.movvistoria WHERE idvistoria = %d', [AIdVistoria]);

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

class function TVistoriaDao.Save(AVistoria: TVistoria): TVistoria;
begin
  if (AVistoria.IdVistoria = 0) then
  begin
    Exit(Create(AVistoria));
  end;
  Exit(Update(AVistoria));
end;

class function TVistoriaDao.Update(AVistoria: TVistoria): TVistoria;
var
  Con: TFDConnection;
  QueryString: string;
begin
  Con := TConnection.GetConnection;
  QueryString :=
    Format('UPDATE aula.movvistoria SET data = ''%s'', observacao = ''%s'', ' +
    'idimovel = ''%d'', idpessoa = ''%d'' WHERE idvistoria = ''%d''',
    [AVistoria.Data, AVistoria.Observacao, AVistoria.Imovel.IdImovel,
    AVistoria.Pessoa.IdPessoa, AVistoria.IdVistoria]);

  Con.ExecSQL(QueryString);
  Result := AVistoria;
end;

end.
