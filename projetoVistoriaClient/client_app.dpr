program client_app;

uses
  Vcl.Forms,
  Form.Main in 'Form.Main.pas' {frmMain},
  Form.User in 'Form.User.pas' {frmUser};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
