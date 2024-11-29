object FrmClienteCons: TFrmClienteCons
  Left = 0
  Top = 0
  Caption = 'FrmClienteCons'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 81
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 624
    object lbPesquisar: TLabel
      Left = 40
      Top = 25
      Width = 53
      Height = 15
      Caption = 'Pesquisar:'
    end
    object edPesquisar: TEdit
      Left = 99
      Top = 22
      Width = 121
      Height = 23
      TabOrder = 0
    end
    object btnPesquisar: TButton
      Left = 264
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 1
    end
    object btNovo: TButton
      Left = 345
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 2
    end
    object btEditar: TButton
      Left = 426
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 3
    end
    object btExcluir: TButton
      Left = 507
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 81
    Width = 628
    Height = 361
    Align = alClient
    DataSource = Dm.dsCliente
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end>
  end
end
