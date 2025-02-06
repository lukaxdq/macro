#Requires AutoHotkey v2.0
global executionCount := 0

SetTimer RunMacro, 600000

^m::RunMacro()



RunMacro() {
    global executionCount
    try {
        if WinExist("ahk_exe Discord.exe") {
            WinActivate
            WinWaitActive

            Send "/work"
            
            Sleep 500
            Send "{Enter}"
            Send "{Enter}"
            Sleep 500
            Send "/deposit all"
            Sleep 500
            Send "{Enter}"
            executionCount++
            ToolTip "Macro executed " executionCount " times"
            Sleep 2000
            FileAppend "Macro executed " executionCount " times at " A_Now "`n", "log.txt"
            run "C:\Users\PCuse\OneDrive\Radna površina\macro\webhook.ahk"
            sleep 100
            WinClose("C:\Users\PCuse\OneDrive\Radna površina\macro\webhook.ahk")
            
        }
    } 
}
