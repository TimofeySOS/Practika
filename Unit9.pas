unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls;

type
  TAddSotr = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditLogin: TEdit;
    EditPass: TEdit;
    AddBtn: TButton;
    ADOQuery: TADOQuery;
    AdminCheck: TCheckBox;
    procedure AddBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddSotr: TAddSotr;

implementation

{$R *.dfm}

uses DM, Unit1, Unit15, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

procedure TAddSotr.AddBtnClick(Sender: TObject);
begin

ADOQuery.SQL.Text:='insert into Register (login, password, admin) values (:log, :pass, :adm)';
  if (EditLogin.Text = '') or (EditPass.Text = '' )  then
  ShowMessage('Пустые поля не допускаются')
  else
  begin
    ADOQuery.Parameters.ParamByName ('log').Value := EditLogin.Text;
    ADOQuery.Parameters.ParamByName('pass').Value := EditPass.Text;
     ADOQuery.Parameters.ParamByName('adm').Value := AdminCheck.Checked;
//    if (AdminCheck.Checked=true) then
//    ADOQuery.Parameters.ParamByName('adm').Value := 'true'
//    else
//     ADOQuery.Parameters.ParamByName('adm').Value := 'false' ;


    try
      ADOQuery.ExecSQL;
       ShowMessage('Данные добавлены');
      EditLogin.Text:='';
      EditPass.Text:='';
      AdminCheck.Checked:=false;

    Except
      ShowMessage('Не удалось добавить данные в таблицу');
    end;


end;

end;

end.
