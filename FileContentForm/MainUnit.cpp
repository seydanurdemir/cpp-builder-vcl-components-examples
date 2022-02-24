//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
#include "MainUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFFileContentForm *FFileContentForm;
//---------------------------------------------------------------------------
__fastcall TFFileContentForm::TFFileContentForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFFileContentForm::BOpenClick(TObject *Sender)
{
	if (ODOpen->Execute() == true)
	{
		MContent->Lines->LoadFromFile(ODOpen->FileName);
	}
}
//---------------------------------------------------------------------------
void __fastcall TFFileContentForm::BSaveClick(TObject *Sender)
{
	if (SDSave->Execute() == true)
	{
		MContent->Lines->SaveToFile(SDSave->FileName);
    }
}
//---------------------------------------------------------------------------

