object AddProd: TAddProd
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1087#1088#1086#1076#1091#1082#1090#1072
  ClientHeight = 353
  ClientWidth = 440
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 124
    Height = 19
    Caption = #1050#1086#1076' '#1082#1072#1090#1077#1075#1086#1088#1080#1080
  end
  object Label2: TLabel
    Left = 32
    Top = 72
    Width = 164
    Height = 19
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1086#1076#1091#1082#1090#1072
  end
  object Label3: TLabel
    Left = 32
    Top = 112
    Width = 80
    Height = 19
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077
  end
  object Label4: TLabel
    Left = 32
    Top = 152
    Width = 42
    Height = 19
    Caption = #1062#1077#1085#1072
  end
  object Label5: TLabel
    Left = 32
    Top = 192
    Width = 98
    Height = 19
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
  end
  object EditCat: TEdit
    Left = 176
    Top = 29
    Width = 137
    Height = 27
    TabOrder = 0
  end
  object EditNazv: TEdit
    Left = 202
    Top = 69
    Width = 183
    Height = 27
    TabOrder = 1
  end
  object EditDesc: TEdit
    Left = 176
    Top = 109
    Width = 241
    Height = 27
    TabOrder = 2
  end
  object EditPrice: TEdit
    Left = 176
    Top = 149
    Width = 137
    Height = 27
    TabOrder = 3
  end
  object EditCount: TEdit
    Left = 176
    Top = 189
    Width = 137
    Height = 27
    TabOrder = 4
  end
  object AddBtn: TButton
    Left = 120
    Top = 264
    Width = 177
    Height = 41
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 5
    OnClick = AddBtnClick
  end
  object ADOQuery: TADOQuery
    Connection = fDM.ADOConnection1
    Parameters = <>
    Left = 360
    Top = 248
  end
end
