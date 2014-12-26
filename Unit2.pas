unit Unit2;

{$mode objfpc}{$H+}

interface

uses LazIDEIntf, Forms, Dialogs, Controls,
  Classes, SysUtils;


// Message window Bring To Front on Compile
// MwBTFoC

type

   TmyClass=class
    public
     function ModalResultFunction00(Sender: TObject): TModalResult;
     function ModalResultFunction01(Sender: TObject): TModalResult;
    end;




procedure Register;

implementation

function TmyClass.ModalResultFunction00(Sender: TObject): TModalResult;
begin
    ShowMessage('00 asdf');
    LazarusIDE.DoShowMessagesView;
    result:=mrOk;
end;

function TmyClass.ModalResultFunction01(Sender: TObject): TModalResult;
begin
    ShowMessage('01 asdf');
    //LazIDE.OnProcessIDECommand

    LazarusIDE.DoShowMessagesView;
    //messa
    result:=mrOk;
end;

var myCLS:TmyClass;

procedure Register;
begin
    LazarusIDE.AddHandlerOnProjectBuilding(@(myCLS.ModalResultFunction00),false);
    LazarusIDE.AddHandlerOnProjectDependenciesCompiling(@(myCLS.ModalResultFunction01),false);


end;


initialization
    myCLS:=TmyClass.Create;

finalization
    myCLS.FREE;

end.


{

procedure AddHandlerOnProjectBuilding(
                                const OnProjBuildingEvent: TModalResultFunction;
                                AsLast: boolean = false);
}


