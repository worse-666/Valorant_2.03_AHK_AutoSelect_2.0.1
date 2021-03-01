CoordMode, Mouse , Screen


SysGet, resolution, Monitor, 1

if not (resolutionRight = 1920 and resolutionBottom = 1080) {

    MsgBox, Your resolution is not 1920*1080 `n This script may not work

}else{
    
    MsgBox, Welcome AUTO SELECT script `n ------------------------------ `n F5:Show Setting Window `n F7:Exit

}


global agent_x := 959
global agent_y := 816

agent_xy(x){

    if (x = "None") {
        agent_x := 959
        agent_y := 816
    }
    if (x = "Breach") {
        agent_x := 710
        agent_y := 927
    }
    if (x = "Brimstone") {
        agent_x := 795
        agent_y := 927
    }
    if (x = "Cypher") {
        agent_x := 880
        agent_y := 927
    }
    if (x = "Jett") {
        agent_x := 965
        agent_y := 927
    }
    if (x = "Killjoy") {
        agent_x := 1050
        agent_y := 927
    }
    if (x = "Omen") {
        agent_x := 1135
        agent_y := 927
    }
    if (x = "Phoenix") {
        agent_x := 1220
        agent_y := 927
    }
    if (x = "Raze") {
        agent_x := 710
        agent_y := 1010
    }
    if (x = "Reyna") {
        agent_x := 795
        agent_y := 1010
    }
    if (x = "Sage") {
        agent_x := 880
        agent_y := 1010
    }
    if (x = "Skye") {
        agent_x := 965
        agent_y := 1010
    }
    if (x = "Sova") {
        agent_x := 1050
        agent_y := 1010
    }
    if (x = "Viper") {
        agent_x := 1135
        agent_y := 1010
    }
    if (x = "Yoru") {
        agent_x := 1220
        agent_y := 1010
    }
}


select() {

    CoordMode Pixel
    PixelSearch, __FoundX, __FoundY, 28, 28, 28, 28, 0xFFFFFF,,Fast RGB
    CoordMode Mouse
    if (ErrorLevel=0) {
    } else {

       CoordMode Pixel
        PixelSearch, __FoundX, __FoundY, 1897, 25, 1897, 25, 0xFFFFFF,,Fast RGB
        CoordMode Mouse
        if (ErrorLevel=0) {     
        } else {

            CoordMode Pixel
            PixelSearch, __FoundX, __FoundY, 1, 100, 1, 100, 0x7095E1,3,Fast RGB
            CoordMode Mouse
           if (ErrorLevel=0 and not agent_x = 959 and not agent_y = 816 ) { 
              
                Loop 5
                {
                    MouseMove %agent_x%, %agent_y%, 0
                    Send {LButton DOWN}
                    Send {LButton UP}
                    MouseMove 959 , 816, 0
                    Send {LButton DOWN}
                    Send {LButton UP}
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



            }
        }
    }
}


#SingleInstance, force

Gui, Font, s15 caqua c40DCDC
Gui, Add, Text, x30  y-20, Ascent
Gui, Add, Text, x+58     , Split
Gui, Add, Text, x+68     , Bind
Gui, Add, Text, x+61     , Icebox
Gui, Add, Text, x+53     , Haven 
Gui, Font, s11 caqua 
Gui, Add, DropDownList, x14  y45 w85 R15 vDAscent gOnselect, None|Breach|Brimstone|Cypher|Jett|Killjoy|Omen|Phoenix|Raze|Reyna|Sage|Skye|Sova|Viper|Yoru
Gui, Add, DropDownList, x117 y45 w85 R15 vDSplit           , None|Breach|Brimstone|Cypher|Jett|Killjoy|Omen|Phoenix|Raze|Reyna|Sage|Skye|Sova|Viper|Yoru
Gui, Add, DropDownList, x220 y45 w85 R15 vDBind            , None|Breach|Brimstone|Cypher|Jett|Killjoy|Omen|Phoenix|Raze|Reyna|Sage|Skye|Sova|Viper|Yoru
Gui, Add, DropDownList, x323 y45 w85 R15 vDIcebox          , None|Breach|Brimstone|Cypher|Jett|Killjoy|Omen|Phoenix|Raze|Reyna|Sage|Skye|Sova|Viper|Yoru
Gui, Add, DropDownList, x426 y45 w85 R15 vDHaven           , None|Breach|Brimstone|Cypher|Jett|Killjoy|Omen|Phoenix|Raze|Reyna|Sage|Skye|Sova|Viper|Yoru
Gui, Font, s8 caqua c006C6C
Gui, Add, Text, vTa x15 y140 , ╔═══╦╗　╔╦════╦═══╗　╔═══╦═══╦╗　　╔═══╦═══╦════╗
Gui, Add, Text, vTb x15 y+0  , ║╔═╗║║　║║╔╗╔╗║╔═╗║　║╔═╗║╔══╣║　　║╔══╣╔═╗║╔╗╔╗║
Gui, Add, Text, vTc x15 y+0  , ║║　║║║　║╠╝║║╚╣║　║║　║╚══╣╚══╣║　　║╚══╣║　╚╩╝║║╚╝
Gui, Add, Text, vTd x15 y+0  , ║╚═╝║║　║║　║║　║║　║║　╚══╗║╔══╣║　╔╣╔══╣║　╔╗　║║
Gui, Add, Text, vTe x15 y+0  , ║╔═╗║╚═╝║　║║　║╚═╝║　║╚═╝║╚══╣╚═╝║╚══╣╚═╝║　║║
Gui, Add, Text, vTf x15 y+0  , ╚╝　╚╩═══╝　╚╝　╚═══╝　╚═══╩═══╩═══╩═══╩═══╝　╚╝
GuiControl, Choose, DAscent, None
GuiControl, Choose, DSplit , None
GuiControl, Choose, DBind  , None
GuiControl, Choose, DIcebox, None
GuiControl, Choose, DHaven , None
Gui, Font, s11 caqua
Gui, Add, Button, -default x15  y305 w80 h28, EXIT
Gui, Add, Button, -default x325  y305 w80 h28, Cancel
Gui, Add, Button, +default x425  y305 w80 h28, OK
Gui, Font, s10 cDDDDDD
Gui, Add, CheckBox, x20 y80 vSSS gOOO, Set All

Gui, +AlwaysOnTop
Gui, Color, 101010 
;Gui, Show, x600 y400 w520 h340 ,Agent setting window, `t


global DAscent
global DSplit
global DBind
global DIcebox
global DHaven
global SSS


while TRUE {

	if GetKeyState("F5") {
        GuiControl, Disable, Set All
        GuiControl, Disable, Cancel
        GuiControl, Disable, EXIT
        GuiControl, Disable, OK
        GuiControl, Disable, DAscent
        GuiControl, Disable, DSplit
        GuiControl, Disable, DBind
        GuiControl, Disable, DIcebox
        GuiControl, Disable, DHaven

		Gui, Show, x700 y400 w520 h340 ,Agent setting window, `t
        global Ty    := -20
        global DSx   := 14
        global DBx   := 14
        global DIx   := 14
        global DHx   := 14
        global Tacex := -500
        global Tbdfx := 520

        Loop 20 {
            Gui, Font, s8 c005C5C,

            GuiControl, Move, Ascent, % "y" Ty
            GuiControl, Move, Split , % "y" Ty
            GuiControl, Move, Bind  , % "y" Ty
            GuiControl, Move, Icebox, % "y" Ty
            GuiControl, Move, Haven , % "y" Ty
            Ty  := (12 - Ty)/4 + Ty 

            GuiControl, Move, DSplit , % "x" DSx
            GuiControl, Move, DBind  , % "x" DBx
            GuiControl, Move, DIcebox, % "x" DIx
            GuiControl, Move, DHaven , % "x" DHx
            DSx := (117 - DSx)/4.5 + DSx
            DBx := (222 - DBx)/4.5 + DBx
            DIx := (325 - DIx)/4.5 + DIx
            DHx := (428 - DHx)/4.5 + DHx

            GuiControl, Move, Ta , % "x" Tacex
            GuiControl, Move, Tc , % "x" Tacex
            GuiControl, Move, Te , % "x" Tacex
            GuiControl, Move, Tb , % "x" Tbdfx
            GuiControl, Move, Td , % "x" Tbdfx
            GuiControl, Move, Tf , % "x" Tbdfx
            Tacex := (20 - Tacex)/4.5 + Tacex
            Tbdfx := (11 - Tbdfx)/4.5 + Tbdfx

            Sleep % 4
        }
        GuiControl, Enable, Set All
        GuiControl, Enable, EXIT
        GuiControl, Enable, Cancel
        GuiControl, Enable, OK
        GuiControl, Enable, DAscent
        GuiControl, Enable, DSplit
        GuiControl, Enable, DBind
        GuiControl, Enable, DIcebox
        GuiControl, Enable, DHaven
	}
	;if GetKeyState("F6") {
	;	start := 0
	;}
	if GetKeyState("F7") {
		ExitApp
	}

	if (start = 1) {
        select()
	}	
}


OOO:
Gui, Submit, NoHide
if(SSS = 1){
    Gui, Submit, NoHide
    GuiControl, Disable, DSplit
    GuiControl, Disable, DBind
    GuiControl, Disable, DIcebox
    GuiControl, Disable, DHaven
    GuiControl, Choose, DSplit , %DAscent%
    GuiControl, Choose, DBind  , %DAscent%
    GuiControl, Choose, DIcebox, %DAscent%
GuiControl, Choose, DHaven , %DAscent%
}else{
    GuiControl, Enable, DSplit
    GuiControl, Enable, DBind
    GuiControl, Enable, DIcebox
    GuiControl, Enable, DHaven
}
Return


Onselect:
Gui, Submit, NoHide
if(SSS = 1){
    Gui, Submit, NoHide
    GuiControl, Choose, DSplit , %DAscent%
    GuiControl, Choose, DBind  , %DAscent%
    GuiControl, Choose, DIcebox, %DAscent%
    GuiControl, Choose, DHaven , %DAscent%
}
Return


ButtonCancel:
Gui, Hide
Return


ButtonOK:
Gui, Submit
start := 1
Return
    

ButtonEXIT:
ExitApp
