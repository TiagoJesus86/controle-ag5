unit ServerModule;

interface

uses
  System.SysUtils, System.Classes, DSProviderDataModuleAdapter ; //DSServer;

type
  TServerMethods1 = class(TDSServerModule)
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
  end;

implementation

{$R *.dfm}

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

end.




