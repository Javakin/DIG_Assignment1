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
        <signal name="XLXN_5(3:0)" />
        <signal name="XLXN_6(7:0)" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <port polarity="Output" name="XLXN_5(3:0)" />
        <port polarity="Output" name="XLXN_6(7:0)" />
        <port polarity="Input" name="XLXN_7" />
        <port polarity="Input" name="XLXN_8" />
        <port polarity="Input" name="XLXN_9" />
        <blockdef name="Cnt9999">
            <timestamp>2016-5-1T8:5:44</timestamp>
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
            <timestamp>2016-5-1T8:11:16</timestamp>
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
            <timestamp>2016-5-1T8:11:0</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Time_Lap_Lach">
            <timestamp>2016-5-1T8:11:27</timestamp>
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
            <timestamp>2016-5-1T8:11:34</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="rand_gen">
            <timestamp>2016-5-1T8:11:41</timestamp>
            <rect width="320" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
        </blockdef>
        <blockdef name="reaction_game">
            <timestamp>2016-5-1T8:12:0</timestamp>
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
        <block symbolname="Cnt9999" name="XLXI_1">
            <blockpin name="EN" />
            <blockpin name="CLK" />
            <blockpin name="CLR" />
            <blockpin name="BCD1_1000(3:0)" />
            <blockpin name="BCD1_100(3:0)" />
            <blockpin name="BCD1_10(3:0)" />
            <blockpin name="BCD1_1(3:0)" />
        </block>
        <block symbolname="MuxDisplay" name="XLXI_2">
            <blockpin name="CLK_1K" />
            <blockpin name="DOTS(3:0)" />
            <blockpin signalname="XLXN_5(3:0)" name="AN(3:0)" />
            <blockpin signalname="XLXN_6(7:0)" name="SEG(7:0)" />
            <blockpin signalname="XLXN_1(3:0)" name="BCD1(3:0)" />
            <blockpin signalname="XLXN_2(3:0)" name="BCD2(3:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="BCD3(3:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="BCD4(3:0)" />
        </block>
        <block symbolname="StepDown1KHz" name="XLXI_3">
            <blockpin name="CLK_50MHz" />
            <blockpin name="CLK_1KHz" />
        </block>
        <block symbolname="Time_Lap_Lach" name="XLXI_4">
            <blockpin name="LAP" />
            <blockpin name="CLEAR" />
            <blockpin name="HIGH_SCORE" />
            <blockpin name="IN_BCD1(3:0)" />
            <blockpin name="IN_BCD2(3:0)" />
            <blockpin name="IN_BCD3(3:0)" />
            <blockpin name="IN_BCD4(3:0)" />
            <blockpin signalname="XLXN_1(3:0)" name="OUT_BCD1(3:0)" />
            <blockpin signalname="XLXN_2(3:0)" name="OUT_BCD2(3:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="OUT_BCD3(3:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="OUT_BCD4(3:0)" />
        </block>
        <block symbolname="ToggleButton" name="XLXI_5">
            <blockpin name="CLK" />
            <blockpin signalname="XLXN_9" name="BUTTON" />
            <blockpin name="TOGGLE" />
            <blockpin name="DEBOUNCE" />
            <blockpin name="PULSE" />
        </block>
        <block symbolname="ToggleButton" name="XLXI_6">
            <blockpin name="CLK" />
            <blockpin signalname="XLXN_8" name="BUTTON" />
            <blockpin name="TOGGLE" />
            <blockpin name="DEBOUNCE" />
            <blockpin name="PULSE" />
        </block>
        <block symbolname="ToggleButton" name="XLXI_7">
            <blockpin name="CLK" />
            <blockpin signalname="XLXN_7" name="BUTTON" />
            <blockpin name="TOGGLE" />
            <blockpin name="DEBOUNCE" />
            <blockpin name="PULSE" />
        </block>
        <block symbolname="rand_gen" name="XLXI_8">
            <blockpin name="ST_TOG" />
            <blockpin name="CLK" />
            <blockpin name="RAND_NUMB(15:0)" />
        </block>
        <block symbolname="reaction_game" name="XLXI_9">
            <blockpin name="START_DEBOUNCE" />
            <blockpin name="START_TOGGLE" />
            <blockpin name="CLEAR" />
            <blockpin name="CLK" />
            <blockpin name="TIN1(3:0)" />
            <blockpin name="TIN2(3:0)" />
            <blockpin name="TIN3(3:0)" />
            <blockpin name="TIN4(3:0)" />
            <blockpin name="RAND(15:0)" />
            <blockpin name="CLEAR_TIME" />
            <blockpin name="LED" />
            <blockpin name="LAP" />
            <blockpin name="TOUT1(3:0)" />
            <blockpin name="TOUT2(3:0)" />
            <blockpin name="TOUT3(3:0)" />
            <blockpin name="TOUT4(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="928" y="1168" name="XLXI_1" orien="R0">
        </instance>
        <instance x="432" y="368" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2160" y="1056" name="XLXI_4" orien="R0">
        </instance>
        <instance x="192" y="944" name="XLXI_5" orien="R0">
        </instance>
        <instance x="176" y="1264" name="XLXI_6" orien="R0">
        </instance>
        <instance x="160" y="1616" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1200" y="496" name="XLXI_8" orien="R0">
        </instance>
        <instance x="1472" y="1424" name="XLXI_9" orien="R0">
        </instance>
        <instance x="2848" y="1056" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(3:0)">
            <wire x2="2848" y1="1088" y2="1088" x1="2672" />
        </branch>
        <branch name="XLXN_2(3:0)">
            <wire x2="2848" y1="1152" y2="1152" x1="2672" />
        </branch>
        <branch name="XLXN_3(3:0)">
            <wire x2="2848" y1="1216" y2="1216" x1="2672" />
        </branch>
        <branch name="XLXN_4(3:0)">
            <wire x2="2848" y1="1280" y2="1280" x1="2672" />
        </branch>
        <branch name="XLXN_5(3:0)">
            <wire x2="3344" y1="832" y2="832" x1="3232" />
        </branch>
        <branch name="XLXN_6(7:0)">
            <wire x2="3360" y1="1024" y2="1024" x1="3232" />
        </branch>
        <iomarker fontsize="28" x="3344" y="832" name="XLXN_5(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3360" y="1024" name="XLXN_6(7:0)" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="160" y1="1584" y2="1584" x1="128" />
        </branch>
        <iomarker fontsize="28" x="128" y="1584" name="XLXN_7" orien="R180" />
        <branch name="XLXN_8">
            <wire x2="176" y1="1232" y2="1232" x1="144" />
        </branch>
        <iomarker fontsize="28" x="144" y="1232" name="XLXN_8" orien="R180" />
        <branch name="XLXN_9">
            <wire x2="192" y1="912" y2="912" x1="160" />
        </branch>
        <iomarker fontsize="28" x="160" y="912" name="XLXN_9" orien="R180" />
    </sheet>
</drawing>