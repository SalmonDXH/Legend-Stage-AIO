#Requires AutoHotkey v2.0





Strat1() { ; Normal Strat
    global Movement
    switch (Movement) {
        case 0:
            if (EnsurePlacement("speed",1)){
                Movement++
            }
        case 1:
            if (EnsurePlacement("speed",2)){
                Movement++
            }
        case 2:
            if (EnsurePlacement("speed",3)){
                Movement++
            }
        case 3:
            if (EnsurePlacement("taka",1)){
                Movement++
            }
        case 4:
            if (EnsurePlacement("slot1",1)){
                Movement++
            }
        case 5:
            if (EnsurePlacement("slot1",2)){
                Movement++
            }
        case 6:
            if (EnsurePlacement("slot1",3)){
                Movement++
            }
        case 7:
            if (EnsureUpgrade("speed",1)){
                Movement++
            }
        case 8:
            if (EnsureUpgrade("speed",2)){
                Movement++
            }
        case 9:
            if (EnsureUpgrade("speed",3)){
                Movement++
            }
        case 10:
            if (EnsureUpgrade("taka",1)){
                Movement++
            }
        case 11:
            if (EnsurePlacement("slot2",1)){
                Movement++
            }
        case 12:
            if (EnsurePlacement("slot2",2)){
                Movement++
            }
        case 13:
            if (EnsurePlacement("slot2",3)){
                Movement++
            }
        case 14:
            if (EnsurePlacement("slot3",1)){
                Movement++
            }
        case 15:
            if (EnsurePlacement("slot3",2)){
                Movement++
            }
        case 16:
            if (EnsurePlacement("slot3",3)){
                Movement++
            }
        case 14:
            if (EnsurePlacement("slot4",1)){
                Movement++
            }
        case 15:
            if (EnsurePlacement("slot4",2)){
                Movement++
            }
        case 16:
            if (EnsurePlacement("slot4",3)){
                Movement++
            }
        case 17:
            if (EnsureUpgrade("slot1",1)){
                Movement++
            }
        case 18:
            if (EnsureUpgrade("slot2",1)){
                Movement++
            }
        case 19:
            if (EnsureUpgrade("slot1",2)){
                Movement++
            }
        case 20:
            if (EnsureUpgrade("slot1",3)){
                Movement++
            }
        
        case 21:
            if (EnsureUpgrade("slot2",2)){
                Movement++
            }
        case 22:
            if (EnsureUpgrade("slot2",3)){
                Movement++
            }
        case 23:
            if (EnsureUpgrade("slot3",1)){
                Movement++
            }
        case 24:
            if (EnsureUpgrade("slot3",2)){
                Movement++
            }
        case 25:
            if (EnsureUpgrade("slot3",3)){
                Movement++
            }
        case 26:
            if (EnsureUpgrade("slot4",1)){
                Movement++
            }
        case 27:
            if (EnsureUpgrade("slot4",2)){
                Movement++
            }
        case 28:
            if (EnsureUpgrade("slot4",3)){
                Movement++
            }
        default:
            Movement++
            nullClick()
            Sleep 500
    }
}
Strat2() { ; Each unit upgraded Strat
    global Movement
    switch (Movement) {
        case 0:
            if (EnsurePlacement("speed",1)){
                Movement++
            }
        case 1:
            if (EnsurePlacement("speed",2)){
                Movement++
            }
        case 2:
            if (EnsurePlacement("speed",3)){
                Movement++
            }
        case 3:
            if (EnsurePlacement("taka",1)){
                Movement++
            }
        case 4:
            if (EnsurePlacement("slot1",1)){
                Movement++
            }
        case 5:
            if (EnsurePlacement("slot1",2)){
                Movement++
            }
        case 6:
            if (EnsurePlacement("slot1",3)){
                Movement++
            }
        case 7:
            if (EnsureUpgrade("speed",1)){
                Movement++
            }
        case 8:
            if (EnsureUpgrade("speed",2)){
                Movement++
            }
        case 9:
            if (EnsureUpgrade("speed",3)){
                Movement++
            }
        case 10:
            if (EnsureUpgrade("taka",1)){
                Movement++
            }
        case 11:
            if (EnsurePlacement("slot2",1)){
                Movement++
            }
        case 12:
            if (EnsurePlacement("slot2",2)){
                Movement++
            }
        case 13:
            if (EnsurePlacement("slot2",3)){
                Movement++
            }
        case 14:
            if (EnsurePlacement("slot3",1)){
                Movement++
            }
        case 15:
            if (EnsurePlacement("slot3",2)){
                Movement++
            }
        case 16:
            if (EnsurePlacement("slot3",3)){
                Movement++
            }
        case 14:
            if (EnsurePlacement("slot4",1)){
                Movement++
            }
        case 15:
            if (EnsurePlacement("slot4",2)){
                Movement++
            }
        case 16:
            if (EnsurePlacement("slot4",3)){
                Movement++
            }
        case 17:
            if (EnsureUpgrade("slot1",1)){
                Movement++
            }
        case 18:
            if (EnsureUpgrade("slot2",1)){
                Movement++
            }
        case 19:
            if (EnsureUpgrade("slot3",1)){
                Movement++
            }
        case 20:
            if (EnsureUpgrade("slot4",1)){
                Movement++
            }
        case 21:
            if (EnsureUpgrade("slot1",2)){
                Movement++
            }
        case 22:
            if (EnsureUpgrade("slot2",2)){
                Movement++
            }
        case 23:
            if (EnsureUpgrade("slot3",2)){
                Movement++
            }
        case 24:
            if (EnsureUpgrade("slot4",2)){
                Movement++
            }
        case 25:
            if (EnsureUpgrade("slot1",3)){
                Movement++
            }
        case 26:
            if (EnsureUpgrade("slot2",3)){
                Movement++
            }
        case 27:
            if (EnsureUpgrade("slot3",3)){
                Movement++
            }
        case 28:
            if (EnsureUpgrade("slot4",3)){
                Movement++
            }
        default:
            Movement++
            nullClick()
            Sleep 500
    }
}