unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Memo1: TMemo;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses cep;

{$R *.dfm}

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  CEP: CEPServicePort;
  lista: TStringList;
  strCEP: string;
begin
  if MaskEdit1.Text = '   =  ' then
    exit;
  CEP := GetCEPServicePort();
  StrCEP := StringReplace(MaskEdit1.Text, '-', '', []);
  Memo1.Text := CEP.obterLogradouroAuth(strCEP, 'ctanet', 'ctanet');

  try
    lista := TStringList.Create;
    if pos(',', Memo1.Text) > 0 then
      begin
        ExtractStrings([','], [' '], Pchar(Memo1.Text), lista);
        Edit1.Text := lista.Strings[0];
        Edit2.Text := lista.Strings[2];
        Edit3.Text := lista.Strings[1];
        Edit4.Text := lista.Strings[3];
      end
    else
      begin
        edit1.Clear;
        edit2.Clear;
        edit3.Clear;
        edit4.Clear;
      end;
    finally
      lista.Free;
    end;
  end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  MaskEdit1.Clear;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  MaskEdit1.SetFocus;

end;

procedure TForm1.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    SpeedButton1.click;
end;

end.
