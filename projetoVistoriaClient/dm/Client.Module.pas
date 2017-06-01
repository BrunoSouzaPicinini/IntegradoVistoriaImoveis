unit Client.Module;

interface

uses
  System.SysUtils, System.Classes, IPPeerClient, Datasnap.DSClientRest;

type
  TClientModule = class(TDataModule)
    dsConnection: TDSRestConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientModule: TClientModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
