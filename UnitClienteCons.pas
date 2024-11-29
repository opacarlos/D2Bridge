unit UnitClienteCons;

{ Copyright 2024 / 2025 D2Bridge Framework by Talis Jonatas Gomes }

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  D2Bridge.Forms, UnitPrincipal, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrmClienteCons = class(TFrmPrincipal)
    Panel1: TPanel;
    lbPesquisar: TLabel;
    edPesquisar: TEdit;
    btnPesquisar: TButton;
    btNovo: TButton;
    btEditar: TButton;
    btExcluir: TButton;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
  private
    procedure ListarClientes;
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure ExportD2Bridge; override;
    procedure InitControlsD2Bridge(const PrismControl: TPrismControl); override;
    procedure RenderD2Bridge(const PrismControl: TPrismControl; var HTMLControl: string); override;
  end;

function FrmClienteCons:TFrmClienteCons;

implementation

Uses
  CRMWebApp, UnitDm;

{$R *.dfm}

function FrmClienteCons:TFrmClienteCons;
begin
  result:= TFrmClienteCons(TFrmClienteCons.GetInstance);
end;

procedure TFrmClienteCons.ExportD2Bridge;
begin
  inherited;

  Title:= 'My D2Bridge Form';

  //TemplateClassForm:= TD2BridgeFormTemplate;
  D2Bridge.FrameworkExportType.TemplateMasterHTMLFile:= '';
  D2Bridge.FrameworkExportType.TemplatePageHTMLFile := '';

  with D2Bridge.Items.add do
  begin
   {Yours Controls}
  end;

end;

procedure TFrmClienteCons.ListarClientes;
begin
  Dm.ListarClientes(edPesquisar.Text);
end;

procedure TFrmClienteCons.FormShow(Sender: TObject);
begin
  ListarClientes;
end;

procedure TFrmClienteCons.InitControlsD2Bridge(const PrismControl: TPrismControl);
begin
 inherited;

 //Change Init Property of Prism Controls
 {
  if PrismControl.VCLComponent = Edit1 then
   PrismControl.AsEdit.DataType:= TPrismFieldType.PrismFieldTypeInteger;

  if PrismControl.IsDBGrid then
  begin
   PrismControl.AsDBGrid.RecordsPerPage:= 10;
   PrismControl.AsDBGrid.MaxRecords:= 2000;
  end;
 }
end;

procedure TFrmClienteCons.RenderD2Bridge(const PrismControl: TPrismControl; var HTMLControl: string);
begin
 inherited;

 //Intercept HTML
 {
  if PrismControl.VCLComponent = Edit1 then
  begin
   HTMLControl:= '</>';
  end;
 }
end;

end.