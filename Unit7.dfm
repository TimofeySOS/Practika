object AddOrder: TAddOrder
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1082#1072#1079
  ClientHeight = 350
  ClientWidth = 450
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
    Width = 141
    Height = 19
    Caption = #1050#1086#1076' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103':'
  end
  object Label2: TLabel
    Left = 32
    Top = 72
    Width = 122
    Height = 19
    Caption = #1050#1086#1076' '#1087#1088#1086#1076#1091#1082#1090#1072':'
  end
  object Label3: TLabel
    Left = 32
    Top = 112
    Width = 47
    Height = 19
    Caption = #1044#1072#1090#1072':'
  end
  object Label4: TLabel
    Left = 32
    Top = 152
    Width = 104
    Height = 19
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
  end
  object EditCost: TEdit
    Left = 176
    Top = 29
    Width = 137
    Height = 27
    TabOrder = 0
  end
  object EditProd: TEdit
    Left = 176
    Top = 69
    Width = 183
    Height = 27
    TabOrder = 1
  end
  object EditCount: TEdit
    Left = 176
    Top = 152
    Width = 137
    Height = 27
    TabOrder = 2
  end
  object AddBtn: TButton
    Left = 120
    Top = 264
    Width = 177
    Height = 41
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 3
    OnClick = AddBtnClick
  end
  object Date: TDateTimePicker
    Left = 176
    Top = 112
    Width = 186
    Height = 27
    Date = 45403.561788518520000000
    Time = 45403.561788518520000000
    TabOrder = 4
  end
  object ADOQuery: TADOQuery
    Connection = fDM.ADOConnection1
    Parameters = <>
    Left = 360
    Top = 248
  end
end
