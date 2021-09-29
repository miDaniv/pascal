program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp
  { you can add units after this };
Function f(x: Real): Real;
Begin
 f := x * x - 4
End;

Var a, b, c, x, Eps: Real;
Var counter: Integer;
Begin
  Write('Inpute left  =>');
  Readln(a);

  Write('Inpute right  =>');
  Readln(b);

  Write('Inpute Eps  =>');
  Readln(Eps);

  counter := 0;

  if abs(f(a)) < Eps then
  begin
    Writeln('Root in point a and = ',a);
    Readln;
  end
  else if abs(f(b)) < Eps then
  begin
    Writeln('Root in point b and = ',b);
    Readln;
  end
  else if (f(a) * f(b) > 0 then
  begin
    Writeln('No roots);
    Readln;
  end
  else if f(a) * f(b) < 0 then
  begin
     repeat
           counter:= counter + 1;
           c:= ( a + b ) / 2;
           If f(a) * f(c) <= 0 then
              b := c
           Else a := c;
           until (abs(b - a) < Eps);
           x := ( a + b ) / 2;
           Writeln('x = ', x:8:2);
           Writeln('counter = ', counter);
           Readln;

  end;
  end.

type

  { TMyApplication }

  TMyApplication = class(TCustomApplication)
  protected
    procedure DoRun; override;
  public
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
    procedure WriteHelp; virtual;
  end;

{ TMyApplication }

procedure TMyApplication.DoRun;
var
  ErrorMsg: String;
begin
  // quick check parameters
  ErrorMsg:=CheckOptions('h', 'help');
  if ErrorMsg<>'' then begin
    ShowException(Exception.Create(ErrorMsg));
    Terminate;
    Exit;
  end;

  // parse parameters
  if HasOption('h', 'help') then begin
    WriteHelp;
    Terminate;
    Exit;
  end;

  { add your program here }

  // stop program loop
  Terminate;
end;

constructor TMyApplication.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);
  StopOnException:=True;
end;

destructor TMyApplication.Destroy;
begin
  inherited Destroy;
end;

procedure TMyApplication.WriteHelp;
begin
  { add your help code here }
  writeln('Usage: ', ExeName, ' -h');
end;

var
  Application: TMyApplication;
begin
  Application:=TMyApplication.Create(nil);
  Application.Title:='My Application';
  Application.Run;
  Application.Free;
end.

