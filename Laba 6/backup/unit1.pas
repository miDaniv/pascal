unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids;

type Matr = Array[1..5,1..5] of Real;
Vec = Array[1..5] of Real;

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation
Var a11,a12,a13,a21,a22,a23,a31,a32,a33,b1,b2,b3,d,d1,d2,d3,x1,x2,x3: Real;
Begin
a11 := StrToFloat(StringGrid1.Cells[0,0]);
a12 := StrToFloat(StringGrid1.Cells[0,1]);
a13 := StrToFloat(StringGrid1.Cells[0,2]);
a21 := StrToFloat(StringGrid1.Cells[1,0]);
a22 := StrToFloat(StringGrid1.Cells[1,1]);
a23 := StrToFloat(StringGrid1.Cells[1,2]);
a31 := StrToFloat(StringGrid1.Cells[2,0]);
a32 := StrToFloat(StringGrid1.Cells[2,1]);
a33 := StrToFloat(StringGrid1.Cells[2,2]);
b1 := StrToFloat(StringGrid2.Cells[0,0]);
b2 := StrToFloat(StringGrid2.Cells[0,1]);
b3 := StrToFloat(StringGrid2.Cells[0,2]);

d:=a11*a22*a33-a11*a23*a32
  -a12*a21*a33+a12*a23*a31
  +a13*a21*a32-a13*a22*a31;

d1:=b1*a22*a33 - b1*a23*a32
  -a12*b2*a33 + a12*a23*b3
  +a13*b2*a32 - a13*a22*b3;

d2:=a11*b2*a33 - a11*a23*b3
  -b1*a21*a33 + b1*a23*a31
  +a13*a21*b3 - a13*b2*a31;

d3:=a11*a22*b3 - a11*b2*a32
  -a12*a21*b3 + a12*b2*a31
  +b1*a21*a32 - b1*a22*a31;


x1 := d1 / d;
x2 := d2 / d;
x3 := d3 / d;

x1 := StrToFloat(StringGrid3.cells[0,0])
x2 := StrToFloat(StringGrid3.cells[0,1])
x3 := StrToFloat(StringGrid3.cells[0,2])


{$R *.lfm}

{ TForm1 }

procedure TForm1.Button3Click(Sender: TObject);
begin
  Close
end;

procedure TForm1.Button1Click(Sender: TObject);
Var N : Integer;
begin
N := StrToInt(Edit1.Text);
StringGrid1.ColCount := N;
StringGrid1.RowCount := N;
StringGrid2.rowCount := N;
StringGrid3.rowCount := N;
end;

procedure TForm1.Button2Click(Sender: TObject);
 Var A : Matr;
  b, x : Vec;
  i, j, N: Integer;
begin
 N := StrToInt(Edit1.Text);
  For i:=1 to N do
   For j:=1 to N do
   Begin
    a[i,j] := StrToFloat(StringGrid1.Cells[j - 1,i - 1]);
    b[j] := StrToFloat(StringGrid2.Cells[0,j - 1]);
   End;
  For i:=1 to N do
   Begin
    StringGrid3.Cells[0,i-1] := FloatToStr(x[i]);
   End;
end;

end.
