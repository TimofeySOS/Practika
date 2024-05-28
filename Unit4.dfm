object AddCat: TAddCat
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1082#1072#1090#1077#1075#1086#1088#1080#1080
  ClientHeight = 350
  ClientWidth = 440
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Label2: TLabel
    Left = 32
    Top = 72
    Width = 148
    Height = 19
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1072#1090#1077#1075#1086#1088#1080#1080
  end
  object EditCat: TEdit
    Left = 202
    Top = 69
    Width = 183
    Height = 27
    TabOrder = 0
  end
  object AddBtn: TButton
    Left = 120
    Top = 264
    Width = 177
    Height = 41
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = AddBtnClick
  end
  object ADOQuery: TADOQuery
    Connection = fDM.ADOConnection1
    Parameters = <>
    Left = 360
    Top = 248
  end
end
