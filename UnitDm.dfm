object Dm: TDm
  Height = 480
  Width = 640
  object Conn: TFDConnection
    Params.Strings = (
      
        'Database=C:\Delphi 11\Projects\CRM\Fontes 99 Coders\DB\CLIENTES.' +
        'FDB'
      'User_Name=SYSDBA'
      'Password=sysdba'
      'Port=3050'
      'Server=localhost'
      'Protocol=TCPIP'
      'DriverID=FB')
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files\Firebird\Firebird_3_0\WOW64\fbclient.dll'
    Left = 144
    Top = 24
  end
  object qryCliente: TFDQuery
    Connection = Conn
    SQL.Strings = (
      'select * from tab_cliente')
    Left = 32
    Top = 96
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
  object dsCliente: TDataSource
    DataSet = qryCliente
    Left = 144
    Top = 96
  end
end
