unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls;

type
 Matrix = Array[1..5,1..5] of Real;
 Vector = Array[1..5] of Real;

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
    Var A : Matrix;
    b, x : Vector;
    i, j, k, p, n: integer;
    m, S, t: real;
    begin
    N := StrToInt(Edit1.Text);
    For i:=1 to N do
    For j:=1 to N do
    Begin
    a[i,j] := StrToFloat(StringGrid1.Cells[j - 1,i - 1]);
    b[j] := StrToFloat(StringGrid2.Cells[0,j - 1]);
    End;
  begin
  k:= 1;
  while true do
  begin
  i:= k + 1;
  if (a[k, k] = 0) then
  begin
  {перестановка}
  p:= k;
  while true do
  begin
  if abs(a[i, k]) > abs(a[p, k]) then p:= i;
  if i = n then break;
  i:= i + 1;
  continue;
  end;
  if p= k then i:= k + 1
  else
  begin
  j:= k;
  while true do
  begin
  t:= a[k, j];
  a[k, j]:= a[p, j];
  a[p, j]:= t;
  if j = n then break;
  j:= j + 1;
  continue;
  end;
  t:= b[k];
  b[k]:= b[p];
  b[p]:= t;
  end;
  end; // кінець перестановки
  while true do
  begin
  m:=a[i, k] / a[k, k];
  a[i, k]:= 0;
  j:= k + 1;
  while true do
  begin
  a[i, j]:= a[i, j] - m * a[k, j];
  if j = n then break;
  j:= j + 1;
  continue;
  end;
  b[i]:= b[i] - m * b[k];
  if i = n then break;
  i:= i + 1;
  continue;
  end;
  if k= n - 1 then break;
  k:= k + 1;
  continue;
  end;
  {Перевіряємо чи існує корінь}
  if a[n, n] <> 0 then
  begin
  x[n]:= b[n] / a[n, n];
  i:= n - 1;
  while true do
  begin
  j:= i + 1;
  S:= 0;
  while true do
  begin
  S:= S - a[i, j] * x[j];
  if j = n then break;
  j:= j + 1;
  continue;
  end;
  x[i]:= (b[i] + S) / a[i, i];
  if i = 1 then break;
  i:= i - 1;
  continue;
  end;
    For i:=1 to N do
    Begin
    StringGrid3.Cells[0,i-1]:=FloatToStr(x[i]);
    End;
  end
  else
  if b[n] = 0 then
  ShowMessage('Systema rivnyannya ne maye rozv''yazkiv')
  else
  ShowMessage('bezlich rozvyazkiv');
  end;
  end;
  end.

end.

