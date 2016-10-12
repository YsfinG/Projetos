unit uFuncoes;

interface

uses
  Forms, SysUtils, Windows;

  procedure Mensagem(ATexto: string; AIcon: Integer);
  function Pergunta(ATexto: string; ADefButton: Integer): Boolean;

implementation

procedure Mensagem(ATexto: string; AIcon: Integer);
var
  xTitulo: PChar;
begin
  if AIcon = MB_ICONINFORMATION then
     xTitulo := 'Informa��o'
  else if AIcon = MB_ICONWARNING then
     xTitulo := 'Aten��o'
  else
     xTitulo := 'Erro';

  Application.MessageBox(PChar(Trim(ATexto)), xTitulo, AIcon+MB_OK);
end;

function Pergunta(ATexto: string; ADefButton: Integer): Boolean;
begin
   if Application.MessageBox(PChar(Trim(ATexto)), 'Confirma��o',
      MB_ICONQUESTION+MB_YESNO+ADefButton) = ID_YES then
      Result := True
   else
      Result := False;
end;

end.
