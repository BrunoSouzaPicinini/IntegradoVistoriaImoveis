unit Bo.Pessoa;

interface
uses
Pessoa;

type
TPessoaBo = class
   private
   public
    class function Create(const ANome: string): TPessoa;
    class procedure Update(var APessoa: TPessoa; const ANome: string);

end;
implementation

{ TPessoaBo }

class function TPessoaBo.Create(const ANome: string): TPessoa;
begin
  Result := TPessoa.Create;

  Result.Idpessoa := 0;
  Result.Nome := ANome;
end;

class procedure TPessoaBo.Update(var APessoa: TPessoa; const ANome: string);
begin
  APessoa.Nome := ANome;
end;

end.
