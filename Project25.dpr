program Project25;

uses
  Vcl.Forms,
  Unit15 in 'Unit15.pas' {Assort},
  DM in 'DM.pas' {fDM: TDataModule},
  Unit1 in 'Unit1.pas' {Login},
  Unit2 in 'Unit2.pas' {MainForm},
  Unit3 in 'Unit3.pas' {AddProd},
  Unit4 in 'Unit4.pas' {AddCat},
  Unit5 in 'Unit5.pas' {Zakazi},
  Unit6 in 'Unit6.pas' {AddCost},
  Unit8 in 'Unit8.pas' {Sotr},
  Unit9 in 'Unit9.pas' {AddSotr},
  Unit7 in 'Unit7.pas' {AddOrder},
  Main in 'Main.pas' {Zapros};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TZapros, Zapros);
  Application.CreateForm(TLogin, Login);
  Application.CreateForm(TAssort, Assort);
  Application.CreateForm(TfDM, fDM);
  Application.CreateForm(TAddProd, AddProd);
  Application.CreateForm(TAddCat, AddCat);
  Application.CreateForm(TZakazi, Zakazi);
  Application.CreateForm(TAddCost, AddCost);
  Application.CreateForm(TAddOrder, AddOrder);
  Application.CreateForm(TSotr, Sotr);
  Application.CreateForm(TAddSotr, AddSotr);
  Application.CreateForm(TAddOrder, AddOrder);
  Application.Run;
end.
