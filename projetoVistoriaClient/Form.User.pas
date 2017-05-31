unit Form.User;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls;

type
  TfrmUser = class(TForm)
    pgcUser: TPageControl;
    tsCadastro: TTabSheet;
    tsConsulta: TTabSheet;
    grdUser: TDBGrid;
    dsUser: TDataSource;
    cdsUser: TClientDataSet;
    intgrfldUserIDUser: TIntegerField;
    strngfldUserLOGIN: TStringField;
    strngfldUserPASS: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUser: TfrmUser;

implementation

{$R *.dfm}

end.
