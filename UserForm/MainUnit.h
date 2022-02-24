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
	TLabel *LPassword;
	TEdit *EPassword;
	TLabel *LFullName;
	TEdit *EFullName;
	TLabel *LEmailAddress;
	TEdit *EEmailAddress;
	TLabel *LBirthday;
	TDateTimePicker *DTPBirthday;
	TLabel *LAge;
	TEdit *EAge;
	TUpDown *UDAge;
	TLabel *LGender;
	TRadioButton *RBGenderNotSpecified;
	TRadioButton *RBGenderFemale;
	TRadioButton *RBGenderMale;
	TLabel *LAddress;
	TEdit *EAddress;
	TLabel *LCity;
	TComboBox *CBCity;
	TLabel *LZipCode;
	TEdit *EZipCode;
	TCheckBox *CBAggreement;
	TStaticText *STAgreement;
	TCheckBox *CBPrivacy;
	TStaticText *STPrivacy;
	TLabel *LProfession;
	TComboBox *CBProfession;
	TLabel *LInterests;
	TListBox *LBInterests;
	TButton *BSend;
	TButton *BClear;
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
