unit lazExt_aBTF_MessagesView_OnCMPL;

{$mode objfpc}{$H+}

interface

uses LazIDEIntf, Forms, Dialogs, Controls;

type

  // Message window Bring To Front on Compiling/Building
 tLazExt_aBTF__MessagesView_OnCMPL=class
  protected
    function _BTF_MessagesView_(Sender:TObject):TModalResult;
  end;

procedure Register;

implementation

function tLazExt_aBTF__MessagesView_OnCMPL._BTF_MessagesView_(Sender:TObject):TModalResult;
begin
    LazarusIDE.DoShowMessagesView;
    result:=mrOk;
end;

var _In0kLazEXTBTF_:tLazExt_aBTF__MessagesView_OnCMPL;

procedure Register;
begin
    LazarusIDE.AddHandlerOnProjectDependenciesCompiling(@(_In0kLazEXTBTF_._BTF_MessagesView_),false);
    LazarusIDE.AddHandlerOnProjectBuilding(@(_In0kLazEXTBTF_._BTF_MessagesView_),false);
end;

initialization
   _In0kLazEXTBTF_:=tLazExt_aBTF__MessagesView_OnCMPL.Create;

finalization
   _In0kLazEXTBTF_.FREE;

end.
