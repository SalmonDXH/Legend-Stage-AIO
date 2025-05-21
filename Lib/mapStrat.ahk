#Requires AutoHotkey v2.0




global PlacedSpeedo := false

fixSand() {
    global PlacedSpeedo, slots, placedUnit
    if (!PlacedSpeedo) {
        if (FindText(&Xe, &Ye, 341, 215, 656, 488, 0, 0, placedUnit)) {
            PlacedSpeedo := true
            Sleep 200
            BetterClick(231, 412) ; Click Spectate
            return true
        } else {
            PlaceUnit(774, 142, 6-slots+1)
            Sleep 500
        }
    }
}