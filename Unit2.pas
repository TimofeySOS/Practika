unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB;

type
  TMainForm = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Label2: TLabel;
    DBGrid2: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    ADOQuery: TADOQuery;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    SearchTB: TEdit;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Zapros: TButton;
    Button10: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Button6Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);

    procedure FormActivate(Sender: TObject);

    procedure Edit1Change(Sender: TObject);
    procedure SearchTBChange(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure ZaprosClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
 ClickedString: string ;
 ClickedString1: string ;
implementation

{$R *.dfm}

uses DM, Unit1, Unit15, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Main;

   procedure Reset();
    begin

fDM.Продукты.Close;
fDM.Продукты.Open;
MainForm.ADOQuery.SQL.Text := 'SELECT * FROM Product';
MainForm.ADOQuery.Open;

fDM.Категории.Close;
fDM.Категории.Open;
MainForm.ADOQuery.SQL.Text := 'SELECT * FROM Category';
MainForm.ADOQuery.Open;

    end;

procedure TMainForm.Button10Click(Sender: TObject);
begin
 if fDM.Продукты.Modified then
    fDM.Продукты.Post;

end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
MainForm.Hide;
Login.Show;
end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
AddProd.Show;
end;

procedure TMainForm.Button3Click(Sender: TObject);
begin

     ADOQuery.SQL.Text := 'DELETE FROM Product WHERE product_id = :id';
    ADOQuery.Parameters.ParamByName('id').Value := StrToInt(ClickedString);
    ADOQuery.ExecSQL;
    Reset();

end;

procedure TMainForm.Button4Click(Sender: TObject);
begin
AddCat.Show;
end;

procedure TMainForm.Button5Click(Sender: TObject);
begin
      ADOQuery.SQL.Text := 'DELETE FROM Category WHERE category_id = :id';
    ADOQuery.Parameters.ParamByName('id').Value := StrToInt(ClickedString1);
    ADOQuery.ExecSQL;
    Reset();
end;

procedure TMainForm.Button6Click(Sender: TObject);
begin
   MainForm.Hide;
Zakazi.Show;
end;

procedure TMainForm.Button7Click(Sender: TObject);
begin
      Reset();
end;



procedure TMainForm.Button9Click(Sender: TObject);
begin
  MainForm.Hide;
Sotr.Show;
end;

procedure TMainForm.DBGrid1CellClick(Column: TColumn);
begin
 ClickedString := DBGrid1.DataSource.DataSet.FieldByName(Column.FieldName).AsString;
end;

procedure TMainForm.DBGrid2CellClick(Column: TColumn);
begin
       ClickedString1 := DBGrid2.DataSource.DataSet.FieldByName(Column.FieldName).AsString;
end;

procedure TMainForm.Edit1Change(Sender: TObject);
begin

  if Edit1.Text <> '' then begin
    fDM.Продукты.Filtered := False;
    DM.ed := Edit1.Text;
    fDM.Продукты.Filtered := True;
  end

  else fDM.Продукты.Filtered := False;
end;

procedure TMainForm.FormActivate(Sender: TObject);
begin
     // ShowMessage(Login.roleLB.Caption);
if(Login.roleLB.Caption = 'Сотр') then
begin
      Button3.Visible:=false;
       Button5.Visible:=false;
        Button9.Visible:=false;


end;
if(Login.roleLB.Caption = 'Админ') then
begin
      Button3.Visible:=true;
       Button5.Visible:=true;
        Button9.Visible:=true;


end;
end;

 procedure MyLocate(s: String);
begin
 fDM.Продукты.Locate('product_name', s, [loPartialKey]);
end;






procedure TMainForm.SearchTBChange(Sender: TObject);
begin
    MyLocate(SearchTB.Text);
end;

procedure TMainForm.ZaprosClick(Sender: TObject);
begin
MainForm.Hide;
Zapros.Show;
end;

end.
