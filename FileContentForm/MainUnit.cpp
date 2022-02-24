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
void __fastcall TFFileContentForm::MFileOpenClick(TObject *Sender)
{
	if (ODOpen->Execute() == true)
	{
		MContent->Lines->LoadFromFile(ODOpen->FileName);
	}
}
//---------------------------------------------------------------------------
void __fastcall TFFileContentForm::MFileSaveClick(TObject *Sender)
{
	if (SDSave->Execute() == true)
	{
		MContent->Lines->SaveToFile(SDSave->FileName);
    }
}
//---------------------------------------------------------------------------

void __fastcall TFFileContentForm::MExitProgramClick(TObject *Sender)
{
	if (Application->MessageBox(L"Are you sure?", L"Exit", MB_YESNO | MB_ICONEXCLAMATION | MB_DEFBUTTON2) == IDYES)
	{
		Application->Terminate();
    }
}
//---------------------------------------------------------------------------

