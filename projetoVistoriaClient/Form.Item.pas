unit Form.Item;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TfrmItem = class(TForm)
    pgcItem: TPageControl;
    tsCadastro: TTabSheet;
    Consulta: TTabSheet;
    grdItem: TDBGrid;
    cdsItem: TClientDataSet;
    dsItem: TDataSource;
    intgrfldItemIdItem: TIntegerField;
    strngfldItemDescricao: TStringField;
    lblCodigo: TLabel;
    edtCodigo: TEdit;
    lblNome: TLabel;
    edtNome: TEdit;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnGravar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmItem: TfrmItem;

implementation

{$R *.dfm}


end.
