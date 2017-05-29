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
    end;


implementation

end.
