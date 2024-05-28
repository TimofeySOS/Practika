unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TSotr = class(TForm)
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Button7: TButton;
    ADOQuery: TADOQuery;
    Button1: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Sotr: TSotr;
  ClickedString: string ;
implementation

{$R *.dfm}

uses DM, Unit1, Unit15, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit9;
  procedure Reset();
    begin

fDM.Пользователи.Close;
fDM.Пользователи.Open;
MainForm.ADOQuery.SQL.Text := 'SELECT * FROM Register';
MainForm.ADOQuery.Open;


    end;
procedure TSotr.Button1Click(Sender: TObject);
begin
Sotr.Hide;
MainForm.Show;
end;

procedure TSotr.Button2Click(Sender: TObject);
begin
AddSotr.Show;
end;

procedure TSotr.Button3Click(Sender: TObject);
begin
  ADOQuery.SQL.Text := 'DELETE FROM Register WHERE reg_id = :id';
    ADOQuery.Parameters.ParamByName('id').Value := StrToInt(ClickedString);
    ADOQuery.ExecSQL;
    Reset();
end;
   procedure TSotr.Button7Click(Sender: TObject);
begin
    Reset();
end;

procedure TSotr.DBGrid1CellClick(Column: TColumn);
begin
ClickedString := DBGrid1.DataSource.DataSet.FieldByName(Column.FieldName).AsString;
end;


end.
