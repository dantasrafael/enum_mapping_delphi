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
    Writeln('[OPERA��ES]' + #13#10 +
    'Soma: ' + aTIPOOPERACAO[toSomar] + #13#10 +
    'Subtra��o: ' + aTIPOOPERACAO[toSubtrair] + #13#10 +
    'Multiplica��o: ' + aTIPOOPERACAO[toMultiplicar] + #13#10 +
    'Divis�o: ' + aTIPOOPERACAO[toDividir]);
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
