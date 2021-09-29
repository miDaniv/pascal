program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp
  { you can add units after this };
Var x, y, x1, y1, x2, y2, x3, y3, S1, S2, S3, S, p, p1, p2, p3, a, b, c, a1, b1, c1, e: Real;
      Begin
         Write('Inpute x, y,  =>');
         Readln(x, y);
         Write('Inpute x1, y1,  =>');
         Readln(x1, y1);
         Write('Inpute x2, y2  =>');
         Readln(x2, y2);
         Write('Inpute x3, y3  =>');
         Readln(x3, y3);
         e := 0.0001;
         a := Sqrt(Sqr(x2-x1)+Sqr(y2-y1));
         b := Sqrt(Sqr(x3-x2)+Sqr(y3-y2));
         c := Sqrt(Sqr(x1-x3)+Sqr(y1-y3));
         p := (a+b+c)/2;
         S := Sqrt(p*(p-a)*(p-b)*(p-c));

         a1 := Sqrt(Sqr(x1-x)+Sqr(y1-y));
         b1 := Sqrt(Sqr(x2-x)+Sqr(y2-y));
         c1 := Sqrt(Sqr(x3-x)+Sqr(y3-y));
         p1 := (a1+b1+a)/2;

         S1 := Sqrt(p1*(p1-a1)*(p1-b1)*(p1-a));
         p2 := (b1+c1+b)/2;
         S2 := Sqrt(p2*(p2-b1)*(p2-c1)*(p2-b));
         p3 := (a1+c1+c)/2;
         S3 := Sqrt(p3*(p3-a1)*(p3-c1)*(p3-c));
         If (x = x1) and (y = y1) or (x = x2) and (y = y2) or (x = x3) and (y = y3) then
          Begin
          Writeln('Point O coincides with another point ');
          Readln;
          Halt
         End
         else if (S1 < e) then
          Begin
          Writeln('Point O is on the line between A and B');
          Readln;
          Halt
         End
         else if (S2 < e) then
          Begin
          Writeln('Point O is on the line between B and C');
          Readln;
          Halt
         End
         else if(S3 < e) then
          Begin
          Writeln('Point O is on the line between A and C');
          Readln;
          Halt
         End
         else if ((S1 + S2 + S3) + e >= S) and ((S1 + S2 + S3) - e <= S)  then
           Begin
           Writeln ('Point O is inside');
           Readln;
           Halt
         End
         else
         Begin
         Writeln ('Point O is outside');
         Readln;
         Halt
         End

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

