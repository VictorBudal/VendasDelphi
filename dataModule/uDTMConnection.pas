unit uDTMConnection;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Phys.PG, FireDAC.Phys.PGDef;

type
  TdtmConnection = class(TDataModule)
    ConnectionDB: TZConnection;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmConnection: TdtmConnection;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


end.
