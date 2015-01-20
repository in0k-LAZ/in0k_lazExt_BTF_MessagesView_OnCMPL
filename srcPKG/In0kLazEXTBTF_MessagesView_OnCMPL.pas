unit In0kLazEXTBTF_MessagesView_OnCMPL;

{$mode objfpc}{$H+}

interface

uses LazIDEIntf, Forms, Dialogs, Controls;

type

  // Message window Bring To Front on Compile
 tIn0kLazEXTBTF_MessagesView_OnCMPL=class
  protected
    function _BTF_MessagesView_(Sender:TObject):TModalResult;
  end;

procedure Register;

implementation

function TIn0kLazEXTBTF_MessagesView_OnCMPL._BTF_MessagesView_(Sender:TObject):TModalResult;
begin
    LazarusIDE.DoShowMessagesView;
    result:=mrOk;
end;

var _In0kLazEXTBTF_:TIn0kLazEXTBTF_MessagesView_OnCMPL;

procedure Register;
begin
    LazarusIDE.AddHandlerOnProjectDependenciesCompiling(@(_In0kLazEXTBTF_._BTF_MessagesView_),false);
    LazarusIDE.AddHandlerOnProjectBuilding(@(_In0kLazEXTBTF_._BTF_MessagesView_),false);
end;

initialization
    _In0kLazEXTBTF_:=TIn0kLazEXTBTF_MessagesView_OnCMPL.Create;

finalization
    _In0kLazEXTBTF_.FREE;

end.
