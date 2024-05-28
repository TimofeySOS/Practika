object Zaprosi: TZaprosi
  Left = 0
  Top = 0
  Caption = #1052#1086#1076#1091#1083#1100' '#1079#1072#1087#1088#1086#1089#1086#1074
  ClientHeight = 543
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 763
    Height = 305
    Align = alTop
    TabOrder = 2
    ExplicitLeft = -2
    object DBNavigator1: TDBNavigator
      Left = 472
      Top = 24
      Width = 240
      Height = 25
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = -8
    Top = 304
    Width = 769
    Height = 241
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 417
    Height = 305
    Align = alCustom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
end
