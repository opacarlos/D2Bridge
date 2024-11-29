object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'FrmPrincipal'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 176
    Top = 152
    object Module11: TMenuItem
      Caption = 'Dashboard'
    end
    object AppModule21: TMenuItem
      Caption = 'Cadastros'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
      object Funcionrios1: TMenuItem
        Caption = 'Funcion'#225'rios'
      end
    end
    object CoreModules1: TMenuItem
      Caption = 'Relat'#243'rios'
      object CoreModule11: TMenuItem
        Caption = 'Clientes'
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
    end
  end
end
