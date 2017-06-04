unit Vistoria;

interface

uses
 BaseObject, Pessoa, Imovel;

 type
    TVistoria = class(TBaseObject)
    private
      FIdVistoria : Integer;
      FData : string;
      FPessoa : TPessoa;
      FImovel : TImovel;
      FObservacao : string;
    public
      property IdVistoria: Integer read FIdVistoria write FIdVistoria;
      property Data: string read FData write FData;
      property Pessoa: TPessoa read FPessoa write FPessoa;
      property Imovel: TImovel read FImovel write FImovel;
      property Observacao: string read FObservacao write FObservacao;
      constructor Create;
    end;


implementation

{ TVistoria }

constructor TVistoria.Create;
begin
  inherited;
  FPessoa := TPessoa.Create;
  FImovel := TImovel.Create;
end;

end.
