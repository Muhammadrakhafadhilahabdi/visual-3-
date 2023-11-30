unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm5 = class(TForm)
    ZConnection1: TZConnection;
    zqry1: TZQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into penjualan values(null,"'+edit1.Text+'","'+edit2.Text+'")');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from penjualan');
zqry1.Open;
Showmessage('DATA BERHASIL DI SIMPAN');

end;

procedure TForm5.Button2Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('Update penjualan set nm_barang =“’+edit1.text+’”,jml_penjualan = “’+edit2.text+’” where id= 1');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from penjualan');
zqry1.Open;


end;

end.
