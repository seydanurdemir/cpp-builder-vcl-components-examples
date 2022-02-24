object FUserRegistrationForm: TFUserRegistrationForm
  Left = 0
  Top = 0
  Caption = 'User Registration Form'
  ClientHeight = 460
  ClientWidth = 520
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GBRegister: TGroupBox
    Left = 8
    Top = 8
    Width = 500
    Height = 440
    Caption = 'Register'
    TabOrder = 0
    object LUsername: TLabel
      Left = 16
      Top = 24
      Width = 48
      Height = 13
      Caption = 'Username'
    end
    object LEmailAddress: TLabel
      Left = 248
      Top = 64
      Width = 70
      Height = 13
      Caption = 'E-mail Address'
    end
    object LPassword: TLabel
      Left = 248
      Top = 24
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object LFullName: TLabel
      Left = 16
      Top = 64
      Width = 46
      Height = 13
      Caption = 'Full Name'
    end
    object Label5: TLabel
      Left = -152
      Top = 101
      Width = 19
      Height = 13
      Caption = 'Age'
    end
    object LAge: TLabel
      Left = 248
      Top = 101
      Width = 19
      Height = 13
      Caption = 'Age'
    end
    object LGender: TLabel
      Left = 16
      Top = 144
      Width = 35
      Height = 13
      Caption = 'Gender'
    end
    object LAddress: TLabel
      Left = 16
      Top = 184
      Width = 39
      Height = 13
      Caption = 'Address'
    end
    object LCity: TLabel
      Left = 16
      Top = 244
      Width = 19
      Height = 13
      Caption = 'City'
    end
    object LBirthday: TLabel
      Left = 16
      Top = 104
      Width = 40
      Height = 13
      Caption = 'Birthday'
    end
    object LZipCode: TLabel
      Left = 248
      Top = 244
      Width = 42
      Height = 13
      Caption = 'Zip Code'
    end
    object LProfession: TLabel
      Left = 16
      Top = 284
      Width = 50
      Height = 13
      Caption = 'Profession'
    end
    object LInterests: TLabel
      Left = 248
      Top = 284
      Width = 44
      Height = 13
      Caption = 'Interests'
    end
    object EUsername: TEdit
      Left = 96
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object EEmailAddress: TEdit
      Left = 328
      Top = 61
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object EPassword: TEdit
      Left = 328
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object EFullName: TEdit
      Left = 96
      Top = 61
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object EAge: TEdit
      Left = 328
      Top = 98
      Width = 31
      Height = 21
      NumbersOnly = True
      TabOrder = 4
      Text = '0'
    end
    object UDAge: TUpDown
      Left = 365
      Top = 98
      Width = 16
      Height = 21
      Associate = EAge
      TabOrder = 5
    end
    object BSend: TButton
      Left = 142
      Top = 406
      Width = 75
      Height = 25
      Caption = 'Send'
      TabOrder = 6
      OnClick = BSendClick
    end
    object EAddress: TEdit
      Left = 96
      Top = 181
      Width = 353
      Height = 42
      AutoSize = False
      TabOrder = 8
    end
    object CBCity: TComboBox
      Left = 96
      Top = 241
      Width = 121
      Height = 21
      Style = csDropDownList
      TabOrder = 9
      Items.Strings = (
        'Istanbul'
        'Ankara'
        'Bursa'
        'Izmir'
        'Canakkale')
    end
    object CBAggreement: TCheckBox
      Left = 16
      Top = 340
      Width = 97
      Height = 17
      Caption = 'Aggreement*'
      TabOrder = 10
    end
    object CBPrivacy: TCheckBox
      Left = 16
      Top = 364
      Width = 97
      Height = 17
      Caption = 'Privacy*'
      TabOrder = 11
    end
    object BClear: TButton
      Left = 248
      Top = 406
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 12
      OnClick = BClearClick
    end
    object EZipCode: TEdit
      Left = 328
      Top = 241
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 13
    end
    object DTPBirthday: TDateTimePicker
      Left = 96
      Top = 101
      Width = 121
      Height = 21
      Date = 25569.000000000000000000
      Time = 0.265533391204371600
      TabOrder = 14
    end
    object RadioButton1: TRadioButton
      Left = 96
      Top = 141
      Width = 90
      Height = 21
      Caption = 'Not Specified'
      TabOrder = 16
    end
    object RBGenderFemale: TRadioButton
      Left = 194
      Top = 141
      Width = 90
      Height = 21
      Caption = 'Female'
      TabOrder = 7
    end
    object RBGenderMale: TRadioButton
      Left = 266
      Top = 141
      Width = 90
      Height = 21
      Caption = 'Male'
      TabOrder = 15
    end
    object STAgreement: TStaticText
      Left = 104
      Top = 340
      Width = 156
      Height = 17
      Caption = '(Please read aggreement text.)'
      TabOrder = 17
    end
    object STPrivacy: TStaticText
      Left = 82
      Top = 366
      Width = 133
      Height = 17
      Caption = '(Please read privacy text.)'
      TabOrder = 18
    end
    object LBInterests: TListBox
      Left = 328
      Top = 281
      Width = 121
      Height = 48
      ItemHeight = 13
      Items.Strings = (
        'Health'
        'Technology'
        'Entertainment')
      TabOrder = 19
    end
    object CBProfession: TComboBox
      Left = 96
      Top = 281
      Width = 121
      Height = 21
      TabOrder = 20
      Text = 'Other (...)'
      Items.Strings = (
        'Architect'
        'Artist'
        'Baker'
        'Butcher'
        'Developer'
        'Doctor'
        'Engineer'
        'Farmer'
        'Physician'
        'Hairdresser'
        'Lawyer'
        'Mechanic'
        'Nurse'
        'Pilot'
        'Policeman'
        'Postman'
        'Soldier'
        'Tailor'
        'Teacher'
        'Waiter')
    end
  end
end
