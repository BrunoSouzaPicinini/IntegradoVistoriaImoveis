program projetoVistoria;
{$APPTYPE GUI}

{$R *.dres}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  Form.App in 'structure\Form.App.pas' {Form1},
  Methods.Teste in 'servermethods\Methods.Teste.pas' {smTeste: TDSServerModule},
  Web.Module in 'structure\Web.Module.pas' {WebModule1: TWebModule},
  Bo.Pessoa in 'bo\Bo.Pessoa.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
