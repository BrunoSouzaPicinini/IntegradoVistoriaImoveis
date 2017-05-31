unit Bo.Imovel;

interface
uses
Imovel;

type
TImovelBo = class
  private
  public
    class function Create(const AQuadra, ALote,ALogradouro,ABairro,AComplemento,ACep: string;
    AMetragemTerreno,AMetragemImovel : Double; Anumero: Integer ): TImovel;
    class procedure Update(var AImovel: TImovel; const AQuadra, ALote,ALogradouro,ABairro,AComplemento,ACep: string;
    const AMetragemTerreno,AMetragemImovel : Double;const Anumero: Integer );
end;
implementation

{ TImovelBo }



class function TImovelBo.Create(const AQuadra, ALote, ALogradouro, ABairro,
  AComplemento, ACep: string; AMetragemTerreno, AMetragemImovel: Double;
  Anumero: Integer): TImovel;
begin
  Result := TImovel.Create;
  Result.IdImovel := 0;
  Result.Quadra := AQuadra;
  Result.Lote := ALote;
  Result.MetragemTerreno := AMetragemTerreno;
  Result.MetragemImovel := AMetragemImovel;
  Result.Logradouro := ALogradouro;
  Result.Bairro := ABairro;
  Result.Complemento := AComplemento;
  Result.Numero := ANumero;
  Result.Cep := ACep;
end;

class procedure TImovelBo.Update(var AImovel: TImovel; const AQuadra, ALote,
  ALogradouro, ABairro, AComplemento, ACep: string;const AMetragemTerreno,
  AMetragemImovel: Double;const Anumero: Integer);
begin
  AImovel.Quadra := AQuadra;
  AImovel.Lote := ALote;
  AImovel.MetragemTerreno := AMetragemTerreno;
  AImovel.MetragemImovel := AMetragemImovel;
  AImovel.Logradouro := ALogradouro;
  AImovel.Bairro := ABairro;
  AImovel.Complemento := AComplemento;
  AImovel.Numero := ANumero;
  AImovel.Cep := ACep;
end;

end.
