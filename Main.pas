unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Samples.Spin;

type
  TZapros = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Button3: TButton;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Zapros: TZapros;

implementation

{$R *.dfm}

procedure TZapros.Button1Click(Sender: TObject);
begin
  if Memo1.Text = '' then begin
    ShowMessage('¬ведите запрос!!!');
    Memo1.SetFocus;
    Exit;
  end;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(Memo1.Text);
  ADOQuery1.Open;
end;

procedure TZapros.Button2Click(Sender: TObject);
begin
  Memo1.Clear;
end;

procedure TZapros.Button3Click(Sender: TObject);
var r:string;
s: string;
begin
r:=Edit1.text;
if CheckBox1.Checked = True then
begin
Memo1.Lines.LoadFromFile(r) ;


DBGrid1.Columns[1].Width:= 100;
DBGrid1.Columns[2].Width:= 100;

//DBGrid1.Columns[5].Width:= 100;
end;
end;

procedure TZapros.Button4Click(Sender: TObject);
begin
  Memo1.Lines.Add('SELECT category_id, product_name, description, price, stock_quantity FROM Product WHERE price<=500');
  ADOQuery1.SQL.Text:='SELECT category_id, product_name, description, price, stock_quantity FROM Product WHERE price<=500';
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(Memo1.Text);
  ADOQuery1.Open;
  DBGrid1.Columns[0].Width:= 100;
DBGrid1.Columns[1].Width:= 100;
DBGrid1.Columns[2].Width:= 100;
DBGrid1.Columns[3].Width:= 100;
DBGrid1.Columns[4].Width:= 100;

end;

end.
