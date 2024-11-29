unit UnitDm;

{ Copyright 2024 / 2025 D2Bridge Framework by Talis Jonatas Gomes }

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDm = class(TDataModule)
    Conn: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    qryCliente: TFDQuery;
    dsCliente: TDataSource;
    qryClienteID_CLIENTE: TIntegerField;
    qryClienteNOME: TStringField;
  private
    { Private declarations }
  public
    procedure ListarClientes(pesquisar: String); // Parei aqui 01:05:50
    class procedure CreateInstance;
  end;

function Dm:TDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

Uses
  D2Bridge.Instance, CRMWebApp;

{$R *.dfm}

class procedure TDm.CreateInstance;
begin
 D2BridgeInstance.CreateInstance(self);
end;

function Dm:TDm;
begin
 result:= TDm(D2BridgeInstance.GetInstance(TDm));
end;

procedure TDm.ListarClientes(pesquisar: String);
begin

end;

end.