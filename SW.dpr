program SW;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  cep in 'cep.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
