//---------------------------------------------------------------------------
#ifndef MainUnitH
#define MainUnitH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Dialogs.hpp>
//---------------------------------------------------------------------------
class TFFileContentForm : public TForm
{
__published:	// IDE-managed Components
	TMemo *MContent;
	TButton *BOpen;
	TButton *BSave;
	TOpenDialog *ODOpen;
	TSaveDialog *SDSave;
	void __fastcall BOpenClick(TObject *Sender);
	void __fastcall BSaveClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFFileContentForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFFileContentForm *FFileContentForm;
//---------------------------------------------------------------------------
#endif
//---------------------------------------------------------------------------
