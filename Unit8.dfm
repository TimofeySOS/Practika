object Sotr: TSotr
  Left = 0
  Top = 0
  Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
  ClientHeight = 363
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 32
    Top = 18
    Width = 183
    Height = 18
    Caption = #1057#1087#1080#1089#1086#1082' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 42
    Width = 441
    Height = 178
    DataSource = fDM.DSRegister
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
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'reg_id'
        Title.Caption = #1050#1086#1076' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'login'
        Title.Caption = #1051#1086#1075#1080#1085
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'password'
        Title.Caption = #1055#1072#1088#1086#1083#1100
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'admin'
        Title.Caption = #1040#1076#1084#1080#1085
        Width = 100
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 519
    Top = 71
    Width = 150
    Height = 33
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 519
    Top = 121
    Width = 150
    Height = 33
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button7: TButton
    Left = 519
    Top = 168
    Width = 150
    Height = 33
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 3
    OnClick = Button7Click
  end
  object Button1: TButton
    Left = 32
    Top = 311
    Width = 150
    Height = 33
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 4
    OnClick = Button1Click
  end
  object ADOQuery: TADOQuery
    Connection = fDM.ADOConnection1
    Parameters = <>
    Left = 616
    Top = 232
  end
end
