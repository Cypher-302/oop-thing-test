 // Enter your examination number here: 13288

unit Question3_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, ExtCtrls, Buttons, Spin, ComCtrls, jpeg;

type
  TfrmQuestion3 = class(TForm)
    gbxQ3_2_1: TGroupBox;
    gbxQ3_2_3: TGroupBox;
    btnQ3_2_1: TButton;
    btnReset: TButton;
    gbxQ3_2_2: TGroupBox;
    btnQ3_2_2: TButton;
    edtQ3_2_1_Power: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    sedQ3_2_2: TSpinEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    btnQ3_2_3: TButton;
    Image1: TImage;
    Label6: TLabel;
    edtQ3_2_1_Code: TEdit;
    sedQ3_2_1: TSpinEdit;
    Label4: TLabel;
    cmbQ3_2_3: TComboBox;
    Label5: TLabel;
    gbxQ3_2_4: TGroupBox;
    btnQ3_2_4: TButton;
    redQ3: TRichEdit;
    procedure btnQ3_2_1Click(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure btnQ3_2_2Click(Sender: TObject);
    procedure btnQ3_2_3Click(Sender: TObject);
    procedure btnQ3_2_4Click(Sender: TObject);
  private

  public

  end;

var
  frmQuestion3: TfrmQuestion3;

implementation

{$R *.dfm}

uses
  SolarPowerPlant_U;

var
  objPlant: TSolarPowerPlant;

// ======================================================
// Question 3.2.1
// ======================================================

procedure TfrmQuestion3.btnQ3_2_1Click(Sender: TObject);
begin
  // Provided code
  redQ3.Clear;
  // Question 3.2.1
  objPlant := TSolarPowerPlant.Create(edtQ3_2_1_Code.Text, StrToInt(sedQ3_2_1.Text), StrToFloat(edtQ3_2_1_Power.Text));
  redQ3.Lines.Add(objPlant.toString);

end;

// ======================================================
// Question 3.2.2
// ======================================================

procedure TfrmQuestion3.btnQ3_2_2Click(Sender: TObject);
begin
  // Provided code
  redQ3.Clear;
  // Question 3.2.2
  objPlant.incNumOfPanels(StrToInt(sedQ3_2_2.Text));

end;

// ======================================================
// Question 3.2.3
// ======================================================

procedure TfrmQuestion3.btnQ3_2_3Click(Sender: TObject);
begin
  // Provided code
  redQ3.Clear;
  // Question 3.2.3


end;

// ======================================================
// Question 3.2.4
// ======================================================

procedure TfrmQuestion3.btnQ3_2_4Click(Sender: TObject);
begin
  // Provided code
  redQ3.Clear;
  // Question 3.2.4


end;

// ======================================================
// Provided code
// ======================================================

procedure TfrmQuestion3.btnResetClick(Sender: TObject);
begin
  objPlant.Free;
  edtQ3_2_1_Power.Clear;
  edtQ3_2_1_Code.Clear;
  sedQ3_2_1.Value := 15;
  sedQ3_2_2.Value := 50;
  redQ3.Clear;
end;

end.
