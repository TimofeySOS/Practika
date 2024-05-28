unit DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TfDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ��������: TADOTable;
    ���������: TADOTable;
    ����������: TADOTable;
    ������������: TADOTable;
    DSProduct: TDataSource;
    DSCategory: TDataSource;
    DSCostumer: TDataSource;
    DSOrder: TDataSource;
    DSRegister: TDataSource;
    ��������product_id: TAutoIncField;
    ��������category_id: TIntegerField;
    ��������product_name: TWideStringField;
    ��������description: TWideStringField;
    ��������price: TIntegerField;
    ��������stock_quantity: TIntegerField;
    ���������category_id: TAutoIncField;
    ���������category_name: TWideStringField;
    ����������costumer_id: TAutoIncField;
    ����������fist_name: TWideStringField;
    ����������last_name: TWideStringField;
    ����������email: TWideStringField;
    ����������phone: TWideStringField;
    ����������address: TWideStringField;
    �����: TADOTable;
    �����order_id: TAutoIncField;
    �����costumer_id: TIntegerField;
    �����product_id: TIntegerField;
    �����order_date: TDateTimeField;
    �����quantity: TIntegerField;
    ������������reg_id: TAutoIncField;
    ������������login: TWideStringField;
    ������������password: TWideStringField;
    ������������admin: TBooleanField;
    procedure ��������FilterRecord(DataSet: TDataSet;
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

procedure TfDM.��������FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
  s : String;
begin

  s := Copy(DataSet['product_name'], 1, Length(ed));

  Accept := s = ed;
end;

end.

