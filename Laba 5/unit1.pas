unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
Var a, b: Real;
   Kmax: Integer; m, k: Byte;
Function f(x: Real; k1: Byte): Real;
  Begin
  Case k1 of
  0: f := x * x - 4.0;
  1: f := 3.0 * x - 4.0 * ln(x) - 5.0;
  2: f := 5.0 * x - 12.0;
  End;
  end;

  Function fp(x, d: Real;k1: byte): Real;
  Begin
  fp := (f(x + d, k1) - f(x, k1)) / d;
  End;
  Function f2p(x, d:real;k1: byte): Real;
  Begin
  f2p := (f(x + d, k1) + f( x - d, k1) - 2 * f(x, k1)) / ( d * d );
  End;

  Function MPD (a, b, Eps: Real;k1: byte;Var L: Integer): Real;
  Var c, Fc: Real;
  Begin
  While ( b - a > Eps) do
  Begin
  c:= 0.5 * ( b - a ) + a;
  L := L + 1;
  Fc := f(c, k1);
  If (abs(Fc) < Eps) then
  Begin
  MPD := c;
  Exit
  End;
  If F(a, k1) * Fc > 0 then
  a:= c
  else b:= c
  End;
  MPD := c;
  Exit
  end;


Function MN(a, b, Eps: Real; k1: byte; Kmax: Integer; Var L: Integer):Real;
Var x, Dx, D:Real;
  i : Integer;
Begin
  Dx := 0.0;
  D := Eps / 100.0;
  x := b;
  If (f(x, k1) * f2p(x, D, k1)) < 0 then
  x := a;
  If (f(x, k1) * f2p(x, d, k1)) < 0 then
   ShowMessage('Для цього рівняння збіжність ітерацій не гарантована');
  For i := 1 to Kmax do
  Begin
   Dx := f(x, k1) / fp(x, D, k1);
   x:= x - Dx;
  If (abs(Dx) < Eps) then
  Begin
   MN := x;
   L := i;
  exit;
  end;
  end;
  ShowMessage('за задану кількість ітерацій кореня не знайдено');
  exit;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
Case ComboBox1.ItemIndex of
0: Begin
Label7.Visible := False;
Edit4.Visible := False;
end;
1: Begin
Label7.Visible := True;
Edit4.Visible := True;
end;
end;
end;


procedure TForm1.Button1Click(Sender: TObject);
Var L: Integer;
D, Eps:Real;
Begin
  L := 0;
  If Edit1.Text = ''then
  Begin
   ShowMessage('Введіть число в Edit1');
  Exit;
  end;
  a := StrToFloat(Edit1.Text);
  If Edit2.Text = '' then
  Begin
   ShowMessage('Введіть число в Edit2');
  Exit
  end;
  b := StrToFloat(Edit2.Text);
  If Edit3.Text = '' then
  Begin
   ShowMessage('Введіть число в Edit3');
  Exit
  end;
  Eps := StrToFloat(Edit3.Text);
  If a > b then
  begin
   D := a;
   a := b;
   b := D;
  Edit1.Text := FloatToStr(a);
  Edit2.Text := FloatToStr(b);
  end;
  Case ComboBox1.ItemIndex of
  0: m :=0;
  1: Begin
  m := 1;
  D:= Eps / 100.0;
  Label7.Visible := True;
  Edit4.Visible := True;
  End;
  end;
  Case ComboBox2.ItemIndex of
  0: k := 0;
  1: k := 1;
  2: k := 2;
  end;
  If m = 0 then
  If (F(a, k)) * (F(b, k)) > 0 then
  Begin
   ShowMessage('Введіть правильний інтервал[a,b]!');
   Edit1.Clear;
   Edit2.Clear;
  Exit;
  end;
  If abs(F(a, k)) < Eps then
  begin
   Edit5.Text := FloatToStr(a);
   Edit6.Text := IntToStr(L);
  exit;
  end;
  If abs(F(b, k)) < Eps then
  begin
   Edit5.Text := FloatToStr(b);
   Edit6.Text := IntToStr(L);
  Exit
  end;
  Case m of
  0: begin
   Edit5.Text := FloatToStr(MPD(a, b, Eps, k, L));
   Edit6.Text := IntToStr(L);
   Edit7.Text := FloatToStrF(f(MPD(a, b, Eps, k, L), k), ffNumber, 8, 10);
   Label10.Caption :='Кількість поділів =';
  Exit
  end;
  1: begin
   Kmax := StrToInt(Edit4.Text);
   Edit5.Text := FloatToStr(MN(a,b,Eps,k,Kmax,L));
   Edit6.Text := IntToStr(L);
   Edit7.Text := FloatToStrF(f(MN(a,b,Eps,k,Kmax,L), k), ffNumber, 8, 10);
   Label10.Caption :='Кількість ітерацій =';
  end;
  end
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
  Edit7.Clear;
  Case ComboBox1.ItemIndex of
  0: Begin
  Label7.Visible := False;
  Edit4.Visible := False;
  end;
  1: Begin
  Label7.Visible := True;
  Edit4.Visible := True;
  end;
  end;
  end;

end.

