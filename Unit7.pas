unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ComCtrls;

type
  TAddOrder = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditCost: TEdit;
    EditProd: TEdit;
    EditCount: TEdit;
    AddBtn: TButton;
    ADOQuery: TADOQuery;
    Date: TDateTimePicker;
    procedure AddBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddOrder: TAddOrder;

implementation

{$R *.dfm}

uses DM, Unit1, Unit15, Unit2, Unit3, Unit4, Unit5, Unit6;

procedure TAddOrder.AddBtnClick(Sender: TObject);
begin
   ADOQuery.SQL.Text:='insert into OrderProd (costumer_id, product_id, order_date, quantity) values (:cost, :prod, :date, :quant)';
  if (EditCost.Text = '') or (EditProd.Text = '' ) or (EditCount.Text = '' )  then
  ShowMessage('Пустые поля не допускаются')
  else
  begin
    ADOQuery.Parameters.ParamByName ('cost').Value := EditCost.Text;
    ADOQuery.Parameters.ParamByName('prod').Value := EditProd.Text;
    ADOQuery.Parameters.ParamByName('date').Value := DateToStr(Date.Date);
    ADOQuery.Parameters.ParamByName('quant').Value := EditCount.Text;

    try
      ADOQuery.ExecSQL;
      ShowMessage('Данные добавлены');
      EditCost.Text:='';
      EditProd.Text:='';
      EditCount.Text:='';

    Except
      ShowMessage('Не удалось добавить данные в таблицу');
    end;



  end;
end;

end.
