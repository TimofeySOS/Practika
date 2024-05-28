object fDM: TfDM
  OldCreateOrder = False
  Height = 404
  Width = 304
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=E:\'#1055#1088 +
      #1072#1082#1090#1080#1082#1072' ('#1044#1074#1086#1088#1103#1085#1086#1074#1072')\prodshopdb.mdb;Mode=Share Deny None;Persist S' +
      'ecurity Info=False;Jet OLEDB:System database="";Jet OLEDB:Regist' +
      'ry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=' +
      '5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bul' +
      'k Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Datab' +
      'ase Password="";Jet OLEDB:Create System Database=False;Jet OLEDB' +
      ':Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=F' +
      'alse;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SF' +
      'P=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 104
    Top = 16
  end
  object Продукты: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnFilterRecord = ПродуктыFilterRecord
    TableName = 'Product'
    Left = 24
    Top = 64
    object Продуктыproduct_id: TAutoIncField
      FieldName = 'product_id'
      ReadOnly = True
    end
    object Продуктыcategory_id: TIntegerField
      FieldName = 'category_id'
    end
    object Продуктыproduct_name: TWideStringField
      FieldName = 'product_name'
      Size = 255
    end
    object Продуктыdescription: TWideStringField
      FieldName = 'description'
      Size = 255
    end
    object Продуктыprice: TIntegerField
      FieldName = 'price'
    end
    object Продуктыstock_quantity: TIntegerField
      FieldName = 'stock_quantity'
    end
  end
  object Категории: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Category'
    Left = 24
    Top = 128
    object Категорииcategory_id: TAutoIncField
      FieldName = 'category_id'
      ReadOnly = True
    end
    object Категорииcategory_name: TWideStringField
      FieldName = 'category_name'
      Size = 255
    end
  end
  object Покупатель: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Costumer'
    Left = 24
    Top = 184
    object Покупательcostumer_id: TAutoIncField
      FieldName = 'costumer_id'
      ReadOnly = True
    end
    object Покупательfist_name: TWideStringField
      FieldName = 'fist_name'
      Size = 255
    end
    object Покупательlast_name: TWideStringField
      FieldName = 'last_name'
      Size = 255
    end
    object Покупательemail: TWideStringField
      FieldName = 'email'
      Size = 255
    end
    object Покупательphone: TWideStringField
      FieldName = 'phone'
      Size = 255
    end
    object Покупательaddress: TWideStringField
      FieldName = 'address'
      Size = 255
    end
  end
  object Пользователи: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Register'
    Left = 24
    Top = 323
    object Пользователиreg_id: TAutoIncField
      FieldName = 'reg_id'
      ReadOnly = True
    end
    object Пользователиlogin: TWideStringField
      FieldName = 'login'
      Size = 255
    end
    object Пользователиpassword: TWideStringField
      FieldName = 'password'
      Size = 255
    end
    object Пользователиadmin: TBooleanField
      FieldName = 'admin'
    end
  end
  object DSProduct: TDataSource
    DataSet = Продукты
    Left = 200
    Top = 64
  end
  object DSCategory: TDataSource
    DataSet = Категории
    Left = 192
    Top = 128
  end
  object DSCostumer: TDataSource
    DataSet = Покупатель
    Left = 192
    Top = 184
  end
  object DSOrder: TDataSource
    DataSet = Заказ
    Left = 192
    Top = 264
  end
  object DSRegister: TDataSource
    DataSet = Пользователи
    Left = 192
    Top = 336
  end
  object Заказ: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'OrderProd'
    Left = 24
    Top = 256
    object Заказorder_id: TAutoIncField
      FieldName = 'order_id'
      ReadOnly = True
    end
    object Заказcostumer_id: TIntegerField
      FieldName = 'costumer_id'
    end
    object Заказproduct_id: TIntegerField
      FieldName = 'product_id'
    end
    object Заказorder_date: TDateTimeField
      FieldName = 'order_date'
    end
    object Заказquantity: TIntegerField
      FieldName = 'quantity'
    end
  end
end
