unit DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TfDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    Продукты: TADOTable;
    Категории: TADOTable;
    Покупатель: TADOTable;
    Пользователи: TADOTable;
    DSProduct: TDataSource;
    DSCategory: TDataSource;
    DSCostumer: TDataSource;
    DSOrder: TDataSource;
    DSRegister: TDataSource;
    Продуктыproduct_id: TAutoIncField;
    Продуктыcategory_id: TIntegerField;
    Продуктыproduct_name: TWideStringField;
    Продуктыdescription: TWideStringField;
    Продуктыprice: TIntegerField;
    Продуктыstock_quantity: TIntegerField;
    Категорииcategory_id: TAutoIncField;
    Категорииcategory_name: TWideStringField;
    Покупательcostumer_id: TAutoIncField;
    Покупательfist_name: TWideStringField;
    Покупательlast_name: TWideStringField;
    Покупательemail: TWideStringField;
    Покупательphone: TWideStringField;
    Покупательaddress: TWideStringField;
    Заказ: TADOTable;
    Заказorder_id: TAutoIncField;
    Заказcostumer_id: TIntegerField;
    Заказproduct_id: TIntegerField;
    Заказorder_date: TDateTimeField;
    Заказquantity: TIntegerField;
    Пользователиreg_id: TAutoIncField;
    Пользователиlogin: TWideStringField;
    Пользователиpassword: TWideStringField;
    Пользователиadmin: TBooleanField;
    procedure ПродуктыFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDM: TfDM;
   ed: String;
implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TfDM.ПродуктыFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
  s : String;
begin

  s := Copy(DataSet['product_name'], 1, Length(ed));

  Accept := s = ed;
end;

end.

