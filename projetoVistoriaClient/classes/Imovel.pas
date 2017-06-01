unit Imovel;

interface

uses
BaseObject;

type

  TImovel = class(TBaseObject)
    private
      FIdImovel : Integer;
      FQuadra : string;
      FLote : string;
      FMetragemTerreno : Double;
      FMetragemImovel : Double;
      FLogradouro : string;
      FBairro : string;
      FComplemento : string;
      FNumero : Integer;
      FCep : string;

    public
      property IdImovel: Integer read FIdImovel write FIdImovel;
      property Quadra: string read FQuadra write FQuadra;
      property Lote: string read Flote write Flote;
      property MetragemTerreno : Double read FMetragemTerreno write FMetragemTerreno;
      property MetragemImovel: Double read FmetragemImovel write FmetragemImovel;
      property Logradouro: string read Flogradouro write Flogradouro;
      property Bairro: string read Fbairro write Fbairro;
      property Complemento: string read Fcomplemento write Fcomplemento;
      property Numero: Integer read Fnumero write Fnumero;
      property Cep: string read Fcep write Fcep;
  end;

implementation

end.
