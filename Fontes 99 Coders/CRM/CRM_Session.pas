unit CRM_Session;

interface

uses
  System.SysUtils, System.Classes,
  Prism.SessionBase;

type
  TCRMSession = class(TPrismSessionBase)
  private

  public
   constructor Create(APrismSession: TPrismSession); override;  //OnNewSession
   destructor Destroy; override; //OnCloseSession
  end;


implementation

Uses
  D2Bridge.Instance,
  CRMWebApp, UnitDm;

{$R *.dfm}

constructor TCRMSession.Create(APrismSession: TPrismSession); //OnNewSession
begin
 inherited;

 if Dm = nil then
  TDm.CreateInstance;

end;

destructor TCRMSession.Destroy; //OnCloseSession
begin
 //Close ALL DataBase connection
 //Ex: Dm.DBConnection.Close;

 inherited;
end;

end.

