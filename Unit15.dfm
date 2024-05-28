object Assort: TAssort
  Left = 0
  Top = 0
  Caption = #1040#1089#1089#1086#1088#1090#1080#1084#1077#1085#1090
  ClientHeight = 406
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI Semibold'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 21
  object Label1: TLabel
    Left = 232
    Top = 8
    Width = 200
    Height = 23
    Caption = #1057#1087#1080#1089#1086#1082' '#1087#1088#1086#1076#1091#1082#1090#1086#1074
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 47
    Width = 609
    Height = 330
    DataSource = fDM.DSProduct
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Segoe UI Semibold'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'product_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'category_id'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'product_name'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'description'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'price'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stock_quantity'
        Width = 120
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 105
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 1
    OnClick = Button1Click
  end
end
