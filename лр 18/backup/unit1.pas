unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfMain }

  TfMain = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
      procedure MyPrivate;
  public

  end;

var
  fMain: TfMain;

implementation

{$R *.lfm}

{ TfMain }

procedure Udvoenie(st: string);
var
  r: real;
begin
    r:= StrToFloat(st);
    r:= r * 2;
    ShowMessage(FloatToStr(r));
end;

procedure TfMain.Button1Click(Sender: TObject);
begin
    Udvoenie(Edit1.Text);
end;
function FuncUdvoenie(st: string): string;
var
  r: real;
begin
   r:= StrToFloat(st);
   r:= r * 2;
   Result:= FloatToStr(r);
end;
procedure TfMain.Button2Click(Sender: TObject);
begin
   ShowMessage(FuncUdvoenie(Edit1.Text));
end;
procedure UdvoeniePoSsilke(var r: real);
begin
  r:= r * 2;
end;
procedure TfMain.Button3Click(Sender: TObject);
var
  myReal: real;
begin
  myReal:= StrToFloat(Edit1.Text);
  UdvoeniePoSsilke(myReal);
  ShowMessage(FloatToStr(myReal));
end;

procedure TfMain.Button4Click(Sender: TObject);
begin
 MyPrivate;
end;

procedure TfMain.MyPrivate;
   var
  r: real;
begin
  r:= StrToFloat(Edit1.Text);
  r:= r * 2;
  ShowMessage(FloatToStr(r));
end;




end.

