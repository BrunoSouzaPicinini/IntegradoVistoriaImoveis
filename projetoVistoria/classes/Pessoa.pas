unit Pessoa;

interface

uses
  BaseObject;

type
  TPessoa = class (TBaseObject)
  private
    FIdPessoa: Integer;
    FNome: string;
  public
    property IdPessoa : Integer read FIdPessoa write FIdPessoa;
    property Nome : string read FNome write FNome;
  end;
implementation

end.
