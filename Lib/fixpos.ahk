#Requires AutoHotkey v2.0



;image detect

sandvillage := "|<>*116$61.zz0000C000TzU0004000DzU00000007zk00k00003zs00Q00001zs00A00000zs00000000Ts001U0000Dw0M0k00007s0C0000003y07k00000lz03w00000Qz01zU0046TTU0zs00DDDzk0Tz00T0zzk0Dzk0D3yzs07zy07DzTk03zzk3zzzw01zzw3zzzy00zzzjzzzzs0Tzzzzzzzw0Dzzzzzzzy07zzzzzzzz03zzzzzzzzU1zzzzzzzzk0zzzzzzzzs0Tzzzzzzvw0Dzzzzzzxw07zzzzzzyS03zzzzzzzD01zzzzzzzzk0zzzzzzzzs0Tzzzzzzzw0Dzzzzzzzy07zzzzzzzy03zzzzzzzz01zzzzzzzzU1zzzzzzzzk0zzzzzzzzs0Tzzzzzzzw0Dzzzzzzzy07zzzzzzzz03zzzzzzzzU1zzzzzzzzk0zzzzzzzzs0Tzzzzzzzw0Dzzzzzzzy07zzzzzzzz01zzzzzzzzU0zzzzzzzzU0Tzzzzzzzk07zzzzzzzs03zzzzzzzw00zzzzzzzy008Tzzzzzz000DzzzzzzU03rXzzzwDk0Ly1zzzkDs0/z0zzzwzw05zUTzzzzy03zkDzzzzk"
sandvillage2 := "|<>*105$61.00AS3yU000006DXyk000006DFzE0000017szs000000HUzg0000003UTw0000001kDy0000000sDv000000Es7z000000MQ3zU00000AD3yk000002Dlzk0000017tzM0000017yzg000003nzzq000001lzzy000000Fzzz0000008zzzU000000TzzU000000Dvzk0000000xzk00000007zs00000000zw000000003y000000000y00000E1s0D00000A0z07U000070TU1kE0003s3s0M60001g000A0U000s000700000E0007U000083U03k000043w03s000021nU3w000000sTzw000000s7zw000008Q3zw00001YTvzy00000sDzyzUU000A7yyDwU00067yz4zk00033zzW7y0001XzzX07k00Dlzzl00S1UDszzsU03lw7wzzsU00QTVyTzwE0001zDTDy80000DzjVy000001zrkz000000DzsT0000007zoDU000003zsDU000000zs7k000000TwDs000000Dw3s0000003yvw0000003zRy0000003zyz0000001zyz0000000zk"

dd := ""
dd2 := ""

shibuya := "|<>*149$34.zzzzzzzzzzzrzzzzz7zzzzwDzzzzkDzzzz0Dzzzw0Dzzzk0Dzzz00Tzzw00Tzzw00Tzzs00Tzzs01zzzs07zzTs0Tzwzs1zzkzsDzz0zszzz0zzzzz0zzzzz0zzzzz1zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzy"
shibuya2 := "|<>*52$61.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzvzzzzzzzzztzzzzzzzzzszzzzzzzzzsTzzzzzzzzsDzzzzzzzzs7zzzzzzzzs3zzzzzzzzs7zzzzzzzzs7zzzzzzzzs7zzzzzzzzs7zzzzzzzzs7zzzzzzzzk7zzzzzzzzk7zzzzzzzzk7zzzzzzzzk7zzzzzzzzk7zzzzzzzzk7zzzzzzzzk7zzzzzzzzk7zzzzzzzzk7zzzzzzzzkDzzzzzzzzkDzzzzzzzzkDzzzzzzzzkDzzzzzzzzUDzzzzzzzzUDzzzzzzzzUDzzzzzzzzUDzzzzzrzzUDzzzzzxzzUDzzzzzzTzUDzzzzzzrzUDzzzzzzxzUDzzzzzzzzUTzzzzzzzzUTzzzzzzzzUTzzzzzzzzUTzzzzzzzr0Tzzzzzzzx0Tzzzzzzzz0TzzzzzzzzkTzzzzzzzzwTzzzzzzzzzTzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzk"

golden := ""
golden2 := ""

kunishi := "|<>*76$61.00007zv031U0003zw000E0003zy00080001zz000400007zk0k000000zzUE000000Dw0a0000007y000000003z000000000zU0E000000Tk00000000Dw000000007y000000003z000000001zU00000000zs00000000Tw000000007z000000003zU00000000zk00000000Ts00000000Dw000000003y000000001zU00000001zk00000000Tw00000000Dy000030007z00000000DzU00001k0Tzk00zk0A07zs00Tzk3s7zw00Dzzzzzzz007zzzzzzzU03zzzzzzzk01zzzzzzzs00zzzzzzzy00Tzzzzzzz00DzzzzzzzU07zzzzzzzk03zzzzzzzs01zzzzzzzw00zzzzzzzz000000000000000000000000000000003zs0DzsDzk4000000000000000000000000000000000000000000000000000060Tk000000DzzzU0000zzzzzzzzz0Tzzzzzzzzzzzzz0Tzzzw7z00030Tzw3zs061wDzz1zzzz0zzzzUzzzzkTzzzsE"
kunishi2 := "|<>*78$61.y1s0jzy000D0603zy000343U1zz0001UVk0zzU000Epz0zzk0003zzrTzs000lzzzzzs000QzzzyTw000DDzzzDy0007bzzzbz0003zzzy3zU001zzw3Dzk000zzD0CTk000TzU0TDs000Dzk0Dbw0007w08Dny0001y003iT0000S000nT0000z0000DU000Tzzzzzk000Dzzzzzs0007zzzzzw0003zzzzzw0001zDXzzy00000000w700007zz021U0003zzkDkk0000zvk3wE0003zzt1y80001zzxkz00000yTywz10000Tzzzw0U000Dzzzm0E0007zlTk080003zk7s060001yM1kC30000T00071U000Dv03T0k0007zU27UQ0006zs210C0001Tx000700003zUM03U000FwwA01s000MSS000Q000A7C000S00000zk00D00000Ts087k00007w803s000c07Q01w000Q2rz00S000CDTi00DU007Dzr007k003jzzV0Hs001zzzssNw000xztw8Az000TzyTA0TU00DzzDy0Dk007zzbzU7s003zznzk3y001zzvzk0z000zzVzs0TU00E"

buu := ""
buu2 := "buu"
global findrightplace := [
    [sandvillage, sandvillage2],
    [dd,dd2],
    [shibuya,shibuya2],
    [golden,golden2],
    [kunishi,kunishi2],
    [buu, buu2]
]

fixposition(starter) {
    LookDown()
    i := 1
    if (findrightplace[starter][1] == "") {
        while (true) {
            if ((!FindText(&Xe, &Ye, 341, 215, 656, 488, 0, 0, placedUnit))) {
                BetterClick(404, 577) ; Click leave
                antiSoftLock2()
                tpToSpawn()
                placeSpeedo()
                
            } else {
                Loop 3 {
                    antiSoftLock2()
                    tpToSpawn()
                    camerafix()
                }
                if (FindText(&Xe, &Ye, 341, 215, 656, 488, 0, 0, placedUnit)){
                    break
                }
            }
        }
    } else {
        while (autoMacro) {
            if ((!FindText(&Xe, &Ye, 341, 215, 656, 488, 0, 0, placedUnit))) {
                BetterClick(404, 577) ; Click leave
                antiSoftLock2()
                tpToSpawn()
                placeSpeedo()
            } else {
                if (FindText(&X, &Y, 331, 22, 1137, 356, 0.1, 0.1, findrightplace[starter][1]) || FindText(&X, &Y, 336, 18, 1135, 646, 0.1, 0.1, findrightplace[starter][2])) {
                    break
                } else {
                    AddToLog(i ". Finding the right spot")
                    i++
                    antiSoftLock2()
                    tpToSpawn()
                    camerafix()
                }
            }
        }

        BetterClick(403, 59) ; reopen
        return true
    }
    if(findrightplace[starter][2] == "buu"){
        Moving("a", 6.75)
        Moving("w", 0.45)
    }
}

antiSoftLock2() {
    ; found end screen
    if (ok := FindText(&X, &Y, 867, 442, 1034, 500, 0, 0, ReturnLobby)) {
        SendInput("q")
        Sleep 200
        BetterClick(399, 59) ; click close the lb
        Sleep 200
    }

    if (ok := FindText(&X, &Y, 640, 108, 857, 234, 0, 0, start)) {
        SendInput("q")
        Sleep 200
        BetterClick(369, 126) ; Click Start
        Sleep 500
    }
}

tpToSpawn() {
    SendInput("q")
    Sleep 100
    BetterClick(21, 578) ; Click settings
    Sleep 500
    BetterClick(534, 215) ; Click tp to spawn
    Sleep 500
    BetterClick(572, 129) ; Close setting
    Sleep 1000
}


placeSpeedo() {
    global slots
    SendInput("q")
    Sleep 100
    PlaceUnit(611, 119, 6-slots+1)
    Sleep 500
}

camerafix() {
    SendInput("q")
    Sleep 200
    BetterClick(231, 412) ; Click Spectate
    Sleep 300
    BetterClick(328, 513) ; Click top
    Sleep 300
    BetterClick(478, 512) ; Click back
    Sleep 300
    BetterClick(404, 577) ; Click leave
    Sleep 300
}