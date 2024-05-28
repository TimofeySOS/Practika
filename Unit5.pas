unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB;

type
  TZakazi = class(TForm)
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Button7: TButton;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    Button1: TButton;
    Button4: TButton;
    Button5: TButton;
    Label3: TLabel;
    DBGrid3: TDBGrid;
    ADOQuery: TADOQuery;
    Button6: TButton;
    Button8: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Zakazi: TZakazi;
   ClickedString: string ;
 ClickedString1: string ;
implementation

{$R *.dfm}

uses DM, Unit1, Unit15, Unit2, Unit3, Unit4, Unit6, Unit7, Unit8, Unit9;
   procedure Reset();
    begin

fDM.Покупатель.Close;
fDM.Покупатель.Open;
MainForm.ADOQuery.SQL.Text := 'SELECT * FROM Costumer';
MainForm.ADOQuery.Open;

fDM.Заказ.Close;
fDM.Заказ.Open;
MainForm.ADOQuery.SQL.Text := 'SELECT * FROM OrderProd';
MainForm.ADOQuery.Open;

    end;
procedure TZakazi.Button1Click(Sender: TObject);
begin
AddOrder.Show;
end;

procedure TZakazi.Button2Click(Sender: TObject);
begin
AddCost.Show;
end;

procedure TZakazi.Button3Click(Sender: TObject);
begin
 ADOQuery.SQL.Text := 'DELETE FROM Costumer WHERE costumer_id = :id';
    ADOQuery.Parameters.ParamByName('id').Value := StrToInt(ClickedString);
    ADOQuery.ExecSQL;
    Reset();
end;

procedure TZakazi.Button4Click(Sender: TObject);
begin
    ADOQuery.SQL.Text := 'DELETE FROM OrderProd WHERE order_id = :id';
    ADOQuery.Parameters.ParamByName('id').Value := StrToInt(ClickedString1);
    ADOQuery.ExecSQL;
    Reset();
end;

procedure TZakazi.Button6Click(Sender: TObject);
begin
Zakazi.Hide;
MainForm.Show;
end;

procedure TZakazi.Button7Click(Sender: TObject);
begin
  Reset();
end;

procedure TZakazi.DBGrid1CellClick(Column: TColumn);
begin
ClickedString := DBGrid1.DataSource.DataSet.FieldByName(Column.FieldName).AsString;
end;

procedure TZakazi.DBGrid2CellClick(Column: TColumn);
begin
ClickedString1 := DBGrid2.DataSource.DataSet.FieldByName(Column.FieldName).AsString;
end;

procedure TZakazi.FormActivate(Sender: TObject);
begin
if(Login.roleLB.Caption = 'Сотр') then
begin
      Button3.Visible:=false;
       Button4.Visible:=false;



end;
end;

end.
