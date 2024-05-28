object Zakazi: TZakazi
  Left = 0
  Top = 0
  Caption = #1047#1072#1082#1072#1079#1099
  ClientHeight = 721
  ClientWidth = 869
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 32
    Top = 18
    Width = 152
    Height = 18
    Caption = #1057#1087#1080#1089#1086#1082' '#1082#1083#1080#1077#1085#1090#1086#1074
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 32
    Top = 250
    Width = 67
    Height = 18
    Caption = #1047#1072#1082#1072#1079#1099
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 482
    Width = 114
    Height = 18
    Caption = #1040#1089#1089#1086#1088#1090#1080#1084#1077#1085#1090
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 47
    Width = 641
    Height = 178
    DataSource = fDM.DSCostumer
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'costumer_id'
        Title.Caption = #1050#1086#1076' '#1082#1083#1080#1077#1085#1090#1072
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fist_name'
        Title.Caption = #1048#1084#1103':'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'last_name'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Title.Caption = #1055#1086#1095#1090#1072
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'phone'
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'address'
        Title.Caption = #1040#1076#1088#1077#1089
        Width = 120
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 699
    Top = 71
    Width = 150
    Height = 33
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 699
    Top = 118
    Width = 150
    Height = 33
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button7: TButton
    Left = 699
    Top = 168
    Width = 150
    Height = 33
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 3
    OnClick = Button7Click
  end
  object DBGrid2: TDBGrid
    Left = 32
    Top = 279
    Width = 429
    Height = 178
    DataSource = fDM.DSOrder
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid2CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'order_id'
        Title.Caption = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'costumer_id'
        Title.Caption = #1050#1086#1076' '#1082#1083#1080#1077#1085#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'product_id'
        Title.Caption = #1050#1086#1076' '#1087#1088#1086#1076#1091#1082#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'order_date'
        Title.Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantity'
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 483
    Top = 303
    Width = 150
    Height = 33
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button4: TButton
    Left = 483
    Top = 350
    Width = 150
    Height = 33
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 483
    Top = 400
    Width = 150
    Height = 33
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 7
    OnClick = Button7Click
  end
  object DBGrid3: TDBGrid
    Left = 32
    Top = 506
    Width = 657
    Height = 178
    DataSource = fDM.DSProduct
    ReadOnly = True
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1050#1086#1076' '#1087#1088#1086#1076#1091#1082#1090#1072
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'category_id'
        Title.Caption = #1050#1086#1076' '#1082#1072#1090#1077#1075#1086#1088#1080#1080
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'product_name'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'description'
        Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'price'
        Title.Caption = #1062#1077#1085#1072
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stock_quantity'
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Width = 110
        Visible = True
      end>
  end
  object Button6: TButton
    Left = 711
    Top = 651
    Width = 138
    Height = 33
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 9
    OnClick = Button6Click
  end
  object Button8: TButton
    Left = 699
    Top = 224
    Width = 150
    Height = 33
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 10
  end
  object ADOQuery: TADOQuery
    Connection = fDM.ADOConnection1
    Parameters = <>
    Left = 784
    Top = 344
  end
end
