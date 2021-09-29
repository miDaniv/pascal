unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    B_Rozv: TButton;
    B_End: TButton;
    In_a: TEdit;
    In_b: TEdit;
    In_c: TEdit;
    L_X1: TLabel;
    L_X2: TLabel;
    L_a: TLabel;
    L_b: TLabel;
    L_c: TLabel;
    procedure B_EndClick(Sender: TObject);
    procedure B_RozvClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.B_EndClick(Sender: TObject);
begin
Close
end;

procedure TForm1.B_RozvClick(Sender: TObject);
 Var a,b,c,x,x1,x2,D :Real;
  Begin
  a:= StrToFloat(In_a.Text);
  b:= StrToFloat(In_b.Text);
  c:= StrToFloat(In_c.Text);
  IF a = 0 then
   If b = 0 then
     Begin
       L_X1.Caption := '';
       L_X2.Caption := '';
       ShowMessage ('Рівняння несумісне');Halt
       end else
       Begin
         x1 := - c / b;
         L_X1.Caption := 'x=' + FloatToStr(x1);
         L_X2.Caption := '';
         ShowMessage('Рівняння не квадратне'); Halt
         end else
       Begin
         D := sqr(b) - 4 * a * c;
       If D < 0 then
         Begin
          L_X1.Caption := '';
          L_X2.Caption := '';
          ShowMessage ('Рівняння не має дійсних розв''язків'); Halt
         end else
          Begin
          x := -b / ( 2 * a);
          If D = 0 then
           Begin
           L_X1.Caption := 'x1= x2= ' + FloatToStr(x);
           L_X2.Caption := '';
           ShowMessage ('Рівняння має два однакові розв''язки'); Halt
           end;
          x2 := Sqrt (D) / (2 * a);
          x1 := x2 + x;
          x2 := x - x2;
          L_X1.Caption := 'x1=' + FloatToStr(x1);
          L_X2.Caption := 'x2=' + FloatToStr(x2);
        end
       end;
     end;

end.

