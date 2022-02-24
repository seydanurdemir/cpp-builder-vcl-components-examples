//---------------------------------------------------------------------------

#ifndef MainUnitH
#define MainUnitH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
//---------------------------------------------------------------------------
class TFFileContentForm : public TForm
{
__published:	// IDE-managed Components
	TMemo *Content;
	TButton *BOpen;
	TButton *BSave;
private:	// User declarations
public:		// User declarations
	__fastcall TFFileContentForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFFileContentForm *FFileContentForm;
//---------------------------------------------------------------------------
#endif
