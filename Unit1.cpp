//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
vector <bird> guide;
int iMax=0,iCur=0;

//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ButtonAddClick(TObject *Sender)
{
guide.push_back(bird());
strcpy(guide[iMax].name,((AnsiString)EditName->Text).c_str());
strcpy(guide[iMax].family, AnsiString(EditFamily->Text).c_str());
strcpy(guide[iMax].habitat, AnsiString(EditHabitat->Text).c_str());
guide[iMax].age = EditAge->Text.ToIntDef(0);
strcpy(guide[iMax].gender, AnsiString(EditGender->Text).c_str());
iCur = iMax; iMax++;
LabelNum->Caption = IntToStr(iMax);

}
//---------------------------------------------------------------------------
void __fastcall TForm1::ShowRecord()
{
EditName->Text=guide[iCur].name;
EditFamily->Text=guide[iCur].family;
EditHabitat->Text=guide[iCur].habitat;
EditAge->Text=IntToStr(guide[iCur].age);
EditGender->Text=guide[iCur].gender;
LabelNum->Caption=IntToStr(iCur+1);
}
void __fastcall TForm1::ButtonPrevClick(TObject *Sender)
{
if(iCur<=0) return;
iCur--; ShowRecord();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ButtonNextClick(TObject *Sender)
{
if(iCur>=iMax-1) return;
iCur++; ShowRecord();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ButtonOpenClick(TObject *Sender)
{
	OpenDialog1->Execute();
	FILE *f = fopen(AnsiString(OpenDialog1->FileName).c_str(), "rb");
		if( f==0 )
		{
		ShowMessage("База данных не найдена!!");return;
		}
			for(int i=0;i<guide.max_size();i++)
				{
					bird s;
					fread(&s,sizeof(bird),1,f);
					if(feof(f)) break;
					guide.push_back(s);
				}
	fclose(f);
	iMax=guide.size();
	iCur=0;
	ShowRecord();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ButtonSaveClick(TObject *Sender)
{
		SaveDialog1->Execute();
		FILE *f = fopen(AnsiString(SaveDialog1->FileName).c_str(), "wb");
			if( f ) fwrite(&guide[0],sizeof(bird),iMax,f);
			else ShowMessage("Сохранить базу данных не удалось!!");
		fclose( f );
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ButtonClearClick(TObject *Sender)
{
	EditName->Clear();
	EditFamily->Clear();
	EditHabitat->Clear();
	EditAge->Clear();
	EditGender->Clear();
		return;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ButtonChangeClick(TObject *Sender)
{
try
	{
			strcpy(guide[iCur].name,((AnsiString)EditName->Text).c_str());
			strcpy(guide[iCur].family,((AnsiString)EditFamily->Text).c_str());
			strcpy(guide[iCur].habitat,((AnsiString)EditHabitat->Text).c_str());
			guide[iCur].age = EditAge->Text.ToIntDef(0);
			strcpy(guide[iCur].gender,((AnsiString)EditGender->Text).c_str());
   }
catch (...)
   {
		 ShowMessage("Таблица пуста!");
   }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ButtonDeleteClick(TObject *Sender)
{
		if(guide.empty())
		{
			ShowMessage("Все записи удалены!");
		return;
		}
	guide.erase(guide.begin()+iCur);
	 if(iMax==1)
	 {
		EditName->Text="";
		EditFamily->Text="";
		EditHabitat->Text="";
		EditAge->Text="";
		EditGender->Text="";
	 }

	 if(iCur == iMax-1) iCur--;
			iMax--;
			ShowRecord();
	 ShowRecord();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ButtonAgeSearchClick(TObject *Sender)
{
if (guide.empty()) {
	   ShowMessage("Записи отсутствуют!");
	   EditAgeSearch->Clear();
		return;
   }
  bird poiskAge;
  vector <bird>::iterator a;
  poiskAge.age=EditAgeSearch->Text.ToIntDef(0);
  a=find (guide.begin(),guide.end(),poiskAge);
	if (a==guide.end())
	{
	   ShowMessage("Повторите попытку! Результат не найден!");
		return;
	}
  iCur=a-guide.begin();
   ShowRecord();

  EditAgeSearch->Clear();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ButtonAgeSortClick(TObject *Sender)
{
	ShowMessage("Сортировка по возрасту.");
	if(iMax==0)
	{
		ShowMessage("Записи отсутствуют!");
		return;
	}
		sort(guide.begin(),guide.end());
		iCur=0;
		ShowRecord();
}
//---------------------------------------------------------------------------
