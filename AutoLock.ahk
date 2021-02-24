CoordMode, Mouse , Screen


agent_xy(x){

	global
	agent_x :=959
	agent_y :=816

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
    if (x = "Exit") {
    	ExitApp
    }
}


Menu, AgentMenu, Add, Breach   , MenuHandler
Menu, AgentMenu, Add, Brimstone, MenuHandler
Menu, AgentMenu, Add, Cypher   , MenuHandler
Menu, AgentMenu, Add, Jett     , MenuHandler
Menu, AgentMenu, Add, Killjoy  , MenuHandler
Menu, AgentMenu, Add, Omen     , MenuHandler
Menu, AgentMenu, Add, Phoenix  , MenuHandler
Menu, AgentMenu, Add, Raze     , MenuHandler
Menu, AgentMenu, Add, Reyna    , MenuHandler
Menu, AgentMenu, Add, Sage     , MenuHandler
Menu, AgentMenu, Add, Skye     , MenuHandler
Menu, AgentMenu, Add, Sova     , MenuHandler
Menu, AgentMenu, Add, Viper    , MenuHandler
Menu, AgentMenu, Add, Yoru     , MenuHandler
Menu, AgentMenu, Add,
Menu, AgentMenu, Add, Exit     , MenuHandler

MenuHandler:
agent_xy(x := A_ThisMenuItem)
start := 1


while TRUE {

	if GetKeyState("F5") {
		Menu, AgentMenu, Show
	}
	if GetKeyState("F6") {
		start := 0
	}
	if GetKeyState("F7") {
		ExitApp
	}


		if (start = 1) {

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
					PixelSearch, __FoundX, __FoundY, 46, 91, 46, 91, 0x94AEE3,,Fast RGB
					CoordMode Mouse
					if (ErrorLevel=0) {	
						
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
					}
				}
			}
		}	
	
}

