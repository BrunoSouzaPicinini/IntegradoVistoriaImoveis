unit Form.Pessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls;

type
  TfrmPessoa = class(TForm)
    pgcPessoa: TPageControl;
    tsCadastro: TTabSheet;
    Consulta: TTabSheet;
    grdPessoa: TDBGrid;
    dsPessoa: TDataSource;
    cdsPessoa: TClientDataSet;
    intgrfldPessoaIdPessoa: TIntegerField;
    cdsPessoaNome: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPessoa: TfrmPessoa;

implementation

{$R *.dfm}

end.
