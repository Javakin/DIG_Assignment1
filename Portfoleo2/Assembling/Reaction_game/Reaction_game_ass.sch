<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(3:0)" />
        <signal name="XLXN_2(3:0)" />
        <signal name="XLXN_3(3:0)" />
        <signal name="XLXN_4(3:0)" />
        <signal name="AN(3:0)" />
        <signal name="SEG(7:0)" />
        <signal name="HISCORE" />
        <signal name="CLEAR" />
        <signal name="START" />
        <signal name="XLXN_10(15:0)" />
        <signal name="XLXN_11(3:0)" />
        <signal name="XLXN_12(3:0)" />
        <signal name="XLXN_13(3:0)" />
        <signal name="XLXN_14(3:0)" />
        <signal name="XLXN_19(3:0)" />
        <signal name="XLXN_20(3:0)" />
        <signal name="XLXN_26(3:0)" />
        <signal name="XLXN_33(3:0)" />
        <signal name="XLXN_50" />
        <signal name="LED" />
        <signal name="CLK_50MHz" />
        <signal name="CLK_1KHz" />
        <signal name="XLXN_61" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="SEG(7:0)" />
        <port polarity="Input" name="HISCORE" />
        <port polarity="Input" name="CLEAR" />
        <port polarity="Input" name="START" />
        <port polarity="Output" name="LED" />
        <port polarity="Input" name="CLK_50MHz" />
        <blockdef name="Cnt9999">
            <timestamp>2016-5-1T11:35:56</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MuxDisplay">
            <timestamp>2016-5-1T11:36:5</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="512" />
        </blockdef>
        <blockdef name="StepDown1KHz">
            <timestamp>2016-5-1T11:36:13</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Time_Lap_Lach">
            <timestamp>2016-5-1T11:36:23</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <rect width="64" x="0" y="276" height="24" />
            <line x2="0" y1="288" y2="288" x1="64" />
            <rect width="64" x="0" y="340" height="24" />
            <line x2="0" y1="352" y2="352" x1="64" />
            <rect width="64" x="448" y="20" height="24" />
            <line x2="512" y1="32" y2="32" x1="448" />
            <rect width="64" x="448" y="84" height="24" />
            <line x2="512" y1="96" y2="96" x1="448" />
            <rect width="64" x="448" y="148" height="24" />
            <line x2="512" y1="160" y2="160" x1="448" />
            <rect width="64" x="448" y="212" height="24" />
            <line x2="512" y1="224" y2="224" x1="448" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="384" x="64" y="-256" height="640" />
        </blockdef>
        <blockdef name="ToggleButton">
            <timestamp>2016-5-1T11:36:35</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="rand_gen">
            <timestamp>2016-5-1T11:35:47</timestamp>
            <rect width="320" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
        </blockdef>
        <blockdef name="reaction_game">
            <timestamp>2016-5-1T11:37:0</timestamp>
            <rect width="368" x="64" y="-576" height="576" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="496" y1="-544" y2="-544" x1="432" />
            <line x2="496" y1="-464" y2="-464" x1="432" />
            <line x2="496" y1="-384" y2="-384" x1="432" />
            <rect width="64" x="432" y="-316" height="24" />
            <line x2="496" y1="-304" y2="-304" x1="432" />
            <rect width="64" x="432" y="-236" height="24" />
            <line x2="496" y1="-224" y2="-224" x1="432" />
            <rect width="64" x="432" y="-156" height="24" />
            <line x2="496" y1="-144" y2="-144" x1="432" />
            <rect width="64" x="432" y="-76" height="24" />
            <line x2="496" y1="-64" y2="-64" x1="432" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="Cnt9999" name="cnt_inst">
            <blockpin signalname="XLXN_67" name="EN" />
            <blockpin signalname="CLK_1KHz" name="CLK" />
            <blockpin signalname="XLXN_65" name="CLR" />
            <blockpin signalname="XLXN_11(3:0)" name="BCD1_1000(3:0)" />
            <blockpin signalname="XLXN_12(3:0)" name="BCD1_100(3:0)" />
            <blockpin signalname="XLXN_13(3:0)" name="BCD1_10(3:0)" />
            <blockpin signalname="XLXN_14(3:0)" name="BCD1_1(3:0)" />
        </block>
        <block symbolname="MuxDisplay" name="mux_display">
            <blockpin signalname="CLK_1KHz" name="CLK_1K" />
            <blockpin name="DOTS(3:0)" />
            <blockpin signalname="XLXN_1(3:0)" name="BCD1(3:0)" />
            <blockpin signalname="XLXN_2(3:0)" name="BCD2(3:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="BCD3(3:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="BCD4(3:0)" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="SEG(7:0)" name="SEG(7:0)" />
        </block>
        <block symbolname="Time_Lap_Lach" name="time_lap_latch">
            <blockpin signalname="XLXN_50" name="LAP" />
            <blockpin signalname="XLXN_64" name="CLEAR" />
            <blockpin signalname="XLXN_66" name="HIGH_SCORE" />
            <blockpin signalname="XLXN_33(3:0)" name="IN_BCD1(3:0)" />
            <blockpin signalname="XLXN_26(3:0)" name="IN_BCD2(3:0)" />
            <blockpin signalname="XLXN_20(3:0)" name="IN_BCD3(3:0)" />
            <blockpin signalname="XLXN_19(3:0)" name="IN_BCD4(3:0)" />
            <blockpin signalname="XLXN_1(3:0)" name="OUT_BCD1(3:0)" />
            <blockpin signalname="XLXN_2(3:0)" name="OUT_BCD2(3:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="OUT_BCD3(3:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="OUT_BCD4(3:0)" />
        </block>
        <block symbolname="ToggleButton" name="Start_but">
            <blockpin signalname="CLK_1KHz" name="CLK" />
            <blockpin signalname="START" name="BUTTON" />
            <blockpin signalname="XLXN_61" name="TOGGLE" />
            <blockpin signalname="XLXN_63" name="DEBOUNCE" />
            <blockpin name="PULSE" />
        </block>
        <block symbolname="ToggleButton" name="Clear_but">
            <blockpin signalname="CLK_1KHz" name="CLK" />
            <blockpin signalname="CLEAR" name="BUTTON" />
            <blockpin name="TOGGLE" />
            <blockpin signalname="XLXN_64" name="DEBOUNCE" />
            <blockpin name="PULSE" />
        </block>
        <block symbolname="ToggleButton" name="Hi_but">
            <blockpin signalname="CLK_1KHz" name="CLK" />
            <blockpin signalname="HISCORE" name="BUTTON" />
            <blockpin name="TOGGLE" />
            <blockpin signalname="XLXN_66" name="DEBOUNCE" />
            <blockpin name="PULSE" />
        </block>
        <block symbolname="rand_gen" name="rand_gen_inst">
            <blockpin signalname="XLXN_61" name="ST_TOG" />
            <blockpin signalname="CLK_1KHz" name="CLK" />
            <blockpin signalname="XLXN_10(15:0)" name="RAND_NUMB(15:0)" />
        </block>
        <block symbolname="reaction_game" name="reaction_game_inst">
            <blockpin signalname="XLXN_63" name="START_DEBOUNCE" />
            <blockpin signalname="XLXN_61" name="START_TOGGLE" />
            <blockpin signalname="XLXN_64" name="CLEAR" />
            <blockpin signalname="CLK_1KHz" name="CLK" />
            <blockpin signalname="XLXN_11(3:0)" name="TIN1(3:0)" />
            <blockpin signalname="XLXN_12(3:0)" name="TIN2(3:0)" />
            <blockpin signalname="XLXN_13(3:0)" name="TIN3(3:0)" />
            <blockpin signalname="XLXN_14(3:0)" name="TIN4(3:0)" />
            <blockpin signalname="XLXN_10(15:0)" name="RAND(15:0)" />
            <blockpin signalname="XLXN_65" name="CLEAR_TIME" />
            <blockpin signalname="LED" name="LED" />
            <blockpin signalname="XLXN_50" name="LAP" />
            <blockpin signalname="XLXN_33(3:0)" name="TOUT1(3:0)" />
            <blockpin signalname="XLXN_26(3:0)" name="TOUT2(3:0)" />
            <blockpin signalname="XLXN_20(3:0)" name="TOUT3(3:0)" />
            <blockpin signalname="XLXN_19(3:0)" name="TOUT4(3:0)" />
        </block>
        <block symbolname="StepDown1KHz" name="XLXI_3">
            <blockpin signalname="CLK_50MHz" name="CLK_50MHz" />
            <blockpin signalname="CLK_1KHz" name="CLK_1KHz" />
        </block>
        <block symbolname="vcc" name="XLXI_11">
            <blockpin signalname="XLXN_67" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="192" y="944" name="Start_but" orien="R0">
        </instance>
        <instance x="1472" y="1424" name="reaction_game_inst" orien="R0">
        </instance>
        <instance x="2848" y="1056" name="mux_display" orien="R0">
        </instance>
        <branch name="XLXN_1(3:0)">
            <wire x2="2848" y1="1088" y2="1088" x1="2656" />
        </branch>
        <branch name="XLXN_2(3:0)">
            <wire x2="2848" y1="1152" y2="1152" x1="2656" />
        </branch>
        <branch name="XLXN_3(3:0)">
            <wire x2="2848" y1="1216" y2="1216" x1="2656" />
        </branch>
        <branch name="XLXN_4(3:0)">
            <wire x2="2848" y1="1280" y2="1280" x1="2656" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="3344" y1="832" y2="832" x1="3232" />
        </branch>
        <branch name="SEG(7:0)">
            <wire x2="3360" y1="1024" y2="1024" x1="3232" />
        </branch>
        <iomarker fontsize="28" x="3344" y="832" name="AN(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3360" y="1024" name="SEG(7:0)" orien="R0" />
        <branch name="HISCORE">
            <wire x2="176" y1="1584" y2="1584" x1="128" />
        </branch>
        <iomarker fontsize="28" x="128" y="1584" name="HISCORE" orien="R180" />
        <branch name="CLEAR">
            <wire x2="192" y1="1232" y2="1232" x1="144" />
        </branch>
        <iomarker fontsize="28" x="144" y="1232" name="CLEAR" orien="R180" />
        <branch name="START">
            <wire x2="192" y1="912" y2="912" x1="160" />
        </branch>
        <iomarker fontsize="28" x="160" y="912" name="START" orien="R180" />
        <branch name="XLXN_10(15:0)">
            <wire x2="1472" y1="1392" y2="1392" x1="1264" />
        </branch>
        <branch name="XLXN_11(3:0)">
            <wire x2="1360" y1="1056" y2="1056" x1="1216" />
            <wire x2="1360" y1="1056" y2="1136" x1="1360" />
            <wire x2="1472" y1="1136" y2="1136" x1="1360" />
        </branch>
        <branch name="XLXN_12(3:0)">
            <wire x2="1328" y1="1120" y2="1120" x1="1216" />
            <wire x2="1328" y1="1120" y2="1200" x1="1328" />
            <wire x2="1472" y1="1200" y2="1200" x1="1328" />
        </branch>
        <branch name="XLXN_13(3:0)">
            <wire x2="1312" y1="1184" y2="1184" x1="1216" />
            <wire x2="1312" y1="1184" y2="1264" x1="1312" />
            <wire x2="1472" y1="1264" y2="1264" x1="1312" />
        </branch>
        <branch name="XLXN_14(3:0)">
            <wire x2="1296" y1="1248" y2="1248" x1="1216" />
            <wire x2="1296" y1="1248" y2="1328" x1="1296" />
            <wire x2="1472" y1="1328" y2="1328" x1="1296" />
        </branch>
        <instance x="832" y="1280" name="cnt_inst" orien="R0">
        </instance>
        <branch name="XLXN_19(3:0)">
            <wire x2="1984" y1="1360" y2="1360" x1="1968" />
            <wire x2="1984" y1="1360" y2="1408" x1="1984" />
            <wire x2="2144" y1="1408" y2="1408" x1="1984" />
        </branch>
        <branch name="XLXN_20(3:0)">
            <wire x2="2000" y1="1280" y2="1280" x1="1968" />
            <wire x2="2000" y1="1280" y2="1344" x1="2000" />
            <wire x2="2144" y1="1344" y2="1344" x1="2000" />
        </branch>
        <branch name="XLXN_26(3:0)">
            <wire x2="2032" y1="1200" y2="1200" x1="1968" />
            <wire x2="2032" y1="1200" y2="1280" x1="2032" />
            <wire x2="2144" y1="1280" y2="1280" x1="2032" />
        </branch>
        <branch name="XLXN_33(3:0)">
            <wire x2="2064" y1="1120" y2="1120" x1="1968" />
            <wire x2="2064" y1="1120" y2="1216" x1="2064" />
            <wire x2="2144" y1="1216" y2="1216" x1="2064" />
        </branch>
        <instance x="2144" y="1056" name="time_lap_latch" orien="R0">
        </instance>
        <branch name="XLXN_50">
            <wire x2="2048" y1="1040" y2="1040" x1="1968" />
            <wire x2="2048" y1="832" y2="1040" x1="2048" />
            <wire x2="2144" y1="832" y2="832" x1="2048" />
        </branch>
        <branch name="LED">
            <wire x2="2032" y1="960" y2="960" x1="1968" />
            <wire x2="2032" y1="672" y2="960" x1="2032" />
            <wire x2="2160" y1="672" y2="672" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="2160" y="672" name="LED" orien="R0" />
        <instance x="816" y="1488" name="rand_gen_inst" orien="R0">
        </instance>
        <branch name="CLK_50MHz">
            <wire x2="432" y1="336" y2="336" x1="400" />
        </branch>
        <iomarker fontsize="28" x="400" y="336" name="CLK_50MHz" orien="R180" />
        <branch name="CLK_1KHz">
            <wire x2="160" y1="560" y2="784" x1="160" />
            <wire x2="192" y1="784" y2="784" x1="160" />
            <wire x2="160" y1="784" y2="1104" x1="160" />
            <wire x2="192" y1="1104" y2="1104" x1="160" />
            <wire x2="160" y1="1104" y2="1456" x1="160" />
            <wire x2="176" y1="1456" y2="1456" x1="160" />
            <wire x2="720" y1="560" y2="560" x1="160" />
            <wire x2="848" y1="560" y2="560" x1="720" />
            <wire x2="1232" y1="560" y2="560" x1="848" />
            <wire x2="2720" y1="560" y2="560" x1="1232" />
            <wire x2="2720" y1="560" y2="832" x1="2720" />
            <wire x2="2848" y1="832" y2="832" x1="2720" />
            <wire x2="1232" y1="560" y2="1072" x1="1232" />
            <wire x2="1472" y1="1072" y2="1072" x1="1232" />
            <wire x2="720" y1="560" y2="1152" x1="720" />
            <wire x2="832" y1="1152" y2="1152" x1="720" />
            <wire x2="720" y1="1152" y2="1456" x1="720" />
            <wire x2="816" y1="1456" y2="1456" x1="720" />
            <wire x2="848" y1="336" y2="336" x1="816" />
            <wire x2="848" y1="336" y2="560" x1="848" />
        </branch>
        <instance x="176" y="1616" name="Hi_but" orien="R0">
        </instance>
        <instance x="192" y="1264" name="Clear_but" orien="R0">
        </instance>
        <branch name="XLXN_61">
            <wire x2="688" y1="784" y2="784" x1="576" />
            <wire x2="688" y1="784" y2="1392" x1="688" />
            <wire x2="816" y1="1392" y2="1392" x1="688" />
            <wire x2="1072" y1="784" y2="784" x1="688" />
            <wire x2="1072" y1="784" y2="944" x1="1072" />
            <wire x2="1472" y1="944" y2="944" x1="1072" />
        </branch>
        <instance x="432" y="368" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_63">
            <wire x2="1456" y1="848" y2="848" x1="576" />
            <wire x2="1456" y1="848" y2="880" x1="1456" />
            <wire x2="1472" y1="880" y2="880" x1="1456" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="656" y1="1168" y2="1168" x1="576" />
            <wire x2="656" y1="1168" y2="1536" x1="656" />
            <wire x2="2080" y1="1536" y2="1536" x1="656" />
            <wire x2="656" y1="1008" y2="1168" x1="656" />
            <wire x2="1472" y1="1008" y2="1008" x1="656" />
            <wire x2="2080" y1="1088" y2="1536" x1="2080" />
            <wire x2="2144" y1="1088" y2="1088" x1="2080" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="832" y1="1248" y2="1248" x1="736" />
            <wire x2="736" y1="1248" y2="1552" x1="736" />
            <wire x2="2016" y1="1552" y2="1552" x1="736" />
            <wire x2="2016" y1="880" y2="880" x1="1968" />
            <wire x2="2016" y1="880" y2="1552" x1="2016" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="2096" y1="1520" y2="1520" x1="560" />
            <wire x2="2096" y1="1152" y2="1520" x1="2096" />
            <wire x2="2144" y1="1152" y2="1152" x1="2096" />
        </branch>
        <instance x="736" y="992" name="XLXI_11" orien="R0" />
        <branch name="XLXN_67">
            <wire x2="800" y1="992" y2="1056" x1="800" />
            <wire x2="832" y1="1056" y2="1056" x1="800" />
        </branch>
    </sheet>
</drawing>