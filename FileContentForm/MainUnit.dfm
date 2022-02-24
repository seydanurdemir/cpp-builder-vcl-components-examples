object FFileContentForm: TFFileContentForm
  Left = 0
  Top = 0
  Caption = 'FileContentForm'
  ClientHeight = 512
  ClientWidth = 512
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    512
    512)
  PixelsPerInch = 96
  TextHeight = 13
  object Content: TMemo
    Left = 0
    Top = 0
    Width = 512
    Height = 480
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'Content')
    TabOrder = 0
  end
  object BSave: TButton
    Left = 266
    Top = 486
    Width = 64
    Height = 24
    Caption = 'Save'
    TabOrder = 1
  end
  object BOpen: TButton
    Left = 182
    Top = 486
    Width = 64
    Height = 24
    Caption = 'Open'
    TabOrder = 2
  end
end
