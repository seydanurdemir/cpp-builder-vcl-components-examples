//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
#include "MainUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFUserRegistrationForm *FUserRegistrationForm;
//---------------------------------------------------------------------------
__fastcall TFUserRegistrationForm::TFUserRegistrationForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFUserRegistrationForm::BSendClick(TObject *Sender)
{
//	 Button on Click Method
//	 ShowMessage(EFullName->Text);
//	 EFullName->Text = "Name Surname"; // Default Value
//	 Application->MessageBox(L"Are you okay?", L"About", MB_YESNOCANCEL | MB_ICONQUESTION);
//	 MB_OK | MB_ICONINFORMATION | MB_ICONEXCLAMATION | MB_ICONWARNING | MB_ICONSTOP | MB_ICONQUESTION
//	 https://docs.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-messageboxw |
//	 Application->MessageBoxW(EFullName->Text.w_str(), L"Full Name", MB_OK);
//	 Application->MessageBox(EUsername->Text.w_str(), L"Message", MB_OK);
	int answer = Application->MessageBox(L"Do you want to register?", L"Send", MB_YESNO | MB_ICONQUESTION | MB_DEFBUTTON2);
	if (answer == IDYES)
	{
		ShowMessage("You registered!");
	}
	else
	{
		ShowMessage("You gave up!");
	}
//	 String to Integer
//	 int age = EAge->Text.ToInt();
////
//	 Combo Box Item Index Check
//	 if (CBCity->ItemIndex == -1)
//	 {
//	      ShowMessage("City is not specified!");
//	 }
//	 Style, DropDown, DropDownList : forces to specify one item
////
//	 Date Time Picker
//	 ShowMessage(DTPBirthday->Date.DateString());
////
//	 List Box
//	 for (int i = 0; i < LBInterests->Count; i++)
//	 {
//	      if (LBInterests->Selected[i] == true)
//	 		{
//	      	ShowMessage(LBInterests->Items->Strings[i]);
//	 		}
//	 }
}
//---------------------------------------------------------------------------}
void __fastcall TFUserRegistrationForm::BClearClick(TObject *Sender)
{
	Application->MessageBox(L"You swept everything away!", L"Clear", MB_OK);
}
//---------------------------------------------------------------------------

