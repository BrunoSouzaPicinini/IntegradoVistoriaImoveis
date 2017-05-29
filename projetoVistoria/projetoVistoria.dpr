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
  Bo.Pessoa in 'bo\Bo.Pessoa.pas',
  Pessoa in 'classes\Pessoa.pas',
  BaseObject in 'classes\BaseObject.pas',
  HttpStatusCode in 'classes\HttpStatusCode.pas',
  Item in 'classes\Item.pas',
  BD.Connection in 'structure\BD.Connection.pas' {DataModule1: TDataModule},
  Vistoria in 'classes\Vistoria.pas',
  Imovel in 'classes\Imovel.pas',
  ItemVistoria in 'classes\ItemVistoria.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
