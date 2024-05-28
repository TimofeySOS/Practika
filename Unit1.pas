unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB;

type
  TLogin = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Label4: TLabel;
    ADOQuery: TADOQuery;
    Label5: TLabel;
    roleLB: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login: TLogin;

implementation

{$R *.dfm}

uses DM, Unit15, Unit2;

procedure TLogin.Button1Click(Sender: TObject);
begin
  ADOQuery.Sql.Text:='SELECT * FROM Register WHERE login=:p_login AND password=:p_passw ';
  if (Edit1.Text = '') or (Edit2.Text = '' )  then
  ShowMessage('Пустые поля логина или пароля не допускаются')
  else
  begin
    ADOQuery.SQL.Text:='SELECT * FROM Register WHERE (login=:p_login) AND (password=:p_passw)';
    ADOQuery.Parameters.ParamByName ('p_login').Value := Edit1.Text;
    ADOQuery.Parameters.ParamByName('p_passw').Value := Edit2.Text;
    try
      ADOQuery.Open;
    Except
      ShowMessage('Не удалось открыть таблицу пользователей');
      Exit;
    end;
    if ADOQuery.RecordCount > 0
    then
    begin
     ADOQuery.SQL.Text:='SELECT admin FROM Register WHERE (login=:p_login) AND (password=:p_passw) AND (admin=true)';
    ADOQuery.Parameters.ParamByName ('p_login').Value := Edit1.Text;
     ADOQuery.Parameters.ParamByName('p_passw').Value := Edit2.Text;
                    try
      ADOQuery.Open;
    Except
      ShowMessage('Не удалось открыть таблицу пользователей');
      Exit;
    end;
     if ADOQuery.RecordCount > 0  then
       begin

      ShowMessage('Вход успешно выполнен как админ');
      roleLB.Caption := 'Админ' ;

      login.Hide;
      MainForm.show;
      edit1.Text:='';
      edit2.Text:='';
       end
       else
       begin

      ShowMessage('Вход успешно выполнен как сотрудник');
      roleLB.Caption := 'Сотр';
      login.Hide;
      MainForm.show;
      edit1.Text:='';
      edit2.Text:='';
       end;
    end


    else
    begin
      ShowMessage('Неправильный логин или пароль');
    end;
      end;

end;

procedure TLogin.FormCreate(Sender: TObject);
begin
Label5.Visible:=False;
end;

procedure TLogin.Label4Click(Sender: TObject);
begin
    login.Hide;
assort.show;
end;

end.
