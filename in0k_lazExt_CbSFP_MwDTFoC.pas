{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit in0k_lazExt_CbSFP_MwDTFoC;

interface

uses
  Unit2, LazarusPackageIntf;

implementation

procedure Register;
begin
  RegisterUnit('Unit2', @Unit2.Register);
end;

initialization
  RegisterPackage('in0k_lazExt_CbSFP_MwDTFoC', @Register);
end.
