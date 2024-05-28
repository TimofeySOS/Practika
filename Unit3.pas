unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls;

type
  TAddProd = class(TForm)
    EditCat: TEdit;
    Label1: TLabel;
    EditNazv: TEdit;
    Label2: TLabel;
    EditDesc: TEdit;
    Label3: TLabel;
    EditPrice: TEdit;
    Label4: TLabel;
    EditCount: TEdit;
    Label5: TLabel;
    AddBtn: TButton;
    ADOQuery: TADOQuery;
    procedure AddBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddProd: TAddProd;

implementation

{$R *.dfm}

uses DM, Unit1, Unit15, Unit2, Unit4;

procedure TAddProd.AddBtnClick(Sender: TObject);
begin

  ADOQuery.SQL.Text:='insert into Product (category_id, product_name, description, price, stock_quantity) values (:kat, :name, :desc, :price, :quant)';
  if (EditCat.Text = '') or (EditNazv.Text = '' ) or (EditDesc.Text = '') or (EditPrice.Text = '' ) or (EditCount.Text = '' ) then
  ShowMessage('Пустые поля не допускаются')
  else
  begin
    ADOQuery.Parameters.ParamByName ('kat').Value := EditCat.Text;
    ADOQuery.Parameters.ParamByName('name').Value := EditNazv.Text;
    ADOQuery.Parameters.ParamByName('desc').Value := EditDesc.Text;
    ADOQuery.Parameters.ParamByName('price').Value := EditPrice.Text;
    ADOQuery.Parameters.ParamByName('quant').Value := EditCount.Text;
    try
      ADOQuery.ExecSQL;
    Except
      ShowMessage('Не удалось добавить данные в таблицу');
    end;

      ShowMessage('Данные добавлены');
      EditCat.Text:='';
      EditNazv.Text:='';
      EditDesc.Text:='';
      EditPrice.Text:='';
      EditCount.Text:='';


  end;

end;
end.
