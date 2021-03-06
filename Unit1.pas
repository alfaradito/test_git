unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZConnection, XPMan, StdCtrls, ZAbstractConnection;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    XPManifest1: TXPManifest;
    kon: TZConnection;
    zview: TZQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Zfree: TZQuery;
    Button5: TButton;
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses DateUtils;

{$R *.dfm}

procedure TForm1.Button5Click(Sender: TObject);
begin
  try
    with kon do
      begin
        Connected :=false;
        Database  :='db_mhs';
        HostName  :='localhost';
        LoginPrompt:=false;
        User      :='root';
        Password  :='';
        Protocol  :='mysql-5';
        Connected :=true;
      end;
      ShowMessage('Koneksi Sukses');
    With zview do
      begin
        Active:=false;
        sql.Clear;
        Connection:=kon;
        close;
        sql.Add('SELECT * FROM tb_mhs');
        ExecSQL;
        Active:=true;
      end;
  except
    ShowMessage('Koneksi database gagal');
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ShowMessage('ow yeahh');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    try
    With Zfree do
      begin
        Active:=false;
        sql.Clear;
        Connection:=kon;
        close;
        sql.Text:='INSERT INTO tb_mhs values(:nim, :nam, :jur, :fak)';
        ParamByName('nim').AsString:=edit1.Text;
        ParamByName('nam').AsString:=edit2.Text;
        ParamByName('jur').AsString:=edit3.Text;
        ParamByName('fak').AsString:=edit4.Text;
        ExecSQL;
      end;
      ShowMessage('Berhasil disimpan');
  except
    ShowMessage('gagal simpan');
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin

    try
    With Zfree do
      begin
        Active:=false;
        sql.Clear;
        Connection:=kon;
        close;
        sql.Text:='UPDATE tb_mhs SET nama=:nam, jurusan=:jur, fakultas=:fak where nim=:nim';
        ParamByName('nim').AsString:=edit1.Text;
        ParamByName('nam').AsString:=edit2.Text;
        ParamByName('jur').AsString:=edit3.Text;
        ParamByName('fak').AsString:=edit4.Text;
        ExecSQL;
      end;
      ShowMessage('Berhasil diupdate');
  except
    ShowMessage('gagal update');
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
try
    With Zfree do
      begin
        Active:=false;
        sql.Clear;
        Connection:=kon;
        close;
        sql.Text:='DELETE FROM tb_mhs where nim=:nim';
        ParamByName('nim').AsString:=edit1.Text;
        ExecSQL;
      end;
      ShowMessage('Berhasil di hapus');
  except
    ShowMessage('gagal dihapus');
  end;
end;

end.
