unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,uDTMConnection,uCadCategoria;

type
  TfrmPrincipal = class(TForm)
    mainPrincipal: TMainMenu;
    CADASTRO1: TMenuItem;
    MOVIMENTAO1: TMenuItem;
    RELATRIO1: TMenuItem;
    cliente1: TMenuItem;
    N1: TMenuItem;
    CATEGORIA1: TMenuItem;
    PRODUTO1: TMenuItem;
    N2: TMenuItem;
    mnuFechar: TMenuItem;
    VENDAS1: TMenuItem;
    CLIENTE2: TMenuItem;
    N3: TMenuItem;
    PRODUTO2: TMenuItem;
    N4: TMenuItem;
    VENDAPORDATA1: TMenuItem;
    procedure mnuFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CATEGORIA1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.CATEGORIA1Click(Sender: TObject);
begin
   frmCadCategoria    := TfrmCadCategoria.Create(self);
   frmCadCategoria.ShowModal;
   frmCadCategoria.Release;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  dtmConnection := TdtmConnection.Create(self);


  with dtmConnection.ConnectionDB do begin
    SQLHourGlass       := true;
    Protocol           := 'postgresql';
    LibraryLocation    := 'C:\Program Files (x86)\psqlODBC\1700\bin\libpq.dll';
    HostName           := '192.168.1.116';
    Port               := 5432;
    User               := 'victor';
    Password           := 'novasenha123';
    Database           := 'delphi';
    Connected          := true;
  end;


end;

procedure TfrmPrincipal.mnuFecharClick(Sender: TObject);
begin
   //Close;
   Application.Terminate;

end;

end.
