unit uFuncoes;

interface

uses
  System.Classes, System.SysUtils, Vcl.Forms, Vcl.StdCtrls,
  cxLookupEdit, cxDBLookupComboBox, Vcl.Controls;

  procedure DesabilitarControles(Form: TForm);
  procedure HabilitarControles(Form: TForm);

implementation

procedure SetEnabledRecursive(Control: TControl; AEnabled: Boolean);
var
  i: Integer;
begin
  if Control is TEdit then
  begin
    TEdit(Control).Enabled := AEnabled;
  end;

  if Control is TComboBox then
  begin
    TComboBox(Control).Enabled := AEnabled;
  end;

  if Control is TWinControl then
  begin
    for i := 0 to Pred(TWinControl(Control).ControlCount) do
    begin
      SetEnabledRecursive(TWinControl(Control).Controls[i], AEnabled);
    end;
  end;
end;

procedure DesabilitarControles(Form: TForm);
begin
  SetEnabledRecursive(Form, False);
end;

procedure HabilitarControles(Form: TForm);
begin
  SetEnabledRecursive(Form, True);
end;

end.

