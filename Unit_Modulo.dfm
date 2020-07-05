object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 571
  Width = 767
  object IBDatabase_Banco: TIBDatabase
    Connected = True
    DatabaseName = 
      'C:\Users\Igor\Documents\RAD Studio\Projects\Fazenda\dados\FAZEND' +
      'A.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 40
    Top = 8
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase_Banco
    Left = 160
    Top = 8
  end
  object IBDataSet_Status: TIBDataSet
    Database = IBDatabase_Banco
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from status'
      'where'
      '  COD_STATUS = :COD_STATUS')
    InsertSQL.Strings = (
      'insert into status'
      '  (STATUS)'
      'values'
      '  (:STATUS)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_STATUS,'
      '  STATUS'
      'from status '
      'where'
      '  COD_STATUS = :COD_STATUS')
    SelectSQL.Strings = (
      'select * from status ')
    ModifySQL.Strings = (
      'update status'
      'set'
      '  STATUS = :STATUS'
      'where'
      '  COD_STATUS = :COD_STATUS')
    Left = 40
    Top = 72
    object IBDataSet_StatusCOD_STATUS: TIntegerField
      FieldName = 'COD_STATUS'
      Origin = '"STATUS"."COD_STATUS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSet_StatusSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"STATUS"."STATUS"'
    end
  end
  object DataSource_Status: TDataSource
    DataSet = IBDataSet_Status
    Left = 160
    Top = 72
  end
  object IBDataSet_TipoAnimais: TIBDataSet
    Database = IBDatabase_Banco
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from tipo_animais'
      'where'
      '  COD_TIPO = :COD_TIPO')
    InsertSQL.Strings = (
      'insert into tipo_animais'
      '  (DESCRICAO)'
      'values'
      '  (:DESCRICAO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_TIPO,'
      '  DESCRICAO'
      'from tipo_animais '
      'where'
      '  COD_TIPO = :COD_TIPO')
    SelectSQL.Strings = (
      'select * from tipo_animais')
    ModifySQL.Strings = (
      'update tipo_animais'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  COD_TIPO = :COD_TIPO')
    Left = 32
    Top = 144
    object IBDataSet_TipoAnimaisCOD_TIPO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_TIPO'
      Origin = '"TIPO_ANIMAIS"."COD_TIPO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSet_TipoAnimaisDESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"TIPO_ANIMAIS"."DESCRICAO"'
    end
  end
  object DataSource_TipoAnimais: TDataSource
    DataSet = IBDataSet_TipoAnimais
    Left = 160
    Top = 144
  end
  object IBDataSet_RacaAnimais: TIBDataSet
    Database = IBDatabase_Banco
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from raca_animais'
      'where'
      '  COD_RACA = :COD_RACA')
    InsertSQL.Strings = (
      'insert into raca_animais'
      '  (COD_TIPO, RACA, TIPO_DESCRICAO)'
      'values'
      '  (:COD_TIPO, :RACA, :TIPO_DESCRICAO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_RACA,'
      '  RACA,'
      '  COD_TIPO,'
      '  TIPO_DESCRICAO'
      'from raca_animais '
      'where'
      '  COD_RACA = :COD_RACA')
    SelectSQL.Strings = (
      'select * from raca_animais')
    ModifySQL.Strings = (
      'update raca_animais'
      'set'
      '  COD_TIPO = :COD_TIPO,'
      '  RACA = :RACA,'
      '  TIPO_DESCRICAO = :TIPO_DESCRICAO'
      'where'
      '  COD_RACA = :COD_RACA')
    Left = 32
    Top = 208
    object IBDataSet_RacaAnimaisCOD_RACA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_RACA'
      Origin = '"RACA_ANIMAIS"."COD_RACA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSet_RacaAnimaisRACA: TIBStringField
      DisplayLabel = 'Ra'#231'a'
      FieldName = 'RACA'
      Origin = '"RACA_ANIMAIS"."RACA"'
    end
    object IBDataSet_RacaAnimaisCOD_TIPO: TIntegerField
      DisplayLabel = 'C'#243'd. Tipo'
      FieldName = 'COD_TIPO'
      Origin = '"RACA_ANIMAIS"."COD_TIPO"'
      Required = True
    end
    object IBDataSet_RacaAnimaisTIPO_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TIPO_DESCRICAO'
      Origin = '"RACA_ANIMAIS"."TIPO_DESCRICAO"'
    end
  end
  object DataSource_RacaAnimais: TDataSource
    DataSet = IBDataSet_RacaAnimais
    Left = 160
    Top = 208
  end
  object IBDataSet_StatusPastos: TIBDataSet
    Database = IBDatabase_Banco
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from status_pastos'
      'where'
      '  COD_STATUS = :COD_STATUS')
    InsertSQL.Strings = (
      'insert into status_pastos'
      '  (STATUS)'
      'values'
      '  (:STATUS)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_STATUS,'
      '  STATUS'
      'from status_pastos '
      'where'
      '  COD_STATUS = :COD_STATUS')
    SelectSQL.Strings = (
      'select * from status_pastos')
    ModifySQL.Strings = (
      'update status_pastos'
      'set'
      '  STATUS = :STATUS'
      'where'
      '  COD_STATUS = :COD_STATUS')
    Left = 32
    Top = 272
    object IBDataSet_StatusPastosCOD_STATUS: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_STATUS'
      Origin = '"STATUS_PASTOS"."COD_STATUS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSet_StatusPastosSTATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = '"STATUS_PASTOS"."STATUS"'
    end
  end
  object DataSource_StatusPastos: TDataSource
    DataSet = IBDataSet_StatusPastos
    Left = 160
    Top = 272
  end
  object IBDataSet_Pastos: TIBDataSet
    Database = IBDatabase_Banco
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from pastos'
      'where'
      '  COD_PASTO = :COD_PASTO')
    InsertSQL.Strings = (
      'insert into pastos'
      
        '  (AREA, COD_STATUS, DTCADASTRO, DTULTIMAALTERACAO, PASTO, STATU' +
        'S)'
      'values'
      
        '  (:AREA, :COD_STATUS, :DTCADASTRO, :DTULTIMAALTERACAO, :PASTO, ' +
        ':STATUS)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_PASTO,'
      '  PASTO,'
      '  COD_STATUS,'
      '  STATUS,'
      '  AREA,'
      '  DTCADASTRO,'
      '  DTULTIMAALTERACAO'
      'from pastos '
      'where'
      '  COD_PASTO = :COD_PASTO')
    SelectSQL.Strings = (
      'select * from pastos')
    ModifySQL.Strings = (
      'update pastos'
      'set'
      '  AREA = :AREA,'
      '  COD_STATUS = :COD_STATUS,'
      '  DTCADASTRO = :DTCADASTRO,'
      '  DTULTIMAALTERACAO = :DTULTIMAALTERACAO,'
      '  PASTO = :PASTO,'
      '  STATUS = :STATUS'
      'where'
      '  COD_PASTO = :COD_PASTO')
    Left = 32
    Top = 336
    object IBDataSet_PastosCOD_PASTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_PASTO'
      Origin = '"PASTOS"."COD_PASTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSet_PastosPASTO: TIBStringField
      DisplayLabel = 'Pasto'
      FieldName = 'PASTO'
      Origin = '"PASTOS"."PASTO"'
    end
    object IBDataSet_PastosCOD_STATUS: TIntegerField
      DisplayLabel = 'C'#243'd. Status'
      FieldName = 'COD_STATUS'
      Origin = '"PASTOS"."COD_STATUS"'
      Required = True
    end
    object IBDataSet_PastosSTATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = '"PASTOS"."STATUS"'
    end
    object IBDataSet_PastosAREA: TIntegerField
      DisplayLabel = #193'rea'
      FieldName = 'AREA'
      Origin = '"PASTOS"."AREA"'
    end
    object IBDataSet_PastosDTCADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DTCADASTRO'
      Origin = '"PASTOS"."DTCADASTRO"'
    end
    object IBDataSet_PastosDTULTIMAALTERACAO: TDateField
      DisplayLabel = 'Data Ultima Altera'#231#227'o'
      FieldName = 'DTULTIMAALTERACAO'
      Origin = '"PASTOS"."DTULTIMAALTERACAO"'
    end
  end
  object DataSource_Pastos: TDataSource
    DataSet = IBDataSet_Pastos
    Left = 160
    Top = 336
  end
end
