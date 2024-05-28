object AddCost: TAddCost
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
  ClientHeight = 350
  ClientWidth = 451
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
    Width = 40
    Height = 19
    Caption = #1048#1084#1103':'
  end
  object Label2: TLabel
    Left = 32
    Top = 72
    Width = 81
    Height = 19
    Caption = #1060#1072#1084#1080#1083#1080#1103':'
  end
  object Label3: TLabel
    Left = 32
    Top = 112
    Width = 57
    Height = 19
    Caption = #1055#1086#1095#1090#1072':'
  end
  object Label4: TLabel
    Left = 32
    Top = 152
    Width = 80
    Height = 19
    Caption = #1058#1077#1083#1077#1092#1086#1085':'
  end
  object Label5: TLabel
    Left = 32
    Top = 192
    Width = 57
    Height = 19
    Caption = #1040#1076#1088#1077#1089':'
  end
  object EditFirst: TEdit
    Left = 176
    Top = 29
    Width = 137
    Height = 27
    TabOrder = 0
  end
  object EditLast: TEdit
    Left = 176
    Top = 69
    Width = 183
    Height = 27
    TabOrder = 1
  end
  object EditEmail: TEdit
    Left = 176
    Top = 109
    Width = 241
    Height = 27
    TabOrder = 2
  end
  object EditPhone: TEdit
    Left = 176
    Top = 149
    Width = 137
    Height = 27
    TabOrder = 3
  end
  object EditAddres: TEdit
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
