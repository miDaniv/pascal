program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp
  { you can add units after this };
Var a, b, c, x, x1, x2, D: Real;
  BEGIN
    Write('Input a b c => ');
    Readln (a, b, c);
    If a = 0 then
     If b = 0 then
      Begin
        Writeln ('The equation is not compatible');
        Readln;
        Halt
        End else
         Begin
           x := - c / b;
           Writeln('Root x= ',x:8:2);
           Readln;
           Halt
           End else
            Begin
              D := Sqr (b) - 4 *a * c;
               If D < 0 then
                Begin
                  Writeln ('The equation has no real roots');
                  Readln;
                  Halt
                  End else
                  Begin
                    x := -b / (2 * a);
                    If D = 0 then
                     Begin
                       Writeln ('Roots are equal x1=x2= ',x:8:2 );
                       Readln;
                       Halt
                       End;
                    x2 := Sqrt (D) / (2 * a);
                    x1 := X2 + x;
                    x2 := x - x2;
                    Writeln (' Roots :x1 =',x1:8:2, ' x2=',x2:8:2)
                    End
                  End;
            Readln;
           END.

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

