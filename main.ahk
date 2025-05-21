#Requires AutoHotkey v2.0


#Include <FindText>
#Include <Discord-Webhook-master\lib\WEBHOOK>
#Include <AHKv2-Gdip-master\Gdip_All>
#Include <webhooksettings>
#Include <gui>
#Include <otherfuncs>
#Include <placeUnit>
#Include <placementsettings>
#Include <stratergy>
#Include <mapStrat>
#Include <fixpos>

; #Include %A_ScriptDir%\Lib\webhooksettings.ahk
SendMode "Event"

RobloxWindow := "ahk_exe RobloxPlayerBeta.exe"

; Image detected
Lobby := "|<>**50$44.yS1zy00BgUPRU03D/zrSTzlXzxryzw0kPQC6HNBarNglqnNhqPgRwkPA62LNiKnLljzzzzzzzs"

; Image
sandspot := A_ScriptDir "\Lib\SpotImage\SandVillage.png"
ddspot := A_ScriptDir "\Lib\SpotImage\DoubleDungeon.png"
shibuyaspot := A_ScriptDir "\Lib\SpotImage\ShibuyaAftermath.png"
goldenspot := A_ScriptDir "\Lib\SpotImage\GoldenCastle.png"
kuinshispot := A_ScriptDir "\Lib\SpotImage\kuinshi.png"
buuspot := A_ScriptDir "\Lib\SpotImage\buu.png"
global spot := [
    sandspot,
    ddspot,
    shibuyaspot,
    goldenspot,
    kuinshispot,
    buuspot
]

global MacroStartTime := A_TickCount
global autoMacro := false
global mapStarter := 0
global actnums := 0
global JoinTimer := 1000
global imageopen := false

global webhook := ""
global DiscordUserID := ""

WebhookURLFile := "Lib\Settings\WebhookURL.txt"
if FileExist(WebhookURLFile) {
    WebhookURL := FileRead(WebhookURLFile, "UTF-8")
    if (WebhookURL != "") {
        webhook := WebHookBuilder(WebhookURL) ;
    }
}


F1:: {
    if WinExist("Salmon Macro") {
        Sleep 50
        WinActivate("Salmon Macro")
        Sleep 100
    }
    if WinExist(RobloxWindow) {
        WinActivate(RobloxWindow)
        Sleep 50
        WinMove(327, 15, 800, 600, RobloxWindow)
        Sleep 50
    }

}

F2:: {
    global MacroStartTime, autoMacro, mapStarter, JoinTimer, actnums
    autoMacro := true
    MacroStartTime := A_TickCount
    portalcoord := false
    AddToLog("Start Macro")
    UpdateUnits()
    mapStarter := MapStart.Value
    actnums := Act.Value
    StartPlaying()
}

F3:: {
    global MacroStartTime, autoMacro
    autoMacro := false
    StopMacro()
}

F4:: {
    AddToLog("Testing Webhook")
    InitiateWebhook(true)
}

; First, create the GUI
MapImage := Gui("-Caption -Border +AlwaysOnTop")

; Then add the Picture control and store the reference to it
MapPic := MapImage.Add("Picture", "x0 y0 +BackgroundTrans", "")

F5::{ ; open image 
    global imageopen
    if (imageopen){
        ; close image
        imageopen := false
        MapImage.Hide()
    } else {
        ; open image
        imageopen := true
        
        ; Here's the fix - use the picture control object to set the image
        MapPic.Value := spot[mapStart.Value]
        
        MapImage.Show("x336 y43 w800 h598")
        WinSetTransparent(190, MapImage)
    }
}

LobbyCheck() {
    if WinExist("Salmon Macro") {
        WinActivate("Salmon Macro")
    }

    if WinExist(RobloxWindow) {
        WinActivate(RobloxWindow)
        WinMove(327, 15, 800, 600, RobloxWindow)
    } else {
        MsgBox("You must have ROBLOX open in order to start the macro (microsoft roblox doesnt work)", "Error T4", "+0x1000",)
        return false
    }

    if (WinExist("Webhook Settings") || WinExist("Placement UI")) {
        MsgBox("You must close all GUIs from this macro (guides/settings) in order to start the macro!", "Error T2", "+0x1000",)
        return false
    }
    SendInput("/")
    Sleep 100
    BetterClick(140, 32) ; Close chat
    Sleep 200
    BetterClick(641, 74) ; close lb
    Sleep 500
    BetterClick(665, 146) ; close updatelog
    Sleep 200

    if (ok := FindText(&X, &Y, 1059, 430, 1132, 513, 0, 0, Lobby)) {
        return true
    } else {
        MsgBox("You must be in lobby to start macro, if you already in the lobby check you ui scale", "Error T3", "+0x1000",)
        return false
    }


}