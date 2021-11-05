unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    procedure FormPaint(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure GrafFunc;
Type Vector = Array [0..1000] of Real;
Var Xpoints,Ypoints :Vector;
MaxX,MaxY,MinX,MinY,Kx,Ky,Zx,Zy :Real;
leftSide,rightSide,step,Kry,Krx,xx,yy,Gx,Gy :Real;
pointsCount,i,KrokX,KrokY, margin :Integer;

Function f (x :Real) :Real; // Опис функції f := x * sin (x)
Begin
f := x * sin (x);
End;

Begin
pointsCount := 1000;
leftSide := -25;
rightSide := 25; // Межі зміни аргументу

step := (rightSide - leftSide) / (pointsCount);

Gx:=0;
Gy:=0;

Xpoints[0] := leftSide;

For i := 0 to pointsCount - 1 do // Табулювання функції f:=x*sin (x)
Begin
  Ypoints[i] := f(Xpoints[i]);
  Xpoints[i+1] := Xpoints[i] + step;
End;

margin := 50; // Відступ на 50 пікселів від краю форми

MinX := Xpoints[0];
MaxX := Xpoints[pointsCount-1];

MinY := MinX; //Ypoints[0];
MaxY := MaxX; //Ypoints[0];

For i:=1 to pointsCount-1 do  //  пошук максимального та мінімального Y
Begin
  If MaxY < Ypoints[i] then
          MaxY := Ypoints[i];

  If MinY > Ypoints[i] then
          MinY := Ypoints[i]
End;

// кількість пікселів в одиниці по x та y
Kx := (Form1.ClientWidth - 2 * margin) / (MaxX - MinX);
Ky := (Form1.ClientHeight - 2 * margin) / (MinY - MaxY);

Zx := (Form1.ClientWidth * MinX - margin * (MinX + MaxX)) / (MinX - MaxX);
Zy := (Form1.ClientHeight * MaxY - margin * (MinY + MaxY)) / (MaxY - MinY);

If MinX * MaxX <= 0 then
        Gx:=0;

If ( MinX * MaxX > 0 ) then
        Gx := MinX;

If ( MinX * MaxX > 0 ) and ( MinX < 0) then
        Gx := MaxX;

If MinY * MaxY <= 0 then
        Gy:=0;

If ( MinY * MaxY > 0 ) and ( MinY > 0) then
        Gy := MinY;

If ( MinY * MaxY > 0 ) and ( MinY < 0) then
        Gy := MaxY;

// draw
with form1.Canvas do
Begin

Pen.Width := 3;
Pen.Color:=clBlack;
// центральна горизонтальна
MoveTo(margin, Round(Ky * Gy + Zy));
LineTo (Form1.ClientWidth-margin, Round(Ky*Gy+Zy));

// центральна вертикальна
MoveTo(Round(Kx * Gx + Zx), margin);
LineTo (Round(Kx * Gx + Zx),Form1.ClientHeight - margin);

KrokX := (Form1.ClientWidth - 2 * margin) div 11;
KrokY := (Form1.ClientHeight - 2 * margin) div 11;

Pen.Width := 1;
for i:= -5 to 5 do
begin
 // горизонтальні
MoveTo(margin, Round(Ky * Gy + Zy) + i * KrokY);
LineTo(Form1.ClientWidth - margin, Round(Ky * Gy + Zy) + i * KrokY);

 // вертикальні
MoveTo(Round(Kx * Gx + Zx) + i * KrokX ,margin);
LineTo(Round(Kx * Gx + Zx) + i * KrokX , Form1.ClientHeight - margin);
end;

xx := minx;
yy := maxy;

Krx := (MaxX - MinX) / 10;
Kry := (MaxY - MinY) / 10;

For i := 0 to 11 do
Begin
TextOut(Round(Kx * Gx + Zx) - 5 * KrokX + i * KrokX - 5 ,Form1.ClientHeight - margin + 5 ,FloatToStrF(xx,ffGeneral,2,2));

TextOut(margin - 5, Round(Ky * Gy + Zy) - 5 * KrokY + i * KrokY,FloatToStrF(yy,ffGeneral,2,2));
xx := xx + KrX;
yy := yy - KrY;
End;
//
TextOut(Form1.ClientWidth div 2 - 50,Form1.ClientHeight-30 ,'Graph of a function y = x * sin (x)');
//

Pen.Width := 2;
Pen.Color:=clRed;
MoveTo (Round (Kx * Xpoints[0] + Zx),Round (Ky * Ypoints[0] + Zy));
For i:=0 to pointsCount-1 do // Цикл для побудови графіка
    LineTO(Round (Kx * Xpoints[i] + Zx), Round (Ky * Ypoints[i] + Zy));
End;
end;
procedure TForm1.FormPaint(Sender: TObject);
begin
GrafFunc;
end;

end.

