unit formPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cliente, pessoa, endereco;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
lCliente1, lCliente2, lCliente3: TCliente;
lPessoa1: TPessoa;
begin
  lPessoa1 := TPessoa.Create;
  lPessoa1.Nome := 'Douglas';
  lPessoa1.DataNascimento := '01/01/2001';

  lCliente1 := TCliente.Create;
  lCliente2 := TCliente.Create('Carlos Eduardo');
  lCliente3 := TCliente.Create(lPessoa1);
  try
    Memo1.Lines.Add('Cliente1: ' + lCliente1.Nome);
    Memo1.Lines.Add('Endere�o Cliente1: ' + lCliente1.Endereco.Logradouro + ' - ' + lCliente1.Endereco.Numero);
    Memo1.Lines.Add('Cliente2: ' + lCliente2.Nome);
    Memo1.Lines.Add('Cliente3: ' + lCliente3.Nome + ' - ' + lCliente3.DataNascimento);
  finally
    lCliente1.Free;
    lCliente2.Free;
    lCliente3.Free;
    lPessoa1.Free;
  end;

  end;

end.
