#Requires AutoHotkey v2.0


; Image detected
start := "|<>**50$27.gw7k5gwqSbjwzytV1VnNAN+HQr9Mvatt71l1BgTAA"
reward := "|<>**50$45.000000q7vr3jzizzzzzzzrwABgkkkkb9gY6Q6xtA1iriljDkBqxrZtiPUrUqhVvSKrKA"
ReturnLobby := "|<>**50$53.zk00007k1Xk0000BU31jQ0DyPw6tzzzzzrzxn3NAAAABtYamENkPvkNA1irilzYHw3NjBtzQUt63S3HSxVHSKqK6zzyzbzbzzU00000000U"
placedUnit := "|<>*105$35.zzzzzzBzzztyNzzznwkAE24NVGYV0sEV801kVWMlXzD7zzzySTzzzzzzzzs"
Victory := "|<>**50$69.00000000000000Q00000000S1zk08000007sTr07k00000n3AM1z000006Atb0AM000E0laDnzXrwzzDbDlyzwTzzzxyMwQS30w7U9wnbXXU870Q176AMoMHXlVXssln7X7wSCATWA61gNyWnlXi1UsBX7wSCAMkQ33AM3Uk3X730MNXUS70QMMs1aAz7syDb360Dkyzvwzzksk0s3VsD3sQ6A0000000000lU0000000006M0000000000z00000000001k4"
Failed := "|<>*150$57.zzzzzzzzzzzzzzzzzzzzzzzCTzzsz03zslzzz7s0Tz6Dzzsz03zzlzzz7szzzyDvzsz7y0Mls3k7s1U36C0Q0z0A0Mlll07s1XX6CA8sz7wQMlk377szX36CDskz7w0Mkkn07szk3670Q0zDz4Nsw3l7zzzzzzzzzzzzzzzzzzzzzzzzzzzzw"
tier := "|<>*146$28.zzzzzztzzk0bzzsDzzznzxzzDb1UwyM23nta9zDY1bwyNyTntUNzDb1bzzzzy"
cancelButton := "|<>*178$40.zzzzzzzwTDzzzz0Qzzzzs0nzzzz7XDzzzwT4nU9tnwG40X7Dl0l2AQz47CA3lskQssDU30k3Vy0QlUD7y3nbBwzzzzzzXzzzzzyTzzzzzlzzzzzzzs"
; cancelButton2 := "|<>*138$60.0000000000000000001U0y0000003s3zU000006M60k0000068A0M00003688ALzzlyDy8MzwH8v3sC8MXs30C1k68FUk30A1U68NUlX6ATX68szXX70z06DsSlX74TXyDw0E3741Vi7y0M3761U67z0wHDD3sD7zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzU"
cancelButton3 := "|<>*138$68.0000000001s0Ts0000000n0C3U0000008kC0M0000002A3030000A0sX1UlbzzsDtzskMzz4NXC7sCAAAPU40S0M1X360k103U608klUMMEEkn3WAADyD4CATk0XzXzXl7X7w0MzsCMEFskn3y7z0304SC0M1Uzs1s17XU60QDz0z4Nsy7s7XzzzzzzzzzzzzzzzzzzzzzzzU"
cancelButton2 := "|<>*134$53.00000000000000007UDs00000P1ks00000n60E00001a81zzyTbzAlzmNDlsCN6S0k61UAmAA1UA34NaNlXCFw8nATXaQXs1bs1UAtUMz7s10Nn0k67w74nb3kQTzzzzzzzzzzzzzzzzzs"
shadowboard := "|<>*119$65.znzzztzzzzzzbzzznzzzzzzDzzzbzzzzy61wDkD3DDMM40kC0M2AQ0HslyAMlWMMDVnnkNlbYkW7Uba0nWDA8C3tDAlb6QMMTY2SM30A1klk8Awk70Q7nXUk"
endscreenbutton := "|<>**50$54.000000000Ds1k00000Tw1M00000MB3R6asuEPzzTzzzzwPsMMkW666MPPPriqqqPv/Mri66mMP8SliyymM/RMtf76qDzzzjvzzy000000000U"

oktext := "|<>*146$48.003U00003y4k0000C34E0000M0wE0000k0QE0000UsQTzzzzVwATw9blXyAMs03lXyAEk0VVXyA1kUVXXyA3llk3VwA3lls7UsQ1kVs7k0QEk1wDs0wMM1wDy3wQwNwDzzzzzzwTzzzzzzsTzzzzzzszzzzzzzszzzzzzzzzU"
match := "|<>**50$41.yDUDUBVan0P0PX7bzrzrqCDz3nbw8M6631t6nCwyNnBiRvwnbvAvnvbDq1lUrCljHnnjLXzxxzzk"
stage := "|<>**50$37.DW0000Dzk000A7M0006HizjvzDVvSbbVUkA30M8t6FaDaxnQkAnCNYNy1X0kA5VtmSb2Tjjznz2006370001XU8"

cardChecks := "|<>**50$63.3k000000001zbU001s000Tyy000DU0030ok003C000lbXXjzstwTqDwTzzz7zzzlz0yHAkC7aO7s70M61UA3Q7Vk37sMlXvsQSSMz77ASTnXnnAMs1b6SQSCNX77wzlXVk3DsMzb70y70NnVUAsQCtyvCCS3b1zXzzzVzzzk00TXzs21yQ4"
cardChecks2 := "|<>**50$48.7y0007s0Tz0006M0w3U006M0k1izyyTslzzzzyTyXztAnmQ6b1UA30M6a30AS0Nya3DASCMSXzDAqSQ6Vz7AqCT2k10Aq0NWs1UAz0M6S7vgvrQCDzzzlzzw2wTzUzy0U"

exploding := "|<>**50$82.Dz000DU00zs001zw000a006NU0040E002800NW000E10008U01aM0017znzwWDsyTzszoTttYO/Vq1aNy9E7360sg1k683k50S0M1XU60MU60I1g3X6CC8lWAMlFwMOCMtsba8sb57z0slXX2AMWWAI0M1U660M1W+M1E1360sQ1k68ck506SMalMRWNabYLzzDXlwz3zznxl000280000000U4000800000003Us"
thrice := "|<>**27$53.zza01a00001A03A00202M07M007nwzTzrszUa9bYNsT3V4E70lUQ128U61a0kW4F6AT4TX48WCMW9z08F4IF4FyDkW8cW8UABV4FF4FUM12MaaMbVw7"
immunity := "|<>**25$75.S00000001w007s0000000Nz00n00000003CM06M0000000Rl00nzzTzrrzxyDnyNaCNXbaNtUHHn00k0Awk780SCM0601ba0NUFnH6AlXAwlXCD4O8lWAMXaSNlM6FCAHX4MnnCDUm8lWAMU6SNkw4F6AFX60ln62lWNnaQtsaONwq8TzzzzxzyTxyX00000000000AM00000000001a00000000000AkU"
Champion := "|<>**23$88.1sw000000D00000wuM000000a000060sU00000280000k1W0000009U000236D3zzzjwwzDwTszs7MaFXYOS7YT1W0U70M060sk60M4M20M1U081W0M1XEU8lX68MX68kX23XCXUQMlWCM7WC867i+8lX68lWA8csA0McU6AMU681WWMM1WX0MlW0sk6+80kCOS9bCM6bVtdUFzjDDzrjXnnwwzz00000002800000000000008U0000000000000a0000007k000003k00DUyC"
revitalize := "|<>**50$82.Dk000T001xw001zs001Ds04ok0041k004NU0FF000E3000HW015A00165zwTyCTwLzyzYQQ6PAk/4lH0C3FlU0ck0s3540k5640XX030AIE20I0FW4AMwMlFsMlE20AFlWXX5730504TkB6D6AQMSDoQE6UYMA0kl083FF0/6FUs330005Ba1YFD2lCAk30rXrwS7Xlzjzzvy00000000000002"


damage := "|<>*27$47.zzzzzzzz1zzzzzzw1zzzzzzsVzzzzzvlm00A211XU008421710Y2102A21A420C1UGN0UEQ7Vgr3Vkzzzzzznzzzzzzz7zzzzzzzzz"
spa := "|<>*43$58.zzzzzzzzzzVzzlyTzzzs3zz7lzzzzXSzQT7TzzwTUkFUEH90ly106100Y17lUkF0m0FaR42142836M231W11mANsQSCA6DBvbzzzzzzzzzzzzzzzzzzzU"
range := "|<>*54$36.zzzzzzkTzzzzUDzzzzWDzzzrX80611U80210U10kE0U10kE1X80m11rA5n1Vzzzynzzzzy3zzzzzzzU"

global Cards := [{ name: "Champion", value: Champion }, { name: "Immunity", value: immunity }, { name: "Thrice", value: thrice }, { name: "Exploding", value: exploding }]

currentCard := ""

; Level
upgrade0 := "|<>**50$15.XaBkRiPhrBithrBiPhkRj7hzxW2AkNU"
upgrade1 := "|<>**50$13.XcrbPXhlqyvPRhiqrPPhzq8XANU"
upgrade2 := "|<>**50$15.XiBkRiPhrRjnhwRiDhkBi1hzxW2AkNU"
upgrade3 := "|<>**50$15.XaBkRiPhyRhXhzBithkRj7hzxW2AkNU"
upgrade4 := "|<>**50$15.XuBnRiPhnRiHhURjvhzRgPhnxW2AkNU"
upgrade5 := "|<>**50$14.X4PUqtxiDPVqzBjnP1qsRjzMV6MNU"
upgrade6 := "|<>**50$15.XqBsRiDhnpi6hmRinhkRj6hzxW2AkNU"
upgrade7 := "|<>**50$15.W2BURjnhyphahdZjAhv5jMhzRW2AkNU"
upgrade8 := "|<>**50$15.X6BkRiHhmRi3hmRivhkRj7hzxW2AkNU"
upgrade9 := "|<>**50$15.XCBkRinhmRi3hyRjWhkpiQhzRW2AkNU"
upgrade10 := "|<>**50$20.XjAPn1qsnRiBnPvQqqrBhgrPP1qqsxjvzMU16M0NU"
unitmaxed := "|<>**50$41.D00003kzswxtzlWnvvPFXQwKSQv6ssswHqBlVkw6gPcH9gNMrNaFkuliz834xXRyHmQv6v4hZhqByDlyTgMU0004Mn0000Aky0000T4"

Levels := [
    upgrade0,
    upgrade1,
    upgrade2,
    upgrade3,
    upgrade4,
    upgrade5,
    upgrade6,
    upgrade7,
    upgrade8,
    upgrade9,
    upgrade10,
    unitmaxed
]

global roundStart := A_TickCount
global Movement := 0
global played := false
global slots := 1
global FoundLast := false
global SellLast := false

xNull := 784
yNull := 570


nullClick() {
    SendInput("q")
    BetterClick(xNull, yNull)
}

global choosingMap1 := [
    ; Sand Village
    [138, 190, "Sand Village"],
    ; Double Dungeon
    [138, 239, "Double Dungeon"],
    ; Shibuya
    [138, 286, "Shibuya Aftermath"],
    ; Golden Castle
    [138, 337, "Golden Castle"],
    ; Kuinshi Palace
    [138, 393, "Kuinshi Palace"],
    ; Land of the Gods
    [138, 420, "Land of the Gods"]
]

global choosingMap2 := [
    ; act1
    [297, 195],
    ; act2
    [297, 237],
    ; act3
    [297, 285]
]

global gamelong := [
    ; Sand Village
    345,
    ; Double Dungeon
    330,
    ; Shibuya
    360,
    ; Golden Castle
    460,
    ; Kuinshi Palace
    390,
    ; Land of the Gods
    400,
]

global units := Map( ; Name (str) -> Upgrade(int) -> Placement(int) -> AutoSkill(true/false) -> 1 Click skill(int) -> Coordinate([coor])
    "slot1", Map("name", "", "Upgrade", 0, "slot", 1, "Placement", 3, "AutoSkill", false, "Click1Skill", 1, "Coord", []),
    "slot2", Map("name", "", "Upgrade", 0, "slot", 2, "Placement", 3, "AutoSkill", false, "Click1Skill", 1, "Coord", []),
    "slot3", Map("name", "", "Upgrade", 0, "slot", 3, "Placement", 3, "AutoSkill", false, "Click1Skill", 1, "Coord", []),
    "slot4", Map("name", "", "Upgrade", 0, "slot", 4, "Placement", 3, "AutoSkill", false, "Click1Skill", 1, "Coord", []),
    "taka", Map("name", "Takarado", "Upgrade", 12, "slot", 5, "Placement", 1, "AutoSkill", false, "Click1Skill", 0, "Coord", []),
    "speed", Map("name", "Speedwagon", "Upgrade", 12, "slot", 6, "Placement", 3, "AutoSkill", false, "Click1Skill", 0, "Coord", [])
)

global coords := [
    Map( ;? Sand Village
        "Slot1", [[519, 571], [511, 477], [456, 436]],
        "Slot2", [[321, 442], [227, 466], [674, 531]],
        "Slot3", [[650, 449], [450, 149], [250, 117]],
        "Slot4", [[270, 525], [347, 450], [148, 439]],
        "taka", [[158, 202]],
        "speed", [[402, 301], [498, 273], [600, 243]]
    ),
    Map( ;? Double Dungeon
        "Slot1", [[173, 551], [88, 310], [173, 300]],
        "Slot2", [[38, 231], [35, 389], [38, 490]],
        "Slot3", [[113, 392], [194, 392], [195, 208]],
        "Slot4", [[68, 528], [106, 438], [184, 434]],
        "taka", [[218, 97]],
        "speed", [[470, 107], [516, 121], [457, 172]]
    ),
    Map( ;? Shibuya
        "Slot1", [[534, 299], [463, 287], [399, 282]],
        "Slot2", [[365, 401], [413, 405], [479, 413]],
        "Slot3", [[364, 361], [421, 364], [478, 365]],
        "Slot4", [[362, 260], [427, 260], [511, 260]],
        "taka", [[185, 90]],
        "speed", [[285, 89], [375, 80], [478, 120]]
    ),
    Map( ;? Golden
        "Slot1", [[170, 424], [105, 433], [170, 498]],
        "Slot2", [[710, 165], [674, 423], [679, 501]],
        "Slot3", [[285, 506], [333, 117], [54, 430]],
        "Slot4", [[318, 422], [316, 376], [106, 499]],
        "taka", [[454, 105]],
        "speed", [[521, 160], [583, 160], [520, 220]]
    ),
    Map( ;? Kunishi
        "Slot1", [[494, 377], [561, 380], [556, 302]],
        "Slot2", [[485, 122], [415, 370], [646, 353]],
        "Slot3", [[416, 301], [342, 379], [263, 459]],
        "Slot4", [[572, 413], [524, 422], [612, 532]],
        "taka", [[488, 234]],
        "speed", [[342, 169], [342, 229], [413, 171]]
    ),
    Map( ;? Buu
        "Slot1", [[468, 150], [421, 131], [437, 179]],
        "Slot2", [[583, 429], [560, 372], [648, 402]],
        "Slot3", [[422, 269], [432, 304], [437, 342]],
        "Slot4", [[481, 224], [543, 238], [512, 250]],
        "taka", [[629, 544]],
        "speed", [[150, 410], [123, 285], [188, 566]]
    )
]

UpdateUnits() {
    global units, slots
    global Slot1Name, Slot1Upgrade, Slot1Placement, Slot1Auto, Slot1SkillClick
    global Slot2Name, Slot2Upgrade, Slot2Placement, Slot2Auto, Slot2SkillClick
    global Slot3Name, Slot3Upgrade, Slot3Placement, Slot3Auto, Slot3SkillClick
    global Slot4Name, Slot4Upgrade, Slot4Placement, Slot4Auto, Slot4SkillClick

    data := LoadData() ; Load saved data from file
    slots := LoadSlots()
    units["taka"]["slot"] := 5 - slots + 1
    units["speed"]["slot"] := 6 - slots + 1

    Loop 4 {
        slotKey := "Slot" A_Index
        unitKey := "slot" A_Index

        if data.Has(slotKey) {
            units[unitKey]["name"] := data[slotKey]["Name"]
            units[unitKey]["Upgrade"] := data[slotKey]["Upgrade"]
            units[unitKey]["Placement"] := data[slotKey]["Placement"]
            units[unitKey]["AutoSkill"] := data[slotKey]["AutoSkill"]
            units[unitKey]["Click1Skill"] := data[slotKey]["ManualSkill"]
        }
    }

    AddToLog("Successfully load data")
}

global Priority := ["First", "Closest", "Last", "Strongest", "Weakest", "Bosses"]


Sell(unitName, coord) {
    nullClick()
    pos := units[unitName]["Coord"][coord]
    Loop 5 {
        if (FindText(&Xe, &Ye, 341, 215, 656, 488, 0, 0, placedUnit)) {
            SendInput("x")
            Sleep 1000
            return true
        } else {
            ClickMethod("Left", pos[1], pos[2])
        }
        Sleep 300
    }
}

PriorityChange(unitName, times, coord) {
    pos := units[unitName]["Coord"][coord]
    ClickMethod("Left", 594, 422)
    Sleep 500
    Loop 5 {
        if (FindText(&Xe, &Ye, 341, 215, 656, 488, 0, 0, placedUnit)) {

            Loop times {
                SendInput("r")
                Sleep 500
            }
            AddToLog("Change " unitName "'s priority target to " Priority[times])
            Sleep 1000
            ClickMethod("Left", 594, 422)
            return true
        } else {
            ClickMethod("Left", pos[1], pos[2])
        }
        Sleep 300
    }
}


global Nuker := []

NukeSkill(unitName, Coord) {
    nullClick()
    pos := units[unitName]["Coord"][Coord]
    AddToLog("Use " units[unitName]["name"] "'s nuke skill at " (A_TickCount - roundStart) // 60000 "m" Mod((A_TickCount - roundStart) // 1000, 60) "s")
    BetterClick(pos[1], pos[2])
    Sleep 200
    BetterClick(318, 257) ; Click Skill
    Sleep 200
    nullClick() ; Click outside
    Sleep 200
}

global SJWNuke := []

; sjw Skill


EnsurePlacement(unitName, coord) {
    if (!CheckPlacements(unitName, coord) || (5 - slots < units[unitName]["slot"] and (unitName != "speed" and unitName != "taka"))) {
        return true
    }
    pos := units[unitName]["Coord"][coord]
    if (FindText(&Xe, &Ye, 341, 215, 656, 488, 0, 0, placedUnit)) {
        SendInput("q")
        Sleep 100
        nullClick()
        AddToLog("Placed " units[unitName]["name"] " (" Coord ")")
        sjwSkill(unitName, coord)
        nullClick()
        Sleep 200
        return true
    } else {
        PlaceUnit(pos[1], pos[2], units[unitName]["slot"])
    }
    Sleep 200
}


EnsureUpgrade(unitName, Coord) {
    if (!CheckPlacements(unitName, coord) || units[unitName]["Upgrade"] = 1 || (5 - slots < units[unitName]["slot"] and (unitName != "speed" and unitName != "taka"))) {
        return true
    }
    pos := units[unitName]["Coord"][Coord]
    SendInput("q")
    if (FindText(&Xe, &Ye, 341, 215, 656, 488, 0, 0, placedUnit)) {
        MouseMove(170, 555)
        if (FindText(&X, &Y, 472, 250, 652, 478, 0, 0, Levels[units[unitName]["Upgrade"]])) {
            if (units[unitName]["Upgrade"] == 12) {
                AddToLog("Upgraded " units[unitName]["name"] " (" Coord ")" " to Max ")
            } else {
                AddToLog("Upgraded " units[unitName]["name"] " (" Coord ")" " to level " units[unitName]["Upgrade"] - 1)
            }
            AutoSkill(unitName, Coord)
            Skill1Click(unitName, Coord)
            nullClick()
            Sleep 200
            return true
        } else {
            if (FindText(&X, &Y, 472, 250, 652, 478, 0, 0, Levels[12])) {
                nullClick()
                AddToLog("Upgraded " units[unitName]["name"] " (" Coord ")" " to Max ")
                AutoSkill(unitName, Coord)
                Skill1Click(unitName, Coord)
                nullClick()
                Sleep 200
                return true
            }
            SendInput("t")
        }
    } else {
        ClickMethod("Left", pos[1], pos[2])
    }
    Sleep 300
}

AutoSkill(unitName, Coord) {
    if (units[unitName]["AutoSkill"]) {
        nullClick()
        Sleep 200
        pos := units[unitName]["Coord"][Coord]
        AddToLog("Use " units[unitName]["name"] "'s" " (" Coord ")" " auto skill at " (A_TickCount - roundStart) // 60000 "m" Mod((A_TickCount - roundStart) // 1000, 60) "s")
        BetterClick(pos[1], pos[2])
        Sleep 200
        BetterClick(310, 227) ; Click Auto Skill
        Sleep 200
        nullClick() ; Click outside
        Sleep 200
    }
}

Skill1Click(unitName, Coord) {
    if (units[unitName]["Click1Skill"] >= 4) {
        return
    }
    nullClick()
    Sleep 200

    pos := units[unitName]["Coord"][Coord]
    BetterClick(pos[1], pos[2])
    loop units[unitName]["Click1Skill"] - 1 {


        AddToLog("Use " units[unitName]["name"] "'s skill at " (A_TickCount - roundStart) // 60000 "m" Mod((A_TickCount - roundStart) // 1000, 60) "s")

        Sleep 200
        BetterClick(318, 257) ; Click Skill
        Sleep 200
        nullClick() ; Click outside
        if (A_Index < 2) {
            Sleep 5000
        }
    }
}

CheckPlacements(unitName, Current) {
    uPlacements := units[unitName]["Placement"]
    if (uPlacements >= Current) {
        return true
    } else {
        return false
    }
}


; sjw Skill
sjwSkill(unitName, Coord) {
    global SJWNuke
    if (units[unitName]["Click1Skill"] = 4) {
        nullClick()
        Sleep 100
        pos := units[unitName]["Coord"][Coord]

        BetterClick(pos[1], pos[2])
        Sleep 1000
        BetterClick(315, 262) ; Skill
        Sleep 1000
        BetterClick(369, 261) ; shadow
        Sleep 300
        AddToLog("Spawning Tank (Bear) (" Coord ") at " (A_TickCount - roundStart) // 60000 "m" Mod((A_TickCount - roundStart) // 1000, 60) "s")
        BetterClick(481, 425) ; Spawn bear
        Sleep 300
        BetterClick(405, 308) ; Click Cancel if there are already a bear
        Sleep 200
        if (Coord = 1) {
            BetterClick(712, 141) ; Close
            Sleep 200
            nullClick()
            SJWNuke.Push([unitName, Coord])
            return
        }
        AddToLog("Spawning Shadow Soldier (" Coord ") at " (A_TickCount - roundStart) // 60000 "m" Mod((A_TickCount - roundStart) // 1000, 60) "s")
        BetterClick(214, 427) ; Spawn dead shadow
        Sleep 200
        BetterClick(712, 141) ; Close
        Sleep 200
        nullClick()
        Sleep 200
    }
}

SJWNukeSkill(unitName, Coord) {
    nullClick()
    pos := units[unitName]["Coord"][Coord]
    AddToLog("SJW Nuke (" Coord ") at " (A_TickCount - roundStart) // 60000 "m" Mod((A_TickCount - roundStart) // 1000, 60) "s")
    BetterClick(pos[1], pos[2])
    Sleep 1000
    BetterClick(315, 261) ; skill
    Sleep 1000
    BetterClick(429, 265) ; Attack
    Sleep 1000
    BetterClick(397, 319) ; Duo
    Sleep 2000
    BetterClick(401, 315) ; Cancel
    Sleep 1000
    BetterClick(450, 318) ; Sjw
    Sleep 2000
    BetterClick(401, 315) ; Cancel
    Sleep 1000
    BetterClick(391, 372) ; Igris
    Sleep 2000
    BetterClick(401, 315) ; Cancel
    Sleep 1000
}

updateCoord(starter) {
    global units
    units["slot1"]["Coord"] := coords[starter]["Slot1"]
    units["slot2"]["Coord"] := coords[starter]["Slot2"]
    units["slot3"]["Coord"] := coords[starter]["Slot3"]
    units["slot4"]["Coord"] := coords[starter]["Slot4"]
    units["taka"]["Coord"] := coords[starter]["taka"]
    units["speed"]["Coord"] := coords[starter]["speed"]
}

StartPlaying() {
    global autoMacro, mapStarter, Movement, actnums, PlacedSpeedo, played
    ; Goto Story
    if (!ManualSpot.Value) {
        if (!LobbyCheck) {
            return
        }
        while (autoMacro) {
            if (FindText(&X, &Y, 336, 263, 503, 316, 0, 0, match)) {
                BetterClick(32, 318) ; Click Area
                Sleep 500
                BetterClick(370, 338) ; Click play
                Sleep 1000
                BetterClick(370, 338) ; Click play
                Sleep 1000
                BetterClick(370, 338) ; Click play
                Sleep 1000
                Moving("s", 5)
                Moving("d", 5)
                Sleep 1000
            }
            BetterClick(86, 247) ; Create Match
            Sleep 500
            BetterClick(506, 511) ; Legend Stage
            Sleep 500
            AddToLog("Choosing map " choosingMap1[mapStarter][3] " act " actnums)
            BetterClick(choosingMap1[mapStarter][1], choosingMap1[mapStarter][2])
            Sleep 500
            BetterClick(choosingMap2[actnums][1], choosingMap2[actnums][2])
            Sleep 500
            BetterClick(453, 446) ; Start
            Sleep 1000
            cancelClick()
            Sleep 1000
            BetterClick(90, 471) ; Click Start
            Sleep 20000 ; Wait For the map to load

        }

        while (autoMacro and !FindText(&X, &Y, 1002, 224, 1130, 313, 0, 0, stage)) {
            Sleep 500
            BetterClick(403, 312) ; pick Card
            Sleep 500
            BetterClick(563, 72) ; Close LB
            Sleep 500
            SendInput("{Left Down}")
            Sleep 100
            SendInput("{Left Up}")
        }

        AddToLog("Lobby loaded, Time to search for the right spot")
        updateCoord(mapStarter)
        fixposition(mapStarter)
        AddToLog("Found the Spot")
    }

    if (!FindText(&X, &Y, 874, 433, 1033, 504, 0, 0, ReturnLobby)) {
        restartMatch()
    } else {
        BetterClick(491, 424)
        Sleep 500
    }

    updateMaps(starting_map[mapStarter])
    while (autoMacro) {
        antiSoftLock()
        if (played) {
            if (!PlacedSpeedo) {
                switch (mapStarter) {
                    case 1: ; Sand Village
                        fixSand()
                    default:
                        PlacedSpeedo := true
                }
            }
            if (PlacedSpeedo) {
                if (mapStarter = 6) {
                    Strat2
                }
                else {
                    Strat1()
                }
            }
        }
    }
}

cancelClick() {
    Loop 3 {
        Sleep 50
        BetterClick(403, 301)
        Sleep 50
        BetterClick(403, 311)
        Sleep 50
        BetterClick(405, 321)
        Sleep 50
        BetterClick(405, 331)
        Sleep 50
        BetterClick(404, 341)
        Sleep 50
        BetterClick(404, 351)
        Sleep 50
        BetterClick(404, 361)
        Sleep 50
        BetterClick(404, 371)
        Sleep 50
    }
}

antiSoftLock() {
    global mapStarter, Movement, played, roundStart, PlacedSpeedo, SellLast, FoundLast, Nuker, SJWNuke
    if (ok := FindText(&X, &Y, 662, 86, 834, 178, 0, 0, endscreenbutton)) {
        nullClick()
        Sleep 300
        FindTextClick(X, Y)
        Sleep 300
    }

    if (FindText(&X, &Y, 408, 153, 1099, 532, 0, 0, shadowboard)) {
        BetterClick(711, 137)
        Sleep 500
        nullClick()
        Sleep 200
    }

    if (ok := FindText(&X, &Y, 574, 227, 878, 397, 0.1, 0.1, cancelButton2)) {
        nullClick()
        Sleep 500
        FindTextClick(X, Y)
        Sleep 300
    }

    if (ok := FindText(&X, &Y, 583, 407, 896, 500, 0, 0, cancelButton)) {
        nullClick()
        FindTextClick(X, Y)
        Sleep 300
    }

    if (ok := FindText(&X, &Y, 640, 109, 872, 257, 0, 0, start)) {
        PlacedSpeedo := false
        nullClick()
        cardCheck()
        updateCoord(mapStarter)
        Movement := 0
        BetterClick(369, 126) ; Click Start
        Sleep 500
        Loop 3{
            BetterClick(412, 305)
            Sleep 200
        }
        roundStart := A_TickCount
        FoundLast := false
        SellLast := false
        played := true
        SJWNuke := []
        Nuker := []
        Sleep 500
    }

    if (currentCard = "Thrice" or currentCard = "Exploding") {
        AddToLog("Found " currentCard " Card, Restarting match")
        Sleep 5000
        nullClick()
        Sleep 200
        restartMatch()
    }


    if (ok := FindText(&X, &Y, 587, 270, 901, 420, 0, 0, cancelButton)) {
        nullClick()
        BetterClick(405, 308)
        Sleep 500
    }

    if (FindText(&X, &Y, 410, 374, 531, 413, 0, 0, ReturnLobby)) {
        nullClick()
        sleep 500
        win := true
        if (FindText(&X, &Y, 466, 144, 859, 373, 0, 0, Victory)) {
            AddToLog("Found Win")

        } else if (FindText(&X, &Y, 466, 144, 859, 373, 0, 0, Failed)) {
            AddToLog("Found Lose")
            win := false
        } else {
            AddToLog("Couldn't detect win or lose, assuming win")
        }
        updateWin(win)
        Sleep 500
        InitiateWebhook(win)
        Sleep 500
        AddToLog("Waiting 12s for ability to finish")
        Sleep 12000
        restartMatch3()
        PlacedSpeedo := false
        Movement := 0
        played := false
        roundStart := A_TickCount
        SJWNuke := []
        Nuker := []

    }

    if (played) {
        if (A_TickCount - roundStart > (gamelong[mapStarter] - 30) * 1000 and !SellLast) {

            Sleep 100
            AddToLog("Selling speeds for more money at " (A_TickCount - roundStart) // 60000 "m" Mod((A_TickCount - roundStart) // 1000, 60) "s")

            Sell("speed", 1)
            Sell("speed", 2)
            Sell("speed", 3)
            SellLast := true
        }

        if (A_TickCount - roundStart > (gamelong[mapStarter]) * 1000 and !FoundLast) {
            ; Normal Nuke first
            Loop Nuker.Length {
                NukeSkill(Nuker[A_Index][1], Nuker[A_Index][2])
            }

            ; sjw nuke
            Loop SJWNuke.Length {
                SJWNukeSkill(SJWNuke[A_Index][1], SJWNuke[A_Index][2])
            }

            AddToLog("Change mode to auto claim reward at " (A_TickCount - roundStart) // 60000 "m" Mod((A_TickCount - roundStart) // 1000, 60) "s")
            nullClick()
            FoundLast := true
            Movement := 200
        }
    }


}

restartMatch3() {
    nullClick()
    Sleep 300
    BetterClick(343, 448) ; restart match
    Sleep 500
}

cardCheck() {
    global currentCard
    nullClick()
    Sleep 100
    MouseMove(200, 270)
    Sleep 100
    MouseMove(400, 270)
    Sleep 100
    MouseMove(600, 270)
    Sleep 100
    MouseMove(640, 125)
    Sleep 100

    cardSelect := 1
    while (cardSelect <= Cards.Length) {
        if (ok := FindText(&X, &Y, 335, 47, 1136, 670, 0.1, 0.1, Cards[cardSelect].value)) {
            FindTextClick(X, Y)
            AddToLog("Select Card: " Cards[cardSelect].name)
            currentCard := Cards[cardSelect].name
            return
        } else {
            cardSelect++
        }
        Sleep 100
    }
    BetterClick(400, 270)
    Sleep 1000
}

restartMatch() {
    global currentCard, Movement, played
    Movement := 0
    played := false
    currentCard := ""
    nullClick()
    BetterClick(21, 576) ; Setting
    Sleep 500
    BetterClick(515, 283) ; Restart Match
    Sleep 500
    BetterClick(354, 313) ; Yes
    Sleep 500
}