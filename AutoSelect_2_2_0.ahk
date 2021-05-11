#NoEnv
#SingleInstance, Force
CoordMode, Mouse , Screen
SetKeyDelay,-1, 1
SetControlDelay, 0
SetMouseDelay, 0
SetWinDelay,-1
SetBatchLines,-1
SysGet, resolution, Monitor, 1
FileEncoding, UTF-8

if not (A_ScreenWidth = 1920 and A_ScreenHeight = 1080) {

    MsgBox, Your resolution is not 1920*1080 `n This script may not work

}else{
    
    MsgBox,Welcome AUTO SELECT script `n 😢 `n 😢 Only support all Agents are unlocked `n 😢 `n F5:Show Setting Window `n F7:Exit

}


global agent_x := 959
global agent_y := 816

agent_xy(x){

    if (x = "None") {
        agent_x := 959
        agent_y := 816
    }
    if (x = "Astra") {
        agent_x := 666
        agent_y := 925
    }
    if (x = "Breach") {
        agent_x := 750
        agent_y := 925
    }
    if (x = "Brimstone") {
        agent_x := 834
        agent_y := 925
    }
    if (x = "Cypher") {
        agent_x := 918
        agent_y := 925
    }
    if (x = "Jett") {
        agent_x := 1002
        agent_y := 925
    }
    if (x = "Killjoy") {
        agent_x := 1086
        agent_y := 925
    }
    if (x = "Omen") {
        agent_x := 1170
        agent_y := 925
    }
    if (x = "Phoenix") {
        agent_x := 1254
        agent_y := 925
    }
    if (x = "Raze") {
        agent_x := 666
        agent_y := 1015
    }
    if (x = "Reyna") {
        agent_x := 750
        agent_y := 1015
    }
    if (x = "Sage") {
        agent_x := 834
        agent_y := 1015
    }
    if (x = "Skye") {
        agent_x := 918
        agent_y := 1015
    }
    if (x = "Sova") {
        agent_x := 1002
        agent_y := 1015
    }
    if (x = "Viper") {
        agent_x := 1086
        agent_y := 1015
    }
    if (x = "Yoru") {
        agent_x := 1170
        agent_y := 1015
    }
}


select() {

    CoordMode Pixel
    PixelSearch, __FoundX, __FoundY, 28, 28, 28, 28, 0xFFFFFF,,Fast RGB
    CoordMode Mouse
    if (ErrorLevel=0) {

        CoordMode Pixel
        PixelSearch, __FoundX, __FoundY, 1897, 25, 1897, 25, 0xFFFFFF,,Fast RGB
        CoordMode Mouse
        if (ErrorLevel=0) {

            agent_xy(x := None)

        }

    } else {

        CoordMode Pixel
        PixelSearch, __FoundX, __FoundY, 1897, 25, 1897, 25, 0xFFFFFF,,Fast RGB
        CoordMode Mouse
        if (ErrorLevel=0) {     
        } else {

            CoordMode Pixel
            PixelSearch, __FoundX, __FoundY, 1, 100, 1, 100, 0x7095E1,3,Fast RGB
            CoordMode Mouse
            if (ErrorLevel=0 and WinActive("VALORANT") and not agent_x = 959 and not agent_y = 816 ) { 
              
                Loop 4
                {
                    MouseMove agent_x, agent_y, 0
                    Send {LButton DOWN}
                    Send {LButton UP}
                    if (LLL = 0){
                        MouseMove 959 , 816, 0
                        Send {LButton DOWN}
                        Send {LButton UP}
                    }
                    DllCall("Sleep", "UInt", 5)
                }
                    
            } else {

                ;Ascent
                CoordMode Pixel 
                PixelSearch, __FoundX, __FoundY, 1300, 300, 1300, 300, 0xE7DFEF,,Fast RGB
                CoordMode Mouse
                if (ErrorLevel=0) { 

                    CoordMode Pixel 
                    PixelSearch, __FoundX, __FoundY, 1300, 500, 1300, 500, 0xEFD7D6,,Fast RGB
                    CoordMode Mouse
                    if (ErrorLevel=0) { 

                        CoordMode Pixel 
                        PixelSearch, __FoundX, __FoundY, 1300, 700, 1300, 700, 0x60527E,,Fast RGB
                        CoordMode Mouse
                        if (ErrorLevel=0) { 

                            agent_xy(x := DAscent)
                            ;MsgBox,  "%DAscent%"
                               
                        } else {
                        }                 
                    } else {
                    }
                } else {
                }


                ;Split
                CoordMode Pixel 
                PixelSearch, __FoundX, __FoundY, 1300, 300, 1300, 300, 0x73797B,,Fast RGB
                CoordMode Mouse
                if (ErrorLevel=0) { 

                    CoordMode Pixel 
                    PixelSearch, __FoundX, __FoundY, 1300, 500, 1300, 500, 0xE7DCD9,,Fast RGB
                    CoordMode Mouse
                    if (ErrorLevel=0) { 

                        CoordMode Pixel 
                        PixelSearch, __FoundX, __FoundY, 1300, 700, 1300, 700, 0xECEAEC,,Fast RGB
                        CoordMode Mouse
                        if (ErrorLevel=0) { 

                            agent_xy(x := DSplit)  
                               
                        } else {
                        }                 
                    } else {
                    }
                } else {
                }


                ;Bind
                CoordMode Pixel 
                PixelSearch, __FoundX, __FoundY, 1300, 300, 1300, 300, 0x686460,,Fast RGB
                CoordMode Mouse
                if (ErrorLevel=0) { 

                    CoordMode Pixel 
                    PixelSearch, __FoundX, __FoundY, 1300, 500, 1300, 500, 0x5D6265,,Fast RGB
                    CoordMode Mouse
                    if (ErrorLevel=0) { 

                        CoordMode Pixel 
                        PixelSearch, __FoundX, __FoundY, 1300, 700, 1300, 700, 0x635952,,Fast RGB
                        CoordMode Mouse
                        if (ErrorLevel=0) { 
                              
                            agent_xy(x := DBind)

                        } else {
                        }                 
                    } else {
                    }
                } else {
                }


                ;Icebox
                CoordMode Pixel 
                PixelSearch, __FoundX, __FoundY, 1300, 300, 1300, 300, 0x919AC6,,Fast RGB
                CoordMode Mouse
                if (ErrorLevel=0) { 

                    CoordMode Pixel 
                    PixelSearch, __FoundX, __FoundY, 1300, 500, 1300, 500, 0x8F9CBB,,Fast RGB
                    CoordMode Mouse
                    if (ErrorLevel=0) { 

                        CoordMode Pixel 
                        PixelSearch, __FoundX, __FoundY, 1300, 700, 1300, 700, 0x2E2D47,,Fast RGB
                        CoordMode Mouse
                        if (ErrorLevel=0) { 

                            agent_xy(x := DIcebox)    
                               
                        } else {
                        }                 
                    } else {
                    }
                } else {
                }


                ;Haven
                CoordMode Pixel 
                PixelSearch, __FoundX, __FoundY, 1300, 300, 1300, 300, 0x425D6B,,Fast RGB
                CoordMode Mouse
                if (ErrorLevel=0) { 

                    CoordMode Pixel 
                    PixelSearch, __FoundX, __FoundY, 1300, 500, 1300, 500, 0xBBA57E,,Fast RGB
                    CoordMode Mouse
                    if (ErrorLevel=0) { 

                        CoordMode Pixel 
                        PixelSearch, __FoundX, __FoundY, 1300, 700, 1300, 700, 0x798381,,Fast RGB
                        CoordMode Mouse
                        if (ErrorLevel=0) { 
                              
                            agent_xy(x := DHaven)
                               
                        } else {
                        }                 
                    } else {
                    }
                } else {
                }


                ;Breeze
                CoordMode Pixel 
                PixelSearch, __FoundX, __FoundY, 1300, 300, 1300, 300, 0x6B799C,,Fast RGB
                CoordMode Mouse
                if (ErrorLevel=0) { 

                    CoordMode Pixel 
                    PixelSearch, __FoundX, __FoundY, 1300, 500, 1300, 500, 0x848E52,,Fast RGB
                    CoordMode Mouse
                    if (ErrorLevel=0) { 

                        CoordMode Pixel 
                        PixelSearch, __FoundX, __FoundY, 1300, 700, 1300, 700, 0xECDFC3,,Fast RGB
                        CoordMode Mouse
                        if (ErrorLevel=0) { 
                              
                            agent_xy(x := DBreeze)
                               
                        } else {
                        }                 
                    } else {
                    }
                } else {
                }



            }
        }
    }
}




Gui, Font, s15 c40DCDC, Verdana
Gui, Add, Text, x23  y-25, Ascent
Gui, Add, Text, x+45     , Split
Gui, Add, Text, x+59     , Bind
Gui, Add, Text, x+47     , Icebox
Gui, Add, Text, x+36     , Haven
Gui, Add, Text, x+36     , Breeze
Gui, Add, Text, x40  y-25,  ALL
Gui, Font, s10 caqua 
Gui, Add, DropDownList, x14  y44 w85 R16 vDAscent gOnselect, None|Astra|Breach|Brimstone|Cypher|Jett|Killjoy|Omen|Phoenix|Raze|Reyna|Sage|Skye|Sova|Viper|Yoru
Gui, Add, DropDownList, x117 y44 w85 R16 vDSplit           , None|Astra|Breach|Brimstone|Cypher|Jett|Killjoy|Omen|Phoenix|Raze|Reyna|Sage|Skye|Sova|Viper|Yoru
Gui, Add, DropDownList, x220 y44 w85 R16 vDBind            , None|Astra|Breach|Brimstone|Cypher|Jett|Killjoy|Omen|Phoenix|Raze|Reyna|Sage|Skye|Sova|Viper|Yoru
Gui, Add, DropDownList, x323 y44 w85 R16 vDIcebox          , None|Astra|Breach|Brimstone|Cypher|Jett|Killjoy|Omen|Phoenix|Raze|Reyna|Sage|Skye|Sova|Viper|Yoru
Gui, Add, DropDownList, x426 y44 w85 R16 vDHaven           , None|Astra|Breach|Brimstone|Cypher|Jett|Killjoy|Omen|Phoenix|Raze|Reyna|Sage|Skye|Sova|Viper|Yoru
Gui, Add, DropDownList, x529 y44 w85 R16 vDBreeze          , None|Astra|Breach|Brimstone|Cypher|Jett|Killjoy|Omen|Phoenix|Raze|Reyna|Sage|Skye|Sova|Viper|Yoru
GuiControl, Choose, DAscent, None
GuiControl, Choose, DSplit , None
GuiControl, Choose, DBind  , None
GuiControl, Choose, DIcebox, None
GuiControl, Choose, DHaven , None
GuiControl, Choose, DBreeze, None
Gui, Font, s8 c006C6C, Verdana
/*
Gui, Add, Text, vTa x15 y150 , ╔═══╦╗ ╔╦════╦═══╗　╔═══╦═══╦╗  ╔═══╦═══╦════╗
Gui, Add, Text, vTb x15 y+0  , ║╔═╗║║ ║║╔╗╔╗║╔═╗║　║╔═╗║╔══╣║  ║╔══╣╔═╗║╔╗╔╗║
Gui, Add, Text, vTc x15 y+0  , ║║ ║║║ ║╠╝║║╚╣║ ║║　║╚══╣╚══╣║  ║╚══╣║ ╚╩╝║║╚╝
Gui, Add, Text, vTd x15 y+0  , ║╚═╝║║ ║║ ║║ ║║ ║║　╚══╗║╔══╣║ ╔╣╔══╣║ ╔╗ ║║
Gui, Add, Text, vTe x15 y+0  , ║╔═╗║╚═╝║ ║║ ║╚═╝║　║╚═╝║╚══╣╚═╝║╚══╣╚═╝║ ║║
Gui, Add, Text, vTf x15 y+0  , ╚╝ ╚╩═══╝ ╚╝ ╚═══╝　╚═══╩═══╩═══╩═══╩═══╝ ╚╝
*/
Gui, Font, s11, Verdana
Gui, Add, Button, -default x15   y315 w80 h28, EXIT
Gui, Add, Button, -default x440  y315 w80 h28, Cancel
Gui, Add, Button, +default x530  y315 w80 h28, Save
Gui, Font, s10 cDDDDDD, Verdana
Gui, Add, GroupBox, x20 y90 w200 h150, Select Setting
Gui, Add, CheckBox, x30 y120  vSSS gSetbox , Set  All
Gui, Add, CheckBox, x30 y145 vLLL gLockbox, Don't  LOCK🔒
Gui, Font, s9 c50B050, Verdana
Gui, Add, Text, x110 y322 , Ver.2.2.0

Gui, +AlwaysOnTop
Gui, Color, 101010 
;Gui, Show, x600 y400 w520 h350 ,Agent setting window, `t


global DAscent
global DSplit
global DBind
global DIcebox
global DHaven
global DBreeze
global SSS
global LLL

global sgui := -1


Loop {
	if (start = 1) {
        select()
	}	
}


F5::
sgui := sgui * -1
if (sgui = 1) {
    GuiControl, Disable, Set  All
    GuiControl, Disable, Don't  LOCK
    GuiControl, Disable, Cancel
    GuiControl, Disable, EXIT
    GuiControl, Disable, Save
    GuiControl, Disable, DAscent
    GuiControl, Disable, DSplit
    GuiControl, Disable, DBind
    GuiControl, Disable, DIcebox
    GuiControl, Disable, DHaven
    GuiControl, Disable, DBreeze

    Gui, Show, x700 y400 w625 h350 ,Agent setting window, `t
    global Tya   := -20
    global Ty    := -20
    global DSx   := 14
    global DBx   := 14
    global DIx   := 14
    global DHx   := 14
    global DRx   := 14
    ;global Tacex := -500
    ;global Tbdfx := 520

    Loop 20 {

        GuiControl, Move, Ascent, % "y" Ty
        GuiControl, Move, Split , % "y" Ty
        GuiControl, Move, Bind  , % "y" Ty
        GuiControl, Move, Icebox, % "y" Ty
        GuiControl, Move, Haven , % "y" Ty
        GuiControl, Move, Breeze, % "y" Ty
        Ty  := (12 - Ty)/4 + Ty 

        GuiControl, Move, DSplit , % "x" DSx
        GuiControl, Move, DBind  , % "x" DBx
        GuiControl, Move, DIcebox, % "x" DIx
        GuiControl, Move, DHaven , % "x" DHx
        GuiControl, Move, DBreeze, % "x" DRx
        DSx := (117 - DSx)/4.5 + DSx
        DBx := (222 - DBx)/4.5 + DBx
        DIx := (325 - DIx)/4.5 + DIx
        DHx := (428 - DHx)/4.5 + DHx
        DRx := (531 - DRx)/4.5 + DRx

        /*
        GuiControl, Move, Ta , % "x" Tacex
        GuiControl, Move, Tc , % "x" Tacex
        GuiControl, Move, Te , % "x" Tacex
        GuiControl, Move, Tb , % "x" Tbdfx
        GuiControl, Move, Td , % "x" Tbdfx
        GuiControl, Move, Tf , % "x" Tbdfx
        Tacex := (20 - Tacex)/4.5 + Tacex
        Tbdfx := (11 - Tbdfx)/4.5 + Tbdfx
        */

        Sleep % 4
    }
    GuiControl, Enable, Set  All
    GuiControl, Enable, Don't  LOCK
    GuiControl, Enable, EXIT
    GuiControl, Enable, Cancel
    GuiControl, Enable, Save
    GuiControl, Enable, DAscent
    GuiControl, Enable, DSplit
    GuiControl, Enable, DBind
    GuiControl, Enable, DIcebox
    GuiControl, Enable, DHaven
    GuiControl, Enable, DBreeze

}else{

    Gui, Hide

}
KeyWait, F5
Return


Setbox:
GuiControl, Disable, Set  All
GuiControl, Disable, Don't  LOCK
GuiControl, Disable, Cancel
GuiControl, Disable, EXIT
GuiControl, Disable, Save
GuiControl, Disable, DAscent
GuiControl, Disable, DSplit
GuiControl, Disable, DBind
GuiControl, Disable, DIcebox
GuiControl, Disable, DHaven
GuiControl, Disable, DBreeze
Gui, Submit, NoHide
if(SSS = 1){
    GuiControl, Choose, DSplit , %DAscent%
    GuiControl, Choose, DBind  , %DAscent%
    GuiControl, Choose, DIcebox, %DAscent%
    GuiControl, Choose, DHaven , %DAscent%
    GuiControl, Choose, DBreeze, %DAscent%
    GuiControl, Move, Ascent, y-25
    GuiControl, Move, Split , y-25
    GuiControl, Move, Bind  , y-25
    GuiControl, Move, Icebox, y-25
    GuiControl, Move, Haven , y-25
    GuiControl, Move, Breeze, y-25
    Tya = -25
    Loop 20 {
        GuiControl, Move, ALL , % "y" Tya
        Tya  := (12 - Tya)/4 + Tya
        Sleep, 4
    }
}else{
    GuiControl, Move, ALL , y-25
    Ty = -25
    Loop 20 {
        GuiControl, Move, Ascent, % "y" Ty
        GuiControl, Move, Split , % "y" Ty
        GuiControl, Move, Bind  , % "y" Ty
        GuiControl, Move, Icebox, % "y" Ty
        GuiControl, Move, Haven , % "y" Ty
        GuiControl, Move, Breeze, % "y" Ty
        Ty  := (12 - Ty)/4 + Ty
        Sleep, 4
    }
    GuiControl, Enable, DSplit
    GuiControl, Enable, DBind
    GuiControl, Enable, DIcebox
    GuiControl, Enable, DHaven
    GuiControl, Enable, DBreeze
}
GuiControl, Enable, Set  All
GuiControl, Enable, Don't  LOCK
GuiControl, Enable, EXIT
GuiControl, Enable, Cancel
GuiControl, Enable, Save
GuiControl, Enable, DAscent
Return


Lockbox:
GuiControl, Disable, Don't  LOCK
Gui, Submit, NoHide
Sleep, 15
GuiControl, Enable, Don't  LOCK

Onselect:
Gui, Submit, NoHide
if(SSS = 1){
    Gui, Submit, NoHide
    GuiControl, Choose, DSplit , %DAscent%
    GuiControl, Choose, DBind  , %DAscent%
    GuiControl, Choose, DIcebox, %DAscent%
    GuiControl, Choose, DHaven , %DAscent%
    GuiControl, Choose, DBreeze, %DAscent%
}
Return

ButtonCancel:
Gui, Hide
Return

ButtonSave:
Gui, Submit
start := 1
Return

ButtonEXIT:
ExitApp

F7::ExitApp
