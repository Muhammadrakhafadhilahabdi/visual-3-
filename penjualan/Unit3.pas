unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm3 = class(TForm)
    ZConnection1: TZConnection;
    zqry1: TZQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit4: TEdit;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into karyawan values(null,"'+edit1.Text+'","'+edit2.Text+'","'+edit3.Text+'","'+edit4.Text+'")');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from karyawan');
zqry1.Open;
Showmessage('DATA BERHASIL DI SIMPAN');

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('Update karyawan set nm_karyawan =��+edit1.jk+��,harga = ��+edit2.text+��,no_tlp = ��+edit3.text+��,alamat = ��+edit4.text+�� where id= 1');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from karyawan');
zqry1.Open;

end;

procedure TForm3.Button3Click(Sender: TObject);
begin
zqry1.SQL.Clear;
  zqry1.SQL.Add('DELETE FROM karyawan WHERE 1');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from karyawan');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');

end;

end.
