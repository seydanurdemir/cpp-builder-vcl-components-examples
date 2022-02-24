//---------------------------------------------------------------------------
#ifndef MainUnitH
#define MainUnitH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.Menus.hpp>
//---------------------------------------------------------------------------
class TFFileContentForm : public TForm
{
__published:	// IDE-managed Components
	TMemo *MContent;
	TOpenDialog *ODOpen;
	TSaveDialog *SDSave;
	TMainMenu *MainMenu1;
	TMenuItem *MAsmViewer;
	TMenuItem *MFile;
	TMenuItem *SubLine;
	TMenuItem *MFileOpen;
	TMenuItem *MFileSaveAs;
	TMenuItem *Line;
	TMenuItem *MExit;
	void __fastcall MFileOpenClick(TObject *Sender);
	void __fastcall MFileSaveClick(TObject *Sender);
	void __fastcall MExitClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFFileContentForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFFileContentForm *FFileContentForm;
//---------------------------------------------------------------------------
#endif
//---------------------------------------------------------------------------
