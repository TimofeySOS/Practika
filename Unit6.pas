unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls;

type
  TAddCost = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EditFirst: TEdit;
    EditLast: TEdit;
    EditEmail: TEdit;
    EditPhone: TEdit;
    EditAddres: TEdit;
    AddBtn: TButton;
    ADOQuery: TADOQuery;
    procedure AddBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddCost: TAddCost;

implementation

{$R *.dfm}

uses DM, Unit1, Unit15, Unit2, Unit3, Unit4, Unit5;

procedure TAddCost.AddBtnClick(Sender: TObject);
begin
   ADOQuery.SQL.Text:='insert into Costumer (fist_name, last_name, email, phone, address) values (:first, :last, :email, :phone, :address)';
  if (EditFirst.Text = '') or (EditLast.Text = '' ) or (EditEmail.Text = '') or (EditPhone.Text = '' ) or (EditAddres.Text = '' ) then
  ShowMessage('Пустые поля не допускаются')
  else
  begin
    ADOQuery.Parameters.ParamByName ('first').Value := EditFirst.Text;
    ADOQuery.Parameters.ParamByName('last').Value := EditLast.Text;
    ADOQuery.Parameters.ParamByName('email').Value := EditEmail.Text;
    ADOQuery.Parameters.ParamByName('phone').Value := EditPhone.Text;
    ADOQuery.Parameters.ParamByName('address').Value := EditAddres.Text;
    try
      ADOQuery.ExecSQL;
      ShowMessage('Данные добавлены');
      EditFirst.Text:='';
      EditLast.Text:='';
      EditEmail.Text:='';
      EditPhone.Text:='';
      EditAddres.Text:='';

    Except
      ShowMessage('Не удалось добавить данные в таблицу');
    end;



  end;
end;

end.
