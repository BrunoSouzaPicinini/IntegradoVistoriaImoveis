unit Item;

interface

uses
  BaseObject;

type
  TItem = class(TBaseObject)
  private
    FIdItem : Integer;
    FDescricao : string;
  public
    property IdItem:Integer  read FIdItem write FIdItem;
    property Descricao:string  read FDescricao write FDescricao;

  end;

implementation

end.
