object Form1: TForm1
  Left = 192
  Top = 124
  Caption = 'Form1'
  ClientHeight = 324
  ClientWidth = 507
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
    Left = 8
    Top = 0
    Width = 489
    Height = 129
    TabOrder = 0
    object Label1: TLabel
      Left = 48
      Top = 32
      Width = 33
      Height = 20
      Caption = 'NIM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 48
      Top = 56
      Width = 47
      Height = 20
      Caption = 'Nama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 48
      Top = 80
      Width = 65
      Height = 20
      Caption = 'Jurusan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 48
      Top = 104
      Width = 70
      Height = 20
      Caption = 'Fakultas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit2: TEdit
      Left = 136
      Top = 52
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'Edit2'
    end
    object Edit1: TEdit
      Left = 136
      Top = 28
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Edit1'
    end
    object Edit3: TEdit
      Left = 136
      Top = 76
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'Edit3'
    end
    object Edit4: TEdit
      Left = 136
      Top = 100
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'Edit4'
    end
    object Button1: TButton
      Left = 296
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 296
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Ubah'
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 296
      Top = 88
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 6
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 384
      Top = 24
      Width = 89
      Height = 57
      Caption = 'Keluar'
      TabOrder = 7
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 152
    Width = 489
    Height = 161
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button5: TButton
    Left = 392
    Top = 88
    Width = 99
    Height = 25
    Caption = 'Koneksi database'
    TabOrder = 2
    OnClick = Button5Click
  end
  object XPManifest1: TXPManifest
    Left = 496
    Top = 280
  end
  object kon: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    HostName = ''
    Port = 0
    Database = ''
    User = ''
    Password = ''
    Protocol = ''
    Left = 272
    Top = 192
  end
  object zview: TZQuery
    Params = <>
    Left = 312
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = zview
    Left = 384
    Top = 192
  end
  object Zfree: TZQuery
    Params = <>
    Left = 344
    Top = 192
  end
end
