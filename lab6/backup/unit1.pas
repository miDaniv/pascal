unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls;

type
 Matrix = Array[1..3,1..3] of Real;
 Vector = Array[1..3] of Real;

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

{$R *.lfm}

{ TForm1 }

Function determinant(a: Matrix) :Real;
Begin
  determinant := a[1,1] * a [2,2] * a[3,3] + a[1,2] * a[2,3] * a[3,1] + a[2,1] * a[3,2] * a[1,3]
  - a[3,1] * a[2,2] * a[1,3] - a[3,2] * a[2,3] * a[1,1] - a[2,1] * a[1,2] * a[3,3];
end;

Function tempMatrix(a: Matrix; b: Vector; j: Integer) : Matrix;
Var i: Integer;
begin
      For i:=1 to 3 do
      begin
      a[i, j] := b [i];
      end;
         tempMatrix := a;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Close
end;

procedure TForm1.Button1Click(Sender: TObject);
Var N : Integer;
Begin
N := StrToInt(Edit1.Text);
StringGrid1.ColCount := N;
StringGrid1.RowCount := N;
StringGrid2.rowCount := N;
StringGrid3.rowCount := N;
end;

procedure TForm1.Button2Click(Sender: TObject);
Var a : Matrix;
 b, x : Vector;
i, j, N: Integer;
begin
 //input
N := StrToInt(Edit1.Text);
 For i:=1 to N do
 For j:=1 to N do
 Begin
 a[i,j] := StrToFloat(StringGrid1.Cells[j - 1,i - 1]);
 b[j] := StrToFloat(StringGrid2.Cells[0,j - 1]);
 End;
 // procedure
 if Abs(determinant(a)) <= 0.00000001 then
 begin
 ShowMessage('Determinant = 0');
 exit;
 end;
 x[1] := determinant(tempMatrix(a,b,1))/determinant(a);
 x[2] := determinant(tempMatrix(a,b,2))/determinant(a);
 x[3] := determinant(tempMatrix(a,b,3))/determinant(a);

 // output
 For i:=1 to N do
 Begin
 StringGrid3.Cells[0,i-1]:=FloatToStr(x[i]);
 End;
end;

end.

