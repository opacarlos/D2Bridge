object FrmClienteCad: TFrmClienteCad
  Left = 0
  Top = 0
  Caption = 'FrmClienteCad'
  ClientHeight = 167
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object lblNome: TLabel
    Left = 32
    Top = 42
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object edtNome: TEdit
    Left = 77
    Top = 36
    Width = 265
    Height = 23
    TabOrder = 0
  end
  object btnSalvar: TButton
    Left = 103
    Top = 101
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 1
    OnClick = btnSalvarClick
  end
  object btnCancelar: TButton
    Left = 199
    Top = 101
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = btnCancelarClick
  end
end
