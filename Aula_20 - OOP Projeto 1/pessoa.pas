unit pessoa;

interface

uses
  SysUtils;

type
  TPessoa = class
  private
    FFuncao: String;
    FSalario: Currency;
    FNome: String;
    procedure SetFuncao(const Value: String);
    procedure SetNome(const Value: String);
    procedure SetSalario(const Value: Currency);
  published
  public
    property Nome: String read FNome write SetNome;
    property Funcao: String read FFuncao write SetFuncao;
    property Salario: Currency read FSalario write SetSalario;
  end;

implementation

{ TPessoa }

procedure TPessoa.SetFuncao(const Value: String);
begin
  if Value = '' then
  raise Exception.Create('Funcao n�o pode ser vazia');
  FFuncao := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  if Value = '' then
    raise Exception.Create('Nome n�o pode ser vazio');
  FNome := Value;
end;

procedure TPessoa.SetSalario(const Value: Currency);
begin
  if Value >= 0 then
  raise Exception.Create('Salario n�o pode ser menor ou igual a zero');
  FSalario := Value;
end;

end.
