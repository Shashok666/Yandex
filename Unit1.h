//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Dialogs.hpp>
#include <vector>
#include <algorithm>
#include <functional>
struct bird{
		char name[30];
		char family[30];
		char habitat[30];
		int age;
		char gender[10];
		friend bool operator<(const bird& a,const bird& b)
		{ return a.age<b.age; }         // for sort by age
		friend bool operator==(const bird& a,const bird& b)
		{ return a.age==b.age; }        // for search by age
};
using namespace std;
extern vector <bird> guide;
extern int iMax,iCur;

//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TLabel *LabelName;
	TEdit *EditName;
	TLabel *LabelFamily;
	TEdit *EditFamily;
	TLabel *LabelHabitat;
	TEdit *EditHabitat;
	TLabel *LabelAge;
	TEdit *EditAge;
	TLabel *LabelGender;
	TEdit *EditGender;
	TLabel *LabelNum;
	TButton *ButtonAdd;
	TButton *ButtonPrev;
	TButton *ButtonNext;
	TSaveDialog *SaveDialog1;
	TOpenDialog *OpenDialog1;
	TButton *ButtonOpen;
	TButton *ButtonSave;
	TButton *ButtonChange;
	TButton *ButtonDelete;
	TButton *ButtonClear;
	TEdit *EditAgeSearch;
	TButton *ButtonAgeSearch;
	TButton *ButtonAgeSort;
	void __fastcall ButtonAddClick(TObject *Sender);
	void __fastcall ButtonPrevClick(TObject *Sender);
	void __fastcall ButtonNextClick(TObject *Sender);
	void __fastcall ButtonOpenClick(TObject *Sender);
	void __fastcall ButtonSaveClick(TObject *Sender);
	void __fastcall ButtonClearClick(TObject *Sender);
	void __fastcall ButtonChangeClick(TObject *Sender);
	void __fastcall ButtonDeleteClick(TObject *Sender);
	void __fastcall ButtonAgeSearchClick(TObject *Sender);
	void __fastcall ButtonAgeSortClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
void __fastcall ShowRecord();
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
