
// Enter your examination number here

unit SolarPowerPlant_U;

interface

type
  TSolarPowerPlant = class(TObject)
  private
  var
    fPlantCode: String;
    fNumberOfPanels: Integer;
    fPowerPerPanel: Real;
    fSeason: String;
  public
    // Provide code
    function getPlantCode : String;
    function getNumOfPanels : Integer;
    function getSeason : String;
    // Code here
    constructor Create(pPlantCode: String; pNumberOfPanels: Integer; pPowerPerPanel: Real);
    procedure incNumOfPanels(pInc: Integer);
    procedure setSeason(pSeason: String);
    function calculateCapacity(): Real;
    function toString(): String;

  end;

implementation

{ TStorage }

uses
  SysUtils, Math;

{ TSolarPowerPlant }

// ======================================================
// Question 3.1.1
// ======================================================



// ======================================================
// Question 3.1.2
// ======================================================



// ======================================================
// Question 3.1.3
// ======================================================



// ======================================================
// Question 3.1.4
// ======================================================



// ======================================================
// Question 3.1.5
// ======================================================



// ======================================================
// Provided code
// ======================================================

function TSolarPowerPlant.getPlantCode: String;
begin
  result := fPlantCode;
end;

function TSolarPowerPlant.calculateCapacity: Real;
begin
  if (self.fSeason = 'Summer')
   then result := self.fNumberOfPanels * self.fPowerPerPanel * 10
  else if (self.fSeason = 'Autumn')
   then result := self.fNumberOfPanels * self.fPowerPerPanel * 8
  else if (self.fSeason = 'Winter')
   then result := self.fNumberOfPanels * self.fPowerPerPanel * 6
  else if (self.fSeason = 'Spring')
   then result := self.fNumberOfPanels * self.fPowerPerPanel * 8
  else result := 0;

end;

constructor TSolarPowerPlant.Create(pPlantCode: String; pNumberOfPanels: Integer;
  pPowerPerPanel: Real);
begin
  self.fPlantCode := pPlantCode;
  self.fNumberOfPanels := pNumberOfPanels;
  self.fPowerPerPanel := pPowerPerPanel;
  self.fSeason := 'Summer';
end;

function TSolarPowerPlant.getNumOfPanels: Integer;
begin
  result := fNumberOfPanels;
end;

function TSolarPowerPlant.getSeason: String;
begin
  result := fSeason;
end;

procedure TSolarPowerPlant.incNumOfPanels(pInc: Integer);
begin
  self.fNumberOfPanels := self.fNumberOfPanels + pInc;
end;

procedure TSolarPowerPlant.setSeason(pSeason: String);
begin
  self.fSeason := pSeason;
end;

function TSolarPowerPlant.toString: String;
begin
  result:= 'Plant code: <'+self.fPlantCode+'>'+#13+
           'Number of panels: <'+IntToStr(self.fNumberOfPanels)+'>'+#13+
           'Power per panel: <'+FloatToStrF(self.fPowerPerPanel, ffGeneral, 6,2)+'>'+#13+
           'Season: <'+self.fSeason+'>'
end;

end.
