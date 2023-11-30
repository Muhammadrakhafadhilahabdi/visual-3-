object Form3: TForm3
  Left = 1238
  Top = 610
  Width = 1305
  Height = 675
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 56
    Width = 78
    Height = 13
    Caption = 'Nama Karyawan'
  end
  object Label2: TLabel
    Left = 88
    Top = 88
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label3: TLabel
    Left = 88
    Top = 120
    Width = 48
    Height = 13
    Caption = 'No Telpon'
  end
  object Label4: TLabel
    Left = 88
    Top = 152
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object DBGrid1: TDBGrid
    Left = 360
    Top = 48
    Width = 617
    Height = 145
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 192
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 192
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 192
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit3'
  end
  object Button1: TButton
    Left = 88
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 280
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 424
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 7
  end
  object Edit4: TEdit
    Left = 192
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'Edit4'
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = '2110010299'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\ASUS\Documents\Kuliah\Semester 5\visual 3\asli\penjuala' +
      'n\libmysql.dll'
    Left = 88
    Top = 248
  end
  object zqry1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from karyawan')
    Params = <>
    Left = 144
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = zqry1
    Left = 192
    Top = 248
  end
end
