object Zapros: TZapros
  Left = 0
  Top = 0
  Caption = 'Zapros'
  ClientHeight = 356
  ClientWidth = 956
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 956
    Height = 153
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 688
      Top = 31
      Width = 93
      Height = 13
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1090#1077#1082#1089#1090' '#1080#1079
    end
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 368
      Height = 151
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBNavigator1: TDBNavigator
      Left = 432
      Top = 19
      Width = 240
      Height = 25
      DataSource = DataSource1
      TabOrder = 1
    end
    object Button1: TButton
      Left = 432
      Top = 50
      Width = 240
      Height = 33
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' SQL-'#1047#1072#1087#1088#1086#1089
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 432
      Top = 89
      Width = 240
      Height = 32
      Caption = #1054#1090#1095#1080#1089#1090#1080#1090#1100' '#1082#1086#1084#1087#1086#1085#1077#1085#1090' Memo'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 688
      Top = 50
      Width = 57
      Height = 27
      Caption = #1047#1072#1082#1072#1079#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button3Click
    end
    object Edit1: TEdit
      Left = 787
      Top = 24
      Width = 89
      Height = 21
      TabOrder = 5
    end
    object CheckBox1: TCheckBox
      Left = 787
      Top = 57
      Width = 97
      Height = 14
      Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
      TabOrder = 6
    end
    object Button4: TButton
      Left = 688
      Top = 89
      Width = 113
      Height = 32
      Caption = #1055#1088#1086#1076#1091#1082#1090#1099' '#1076#1086' 500'#1088
      TabOrder = 7
      OnClick = Button4Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 153
    Width = 956
    Height = 203
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOConnection1: TADOConnection
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
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 248
    Top = 200
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 336
    Top = 200
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 416
    Top = 200
  end
end
