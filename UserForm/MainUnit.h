//---------------------------------------------------------------------------
#ifndef MainUnitH
#define MainUnitH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ComCtrls.hpp>
//---------------------------------------------------------------------------
class TFUserRegistrationForm : public TForm
{
__published:	// IDE-managed Components
	TGroupBox *GBRegister;
	TLabel *LUsername;
	TEdit *EUsername;
	TLabel *LEmailAddress;
	TEdit *EEmailAddress;
	TLabel *LPassword;
	TEdit *EPassword;
	TLabel *LFullName;
	TEdit *EFullName;
	TEdit *EAge;
	TUpDown *UDAge;
	TButton *BSend;
	TRadioButton *RBGenderFemale;
	TLabel *LAge;
	TLabel *LGender;
	TEdit *EAddress;
	TLabel *LAddress;
	TLabel *LCity;
	TComboBox *CBCity;
	TCheckBox *CBAggreement;
	TCheckBox *CBPrivacy;
	TButton *BClear;
	TLabel *LBirthday;
	TLabel *LZipCode;
	TEdit *EZipCode;
	TDateTimePicker *DTPBirthday;
	TRadioButton *RBGenderMale;
	TRadioButton *RadioButton1;
	TStaticText *STAgreement;
	TStaticText *STPrivacy;
	TLabel *LProfession;
	TLabel *LInterests;
	TListBox *LBInterests;
	TComboBox *CBProfession;
	void __fastcall BSendClick(TObject *Sender);
	void __fastcall BClearClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFUserRegistrationForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFUserRegistrationForm *FUserRegistrationForm;
//---------------------------------------------------------------------------
#endif
//---------------------------------------------------------------------------
