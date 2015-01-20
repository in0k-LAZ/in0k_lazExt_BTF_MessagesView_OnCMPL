{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit in0k_lazExt_BTF_MessagesView_OnCMPL;

interface

uses
  tIn0kLazEXTBTF_MessagesView_OnCMPL, LazarusPackageIntf;

implementation

procedure Register;
begin
  RegisterUnit('tIn0kLazEXTBTF_MessagesView_OnCMPL', 
    @tIn0kLazEXTBTF_MessagesView_OnCMPL.Register);
end;

initialization
  RegisterPackage('in0k_lazExt_BTF_MessagesView_OnCMPL', @Register);
end.
