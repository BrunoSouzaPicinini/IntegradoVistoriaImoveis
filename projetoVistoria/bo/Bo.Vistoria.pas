unit Bo.Vistoria;

interface

uses Vistoria, Dao.Pessoa, Dao.Imovel, SysUtils, DateUtils, System.Classes,
  System.Generics.Collections;

type
  TVistoriaBo = class
  private
  public
    class function Create(const AIdImovel, AIdPessoa: integer;
      const AData, AObservacao: string): TVistoria;
    //
    class function Update(var AVistoria: TVistoria;
      const AIdImovel, AIdPessoa: integer; AData, AObservacao: string)
      : TVistoria;
  end;

implementation

{ TVistoriaBo }

class function TVistoriaBo.Create(const AIdImovel, AIdPessoa: integer;
  const AData, AObservacao: string): TVistoria;
var
  DaoImovel: TImovelDao;
  DaoPessoa: TPessoaDao;
begin
  Result := TVistoria.Create;

  Result.IdVistoria := 0;
  Result.Imovel := DaoImovel.Read(AIdImovel);
  Result.Pessoa := DaoPessoa.Read(AIdPessoa);
  Result.data := AData;
  Result.observacao := AObservacao;
end;

class function TVistoriaBo.Update(var AVistoria: TVistoria;
  const AIdImovel, AIdPessoa: integer; AData, AObservacao: string): TVistoria;
var
  DaoImovel: TImovelDao;
  DaoPessoa: TPessoaDao;
begin
  DaoImovel := TImovelDao.Create;
  DaoPessoa := TPessoaDao.Create;

  AVistoria.Pessoa := DaoPessoa.Read(AIdPessoa);
  AVistoria.Imovel := DaoImovel.Read(AIdImovel);
  AVistoria.data := AData;
  AVistoria.observacao := AObservacao;

  Result := AVistoria;
end;

end.
