object Form1: TForm1
  Left = 313
  Top = 209
  Caption = 'Consumindo Web Service'
  ClientHeight = 319
  ClientWidth = 378
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 152
    Top = 16
    Width = 100
    Height = 22
    Caption = 'Buscar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 272
    Top = 16
    Width = 100
    Height = 22
    Caption = 'Nova'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object Label1: TLabel
    Left = 16
    Top = 48
    Width = 20
    Height = 13
    Caption = 'Rua'
  end
  object Label2: TLabel
    Left = 16
    Top = 96
    Width = 27
    Height = 13
    Caption = 'Bairro'
  end
  object Label3: TLabel
    Left = 16
    Top = 144
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label4: TLabel
    Left = 328
    Top = 144
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object MaskEdit1: TMaskEdit
    Left = 16
    Top = 16
    Width = 120
    Height = 21
    EditMask = '00000\-999;1;_'
    MaxLength = 9
    TabOrder = 0
    Text = '     -   '
    OnKeyDown = MaskEdit1KeyDown
  end
  object Edit1: TEdit
    Left = 16
    Top = 64
    Width = 353
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 16
    Top = 112
    Width = 353
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 16
    Top = 160
    Width = 305
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 328
    Top = 160
    Width = 41
    Height = 21
    TabOrder = 4
  end
  object Memo1: TMemo
    Left = 16
    Top = 192
    Width = 353
    Height = 121
    TabOrder = 5
  end
end
