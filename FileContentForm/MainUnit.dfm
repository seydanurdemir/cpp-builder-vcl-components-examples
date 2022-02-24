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
  Menu = MainMenu1
  OldCreateOrder = False
  DesignSize = (
    512
    512)
  PixelsPerInch = 96
  TextHeight = 13
  object MContent: TMemo
    Left = 0
    Top = 0
    Width = 512
    Height = 480
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'Content')
    TabOrder = 0
  end
  object ODOpen: TOpenDialog
    DefaultExt = '.asm'
    Filter = 'Assembly files (*.asm)|*.asm'
    Left = 256
    Top = 144
  end
  object SDSave: TSaveDialog
    DefaultExt = '.asm'
    Filter = 'Assembly files (*.asm)|*.asm'
    Left = 256
    Top = 192
  end
  object MainMenu1: TMainMenu
    Left = 128
    Top = 144
    object MAsmViewer: TMenuItem
      Caption = 'AsmViewer'
      object MFile: TMenuItem
        Caption = 'File'
        object MFileOpen: TMenuItem
          Caption = 'Open'
          OnClick = MFileOpenClick
        end
        object SubLine: TMenuItem
          Caption = '-'
        end
        object MFileSaveAs: TMenuItem
          Caption = 'Save As ...'
          OnClick = MFileSaveClick
        end
      end
      object Line: TMenuItem
        Caption = '-'
      end
      object MExit: TMenuItem
        Caption = 'Exit'
        OnClick = MExitClick
      end
    end
  end
end
