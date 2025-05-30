#Requires AutoHotkey v2

SendMode "Event"

SearchDelay := 1000


VoteStart() {
    BetterClick(365, 120)
}

ClickMethod(button, x, y, clickDelay := 0) {
    MouseMove(x, y)
    MouseMove(1, 0, , "R")
    MouseClick("Left", -1, 0, , , , "R")
}


Moving(key, time){
    SendInput("{" key " Down}")
    Sleep time*1000
    SendInput("{" key " Up}")
    Sleep 500
}

FindTextClick(X,Y){
    BetterClick(X-335, Y-46)
}

LookDown() {
    BetterClick(700, 299)
    loop 40 {
        SendInput("{WheelUp}")
        Sleep 50
    }
    Sleep 1000
    MouseGetPos(&x, &y)
    SendInput(Format("{Click {} {} Left}", x, y + 150))
	Sleep 1000

    loop 40 {
        SendInput("{WheelDown}")
        Sleep 50
    }
}

PlaceUnit(x, y, slot) {
    Send(slot)
    Sleep (SearchDelay / 2)
    clickmethod("Left", x, y)
}

	


ChatGPTSleep(lPeriod) { ; also credits to yuh + chatgpt for this
    if (hTimer := DllCall("CreateWaitableTimerExW", "ptr", 0, "ptr", 0, "uint", 3, "uint", 0x1F0003, "uptr"))
		&& DllCall("SetWaitableTimer", "uptr", hTimer, "uint64*", lPeriod * -10000, "int", 0, "ptr", 0, "ptr", 0, "int", 0)
		DllCall("WaitForSingleObject", "uptr", hTimer, "UInt", 0xFFFFFFFF), DllCall('CloseHandle', "uptr", hTimer)
}


InitiateWebhook(MatchStat) {
    global WebhookURL := FileRead(WebhookURLFile, "UTF-8")
    global DiscordUserID := FileRead(DiscordUserIDFile, "UTF-8")

    if (webhookURL ~= 'i)https?:\/\/discord\.com\/api\/webhooks\/(\d{18,19})\/[\w-]{68}') {
        global webhook := WebHookBuilder(WebhookURL)
        SendWebhook(MatchStat)
    }
}

AddToLog(text) {
    global lastlog
    SendActivityLogsStatus := FileRead(SendActivityLogsFile, "UTF-8")
    ActivityLogs.Value := text "`n" ActivityLogs.Value
    if FileExist(SendActivityLogsFile) && (SendActivityLogsStatus = "1") {
        lastlog := text
        WebhookLog()
    }

}


StopMacro() {
    global WebhookURL := FileRead(WebhookURLFile, "UTF-8")
    global DiscordUserID := FileRead(DiscordUserIDFile, "UTF-8")

    if (webhookURL ~= 'i)https?:\/\/discord\.com\/api\/webhooks\/(\d{18,19})\/[\w-]{68}') {
        global webhook := WebHookBuilder(WebhookURL)
        EndWebhook()
    } 
    Reload()
}

BetterClick(x, y) { ; credits to yuh for this, lowk a life saver
    MouseMove(x, y)
    MouseMove(1, 0, , "R")
    MouseClick("Left", -1, 0, , , , "R")
    Sleep(50)
}

WebhookLog() {
    global WebhookURL := FileRead(WebhookURLFile, "UTF-8")
    global DiscordUserID := FileRead(DiscordUserIDFile, "UTF-8")

    if (webhookURL ~= 'i)https?:\/\/discord\.com\/api\/webhooks\/(\d{18,19})\/[\w-]{68}') {
        global webhook := WebHookBuilder(WebhookURL)
        TextWebhook()
    } 
}


SensitivityCalculator() {
    width := A_ScreenWidth
    height := A_ScreenHeight

    SensitivityCalc := ((width*width) + (height*height)) / ((1920*1920) + (1080*1080))
    Sensitivity := (0.15 * Sqrt(SensitivityCalc))
    Sensitivity := Format("{:.3f}", Sensitivity)
    SensitivityString := "" Sensitivity
    loop {
        if (SubStr(SensitivityString, -1) = "0") {
            SensitivityString := SubStr(SensitivityString, 1, (StrLen(SensitivityString) - 1))
            
        }
        else {
            break
        }
    }
   return SensitivityString
}

TypeText(text){
    Loop StrLen(text)
    {
        SendInput(SubStr(text, A_Index, 1))
        Sleep 200
    }
}