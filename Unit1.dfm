object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1086#1088#1085#1080#1090#1086#1083#1086#1075#1072
  ClientHeight = 452
  ClientWidth = 775
  Color = clScrollBar
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelName: TLabel
    Left = 40
    Top = 48
    Width = 81
    Height = 17
    AutoSize = False
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelFamily: TLabel
    Left = 40
    Top = 104
    Width = 90
    Height = 19
    AutoSize = False
    Caption = #1057#1077#1084#1077#1081#1089#1090#1074#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelHabitat: TLabel
    Left = 40
    Top = 160
    Width = 137
    Height = 21
    AutoSize = False
    Caption = #1040#1088#1077#1072#1083' '#1086#1073#1080#1090#1072#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelAge: TLabel
    Left = 40
    Top = 216
    Width = 81
    Height = 24
    AutoSize = False
    Caption = #1042#1086#1079#1088#1072#1089#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelGender: TLabel
    Left = 40
    Top = 272
    Width = 32
    Height = 19
    Caption = #1055#1086#1083
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelNum: TLabel
    Left = 177
    Top = 332
    Width = 17
    Height = 33
    AutoSize = False
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EditName: TEdit
    Left = 200
    Top = 48
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object EditFamily: TEdit
    Left = 200
    Top = 104
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object EditHabitat: TEdit
    Left = 200
    Top = 162
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object EditAge: TEdit
    Left = 200
    Top = 216
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object EditGender: TEdit
    Left = 200
    Top = 270
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object ButtonAdd: TButton
    Left = 352
    Top = 40
    Width = 129
    Height = 41
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = ButtonAddClick
  end
  object ButtonPrev: TButton
    Left = 120
    Top = 328
    Width = 33
    Height = 41
    Caption = '<<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = ButtonPrevClick
  end
  object ButtonNext: TButton
    Left = 216
    Top = 328
    Width = 33
    Height = 41
    Caption = '>>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = ButtonNextClick
  end
  object ButtonOpen: TButton
    Left = 352
    Top = 304
    Width = 129
    Height = 41
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = ButtonOpenClick
  end
  object ButtonSave: TButton
    Left = 352
    Top = 360
    Width = 129
    Height = 41
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' '#1092#1072#1081#1083
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = ButtonSaveClick
  end
  object ButtonChange: TButton
    Left = 352
    Top = 162
    Width = 129
    Height = 41
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = ButtonChangeClick
  end
  object ButtonDelete: TButton
    Left = 352
    Top = 226
    Width = 129
    Height = 39
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = ButtonDeleteClick
  end
  object ButtonClear: TButton
    Left = 352
    Top = 104
    Width = 129
    Height = 41
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1087#1086#1083#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = ButtonClearClick
  end
  object EditAgeSearch: TEdit
    Left = 599
    Top = 123
    Width = 89
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
  end
  object ButtonAgeSearch: TButton
    Left = 576
    Top = 62
    Width = 137
    Height = 44
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1074#1086#1079#1088#1072#1089#1090#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    OnClick = ButtonAgeSearchClick
  end
  object ButtonAgeSort: TButton
    Left = 560
    Top = 262
    Width = 169
    Height = 41
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1087#1086' '#1074#1086#1079#1088#1072#1089#1090#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    OnClick = ButtonAgeSortClick
  end
  object SaveDialog1: TSaveDialog
    Left = 64
    Top = 400
  end
  object OpenDialog1: TOpenDialog
    Left = 136
    Top = 400
  end
end
