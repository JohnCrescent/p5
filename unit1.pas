unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var cislo,zvysok,cf:integer;
begin
  cislo:=strtoint(edit1.text);   //načíta číslo
 cf:=0;
 repeat     //oddeľuje cifry z čísla pokým sa číslo nebude rovnať 0 a nebudú už žiadne cifry, ktoré by sa dali odtrhnuť
    zvysok:=cislo mod 10;         //mod nam dá zvyšok
    cf:=cf+zvysok;            //vypočíta ciferný súčet, tým že pripočíta dalšiu cifru(zvysok po delení 10 z predchádzajúceho kroku)
    cislo:=cislo div 10;
 until cislo=0;
label3.caption:='Ciferný súčet čísla je '+inttostr(cf);  //vypíše výsledok
end;

end.

