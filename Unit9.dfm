object AddSotr: TAddSotr
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
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
    Left = 48
    Top = 40
    Width = 56
    Height = 19
    Caption = #1051#1086#1075#1080#1085':'
  end
  object Label2: TLabel
    Left = 48
    Top = 80
    Width = 67
    Height = 19
    Caption = #1055#1072#1088#1086#1083#1100':'
  end
  object Label3: TLabel
    Left = 49
    Top = 120
    Width = 61
    Height = 19
    Caption = #1040#1076#1084#1080#1085':'
  end
  object EditLogin: TEdit
    Left = 195
    Top = 37
    Width = 137
    Height = 27
    TabOrder = 0
  end
  object EditPass: TEdit
    Left = 195
    Top = 77
    Width = 183
    Height = 27
    TabOrder = 1
  end
  object AddBtn: TButton
    Left = 120
    Top = 224
    Width = 177
    Height = 41
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = AddBtnClick
  end
  object AdminCheck: TCheckBox
    Left = 195
    Top = 118
    Width = 62
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object ADOQuery: TADOQuery
    Connection = fDM.ADOConnection1
    Parameters = <>
    Left = 376
    Top = 248
  end
end
