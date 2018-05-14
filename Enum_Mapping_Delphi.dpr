program Enum_Mapping_Delphi;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  TTipoOperacao = (toSomar, toSubtrair, toMultiplicar, toDividir);
  TTipoOperacaoMapping = array[TTipoOperacao] of string;

const
  aTIPOOPERACAO: TTipoOperacaoMapping = ('+', '-', '*', '/');

begin
  try
    Writeln('[OPERAÇÕES]' + #13#10 +
    'Soma: ' + aTIPOOPERACAO[toSomar] + #13#10 +
    'Subtração: ' + aTIPOOPERACAO[toSubtrair] + #13#10 +
    'Multiplicação: ' + aTIPOOPERACAO[toMultiplicar] + #13#10 +
    'Divisão: ' + aTIPOOPERACAO[toDividir]);
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
