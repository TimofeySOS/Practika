unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls;

type
  TAddCat = class(TForm)
    EditCat: TEdit;
    Label2: TLabel;
    AddBtn: TButton;
    ADOQuery: TADOQuery;
    procedure AddBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddCat: TAddCat;

implementation

{$R *.dfm}

procedure TAddCat.AddBtnClick(Sender: TObject);
begin
ADOQuery.SQL.Text:='insert into Category (category_name) values (:kat)';
  if (EditCat.Text = '') then
  ShowMessage('Пустые поля не допускаются')
  else
  begin
    ADOQuery.Parameters.ParamByName ('kat').Value := EditCat.Text;

    try
      ADOQuery.ExecSQL;
    Except
      ShowMessage('Не удалось добавить данные в таблицу');
    end;

      ShowMessage('Данные добавлены');
      EditCat.Text:='';



end;
    end;
end.
