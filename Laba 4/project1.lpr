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
   f := 3 * x - 4 * ln(x) - 5;
  End;

  Function fp(x, D: Real): Real;
  Begin
   fp := (f( x + D ) - f(x)) / D;
  End;

  Function f2p(x, D: Real): Real;
  Begin
   f2p := (fp( (x + D), D ) - fp(x,D)) / D;
  End;

  Var a, b, D, Dx, x, Eps: Real;
  Var Kmax, i: Integer;
  Begin
    Write('Inpute left border  =>');
    Readln(a);

    Write('Inpute right border  =>');
    Readln(b);

    Write('Inpute Eps  =>');
    Readln(Eps);

    Write('Inpute Kmax  =>');
    Readln(Kmax);

    D := Eps / 1000.0;

    x:= b;

    If f(x) * f2p(x, D) < 0 then
    begin;
     x := a;
    End;
    if abs(f(x) * f2p(x, D)) < Eps then
    Begin
       Writeln(' For a given equation, the convergence of Newton''s method is not guaranteed ');
       Readln;
       Halt;
    End;

    For i:= 1 to Kmax do
     Begin;
      Dx := f(x) / fp(x,D);
      x:= x - Dx;
      If abs(Dx) < Eps then
       Begin;
             Writeln('x = ', x:8:2);
             Readln;
             Halt;
       end;
     end;
     Writeln('No roots');
     Readln;
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

