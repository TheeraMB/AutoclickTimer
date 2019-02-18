unit UMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    EdtX: TEdit;
    Label1: TLabel;
    EdtY: TEdit;
    Timer1: TTimer;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    Lab_T: TLabel;
    Label3: TLabel;
    EdtD: TEdit;
    Panel1: TPanel;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
  var
  pt : tPoint;
begin
  if key = #13 then
  begin
    pt := Mouse.CursorPos;
    EdtX.text :=  IntToStr(pt.x);
    EdtY.text :=  IntToStr(pt.y);
  end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var x,y : word;
begin
  x:= StrToInt(EdtX.text);
  y:= StrToInt(EdtY.text);

  if CheckBox1.Checked then
  begin
    if now() > DateTimePicker1.time then
    begin
      SetCursorPos(x,y);
      Sleep(StrToInt(EdtD.text));
      mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
      Sleep(10);
      mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
      CheckBox1.Checked := False;
    end;
  end;
  Panel1.Caption := Formatdatetime( 'hh:mm:ss:ZZZZ',now);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  DateTimePicker1.DateTime := now();
end;

end.
