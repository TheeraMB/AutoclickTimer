object Form1: TForm1
  Left = 521
  Top = 191
  Width = 412
  Height = 246
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 200
    Top = 8
    Width = 185
    Height = 137
    Caption = 'Click position / Time'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 19
      Height = 13
      Caption = 'X/Y'
    end
    object EdtX: TEdit
      Left = 48
      Top = 32
      Width = 49
      Height = 21
      Enabled = False
      TabOrder = 0
      Text = '0'
    end
    object EdtY: TEdit
      Left = 104
      Top = 32
      Width = 49
      Height = 21
      Enabled = False
      TabOrder = 1
      Text = '0'
    end
    object Panel1: TPanel
      Left = 8
      Top = 64
      Width = 169
      Height = 41
      Caption = 'Panel1'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 185
    Height = 137
    Caption = 'Input'
    TabOrder = 1
    object Lab_T: TLabel
      Left = 16
      Top = 48
      Width = 23
      Height = 13
      Caption = 'Time'
    end
    object Label3: TLabel
      Left = 16
      Top = 80
      Width = 76
      Height = 13
      Caption = 'Delay  0-999 ms'
    end
    object Edit1: TEdit
      Left = 16
      Top = 16
      Width = 161
      Height = 21
      TabOrder = 0
      Text = 'Enter to copy mouse position'
      OnKeyPress = Edit1KeyPress
    end
    object CheckBox1: TCheckBox
      Left = 32
      Top = 112
      Width = 97
      Height = 17
      Caption = 'Process'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DateTimePicker1: TDateTimePicker
      Left = 48
      Top = 48
      Width = 105
      Height = 21
      CalAlignment = dtaLeft
      Date = 42797.7018992014
      Time = 42797.7018992014
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkTime
      ParseInput = False
      TabOrder = 2
    end
    object EdtD: TEdit
      Left = 104
      Top = 80
      Width = 49
      Height = 21
      TabOrder = 3
      Text = '0'
    end
  end
  object Button1: TButton
    Left = 88
    Top = 152
    Width = 193
    Height = 49
    Caption = 'Close'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Timer1: TTimer
    Interval = 50
    OnTimer = Timer1Timer
    Left = 208
    Top = 128
  end
end
