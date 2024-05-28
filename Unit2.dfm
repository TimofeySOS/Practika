object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1043#1083#1072#1074#1085#1072#1103' '#1092#1086#1088#1084#1072
  ClientHeight = 553
  ClientWidth = 850
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 18
  object Label1: TLabel
    Left = 32
    Top = 266
    Width = 92
    Height = 18
    Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1080
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 34
    Width = 163
    Height = 18
    Caption = #1057#1087#1080#1089#1086#1082' '#1087#1088#1086#1076#1091#1082#1090#1086#1074
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 591
    Top = 265
    Width = 60
    Height = 18
    Caption = #1055#1086#1080#1089#1082':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 536
    Top = 297
    Width = 114
    Height = 18
    Caption = #1060#1080#1083#1100#1090#1088#1072#1094#1080#1103':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 58
    Width = 674
    Height = 178
    Color = cl3DLight
    DataSource = fDM.DSProduct
    TabOrder = 0
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Roboto'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'product_id'
        Title.Caption = #1050#1086#1076' '#1087#1088#1086#1076#1091#1082#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'category_id'
        Title.Caption = #1050#1086#1076' '#1082#1072#1090#1077#1075#1086#1088#1080#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'product_name'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 120
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
        Width = 80
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 19
    Top = 504
    Width = 150
    Height = 33
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid2: TDBGrid
    Left = 32
    Top = 295
    Width = 257
    Height = 178
    DataSource = fDM.DSCategory
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Roboto'
    TitleFont.Style = []
    OnCellClick = DBGrid2CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'category_id'
        Title.Caption = #1050#1086#1076' '#1082#1072#1090#1077#1075#1086#1088#1080#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'category_name'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 110
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 720
    Top = 79
    Width = 105
    Height = 33
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 721
    Top = 118
    Width = 105
    Height = 33
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 331
    Top = 327
    Width = 150
    Height = 33
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 331
    Top = 374
    Width = 150
    Height = 33
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 675
    Top = 504
    Width = 150
    Height = 33
    Caption = #1047#1072#1082#1072#1079#1099
    TabOrder = 7
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 721
    Top = 196
    Width = 105
    Height = 33
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 8
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 331
    Top = 424
    Width = 150
    Height = 33
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 9
    OnClick = Button7Click
  end
  object Button9: TButton
    Left = 675
    Top = 448
    Width = 150
    Height = 33
    Caption = #1040#1082#1082#1072#1091#1085#1090#1099
    TabOrder = 10
    OnClick = Button9Click
  end
  object SearchTB: TEdit
    Left = 657
    Top = 263
    Width = 169
    Height = 26
    TabOrder = 11
    OnChange = SearchTBChange
  end
  object Edit1: TEdit
    Left = 656
    Top = 295
    Width = 169
    Height = 26
    TabOrder = 12
    OnChange = Edit1Change
  end
  object Zapros: TButton
    Left = 737
    Top = 8
    Width = 105
    Height = 33
    Caption = #1047#1072#1087#1088#1086#1089#1099
    TabOrder = 13
    OnClick = ZaprosClick
  end
  object Button10: TButton
    Left = 721
    Top = 157
    Width = 105
    Height = 33
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 14
    OnClick = Button10Click
  end
  object ADOQuery: TADOQuery
    Connection = fDM.ADOConnection1
    Parameters = <>
    Left = 232
    Top = 504
  end
end
