unit Form.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmMain = class(TForm)
    mmMenu: TMainMenu;
    Cadastros1: TMenuItem;
    Financeiro1: TMenuItem;
    Vistoria1: TMenuItem;
    Pessoa1: TMenuItem;
    Imvel1: TMenuItem;
    Item1: TMenuItem;
    procedure Pessoa1Click(Sender: TObject);
    procedure Item1Click(Sender: TObject);
    procedure Imvel1Click(Sender: TObject);
    procedure Vistoria1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}
uses
  Form.User, Form.Pessoa, Form.Item, Form.Imovel,Form.Vistoria;





{ TfrmMain }

procedure TfrmMain.Imvel1Click(Sender: TObject);
begin
if not Assigned(frmImovel) then
    Application.CreateForm(TfrmImovel, frmImovel);

  with frmImovel do
  begin
      try
        ShowModal;
      finally
        Free;
        frmImovel := nil;
      end;
  end;
end;

procedure TfrmMain.Item1Click(Sender: TObject);
begin
if not Assigned(frmItem) then
    Application.CreateForm(TfrmItem, frmItem);

  with frmItem do
  begin
      try
        ShowModal;
      finally
        Free;
        frmItem := nil;
      end;
  end;
end;

procedure TfrmMain.Pessoa1Click(Sender: TObject);
begin
if not Assigned(frmPessoa) then
    Application.CreateForm(TfrmPessoa, frmPessoa);

  with frmPessoa do
  begin
      try
        ShowModal;
      finally
        Free;
        frmPessoa := nil;
      end;
  end;
end;


procedure TfrmMain.Vistoria1Click(Sender: TObject);
begin
  if not Assigned(frmVistoria) then
    Application.CreateForm(TfrmVistoria, frmVistoria);

  with frmVistoria do
  begin
      try
        ShowModal;
      finally
        Free;
        frmVistoria := nil;
      end;
  end;
end;

end.



