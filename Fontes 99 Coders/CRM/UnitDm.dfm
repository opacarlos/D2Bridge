object Dm: TDm
  Height = 413
  Width = 510
  object Conn: TFDConnection
    Params.Strings = (
      
        'Database=D:\99Coders\Posts\417 - Programa'#231#227'o web com Delphi\Font' +
        'es\DB\CLIENTES.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 136
    Top = 56
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_3_0\fbclient.dll'
    Left = 248
    Top = 64
  end
  object qryCliente: TFDQuery
    Connection = Conn
    SQL.Strings = (
      'select * from tab_cliente')
    Left = 136
    Top = 224
    object qryClienteID_CLIENTE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClienteNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
  end
  object DsCliente: TDataSource
    DataSet = qryCliente
    Left = 248
    Top = 224
  end
end
