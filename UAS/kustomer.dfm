object Form1: TForm1
  Left = 192
  Top = 238
  Width = 639
  Height = 594
  Caption = 'KUSTOMER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object NIK: TLabel
    Left = 56
    Top = 88
    Width = 26
    Height = 19
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object KUSTOMER: TLabel
    Left = 248
    Top = 24
    Width = 96
    Height = 23
    Caption = 'KUSTOMER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object NAMA: TLabel
    Left = 56
    Top = 120
    Width = 45
    Height = 19
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object TELP: TLabel
    Left = 56
    Top = 152
    Width = 36
    Height = 19
    Caption = 'TELP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object EMAIL: TLabel
    Left = 56
    Top = 184
    Width = 46
    Height = 19
    Caption = 'EMAIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ALAMAT: TLabel
    Left = 56
    Top = 216
    Width = 63
    Height = 19
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object MEMBER: TLabel
    Left = 56
    Top = 256
    Width = 61
    Height = 19
    Caption = 'MEMBER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DISKON: TLabel
    Left = 360
    Top = 256
    Width = 58
    Height = 19
    Caption = 'DISKON'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object I: TLabel
    Left = 424
    Top = 256
    Width = 6
    Height = 19
    Caption = ':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblDiscountValue: TLabel
    Left = 448
    Top = 256
    Width = 108
    Height = 19
    Caption = 'Terisi Otomatis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object CARI: TLabel
    Left = 56
    Top = 480
    Width = 107
    Height = 19
    Caption = 'Masukan Nama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtNik: TEdit
    Left = 192
    Top = 88
    Width = 265
    Height = 21
    TabOrder = 0
  end
  object edtNama: TEdit
    Left = 192
    Top = 128
    Width = 265
    Height = 21
    TabOrder = 1
  end
  object edtTelp: TEdit
    Left = 192
    Top = 160
    Width = 265
    Height = 21
    TabOrder = 2
  end
  object edtEmail: TEdit
    Left = 192
    Top = 192
    Width = 265
    Height = 21
    TabOrder = 3
  end
  object edtAlamat: TEdit
    Left = 192
    Top = 224
    Width = 265
    Height = 21
    TabOrder = 4
  end
  object cmbMember: TDBComboBox
    Left = 192
    Top = 256
    Width = 145
    Height = 21
    ItemHeight = 13
    Items.Strings = (
      'No'
      'Yes')
    TabOrder = 5
    OnChange = cmbMemberChange
  end
  object btnBaru: TButton
    Left = 72
    Top = 304
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 6
    OnClick = btnBaruClick
  end
  object btnSimpan: TButton
    Left = 168
    Top = 304
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = btnSimpanClick
  end
  object btnEdit: TButton
    Left = 264
    Top = 304
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = btnEditClick
  end
  object btnHapus: TButton
    Left = 360
    Top = 304
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = btnHapusClick
  end
  object btnBatal: TButton
    Left = 456
    Top = 304
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 10
    OnClick = btnBatalClick
  end
  object dbgrd1: TDBGrid
    Left = 56
    Top = 352
    Width = 505
    Height = 113
    DataSource = DataModule1.dsKustomer
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edtCari: TEdit
    Left = 192
    Top = 480
    Width = 257
    Height = 21
    TabOrder = 12
    OnChange = edtCariChange
  end
  object btnCetak: TButton
    Left = 472
    Top = 480
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 13
    OnClick = btnCetakClick
  end
end
