{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit in0k_lazExt_aBTF_MessagesView_OnCMPL;

interface

uses
  lazExt_aBTF_MessagesView_OnCMPL, LazarusPackageIntf;

implementation

procedure Register;
begin
  RegisterUnit('lazExt_aBTF_MessagesView_OnCMPL',
    @LazExt_aBTF_MessagesView_OnCMPL.Register);
end;

initialization
  RegisterPackage('in0k_lazExt_aBTF_MessagesView_OnCMPL', @Register);
end.
