object Login: TLogin
  Left = 0
  Top = 0
  Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
  ClientHeight = 332
  ClientWidth = 405
  Color = clSilver
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Segoe UI'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 25
  object Label1: TLabel
    Left = 56
    Top = 88
    Width = 63
    Height = 25
    Caption = #1051#1086#1075#1080#1085':'
  end
  object Label2: TLabel
    Left = 54
    Top = 131
    Width = 76
    Height = 25
    Caption = #1055#1072#1088#1086#1083#1100':'
  end
  object Label3: TLabel
    Left = 128
    Top = 27
    Width = 141
    Height = 25
    Caption = #1042#1093#1086#1076' '#1074' '#1072#1082#1082#1072#1091#1085#1090
  end
  object Label4: TLabel
    Left = 128
    Top = 283
    Width = 158
    Height = 25
    Caption = #1042#1086#1081#1090#1080' '#1082#1072#1082' '#1075#1086#1089#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
    OnClick = Label4Click
  end
  object Label5: TLabel
    Left = 13
    Top = -4
    Width = 5
    Height = 25
  end
  object roleLB: TLabel
    Left = 8
    Top = -4
    Width = 45
    Height = 25
    Caption = #1056#1086#1083#1100
    Visible = False
  end
  object Edit1: TEdit
    Left = 136
    Top = 85
    Width = 193
    Height = 33
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 136
    Top = 128
    Width = 193
    Height = 33
    TabOrder = 1
  end
  object Button1: TButton
    Left = 88
    Top = 200
    Width = 209
    Height = 41
    Caption = #1042#1086#1081#1090#1080
    TabOrder = 2
    OnClick = Button1Click
  end
  object ADOQuery: TADOQuery
    Connection = fDM.ADOConnection1
    Parameters = <>
    Left = 344
    Top = 240
  end
end
