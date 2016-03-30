<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="STARTSOP" />
        <signal name="LAP" />
        <signal name="CLEAR" />
        <signal name="XLXN_8(7:0)" />
        <signal name="XLXN_9(3:0)" />
        <signal name="XLXN_10(7:0)" />
        <signal name="CLK" />
        <signal name="XLXN_17" />
        <signal name="XLXN_19" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_31" />
        <signal name="XLXN_38" />
        <signal name="XLXN_41" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56(3:0)" />
        <signal name="XLXN_57(3:0)" />
        <signal name="XLXN_58(7:0)" />
        <signal name="XLXN_59(7:0)" />
        <signal name="XLXN_60(3:0)" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_72(3:0)" />
        <signal name="XLXN_73(7:0)" />
        <signal name="XLXN_74(7:0)" />
        <port polarity="Input" name="STARTSOP" />
        <port polarity="Input" name="LAP" />
        <port polarity="Input" name="CLEAR" />
        <port polarity="Output" name="XLXN_8(7:0)" />
        <port polarity="Output" name="XLXN_9(3:0)" />
        <port polarity="Output" name="XLXN_10(7:0)" />
        <port polarity="Input" name="CLK" />
        <blockdef name="ToggleButton">
            <timestamp>2016-3-30T13:34:32</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Cnt999">
            <timestamp>2016-3-30T13:33:52</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Cnt59">
            <timestamp>2016-3-30T13:33:33</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Time_Lap_Lach">
            <timestamp>2016-3-30T13:34:27</timestamp>
            <rect width="384" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="448" y="-236" height="24" />
            <line x2="512" y1="-224" y2="-224" x1="448" />
            <rect width="64" x="448" y="-140" height="24" />
            <line x2="512" y1="-128" y2="-128" x1="448" />
            <rect width="64" x="448" y="-44" height="24" />
            <line x2="512" y1="-32" y2="-32" x1="448" />
        </blockdef>
        <blockdef name="MuxDisplay">
            <timestamp>2016-3-30T13:34:0</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="TeenthSec">
            <timestamp>2016-3-30T13:34:18</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="BlinkingDots">
            <timestamp>2016-3-30T13:33:6</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="StepDown1KHz">
            <timestamp>2016-3-30T13:40:2</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <block symbolname="ToggleButton" name="XLXI_1">
            <blockpin signalname="XLXN_54" name="CLK" />
            <blockpin signalname="STARTSOP" name="BUTTON" />
            <blockpin signalname="XLXN_31" name="TOGGLE" />
            <blockpin name="DEBOUNCE" />
            <blockpin name="PULSE" />
        </block>
        <block symbolname="ToggleButton" name="XLXI_2">
            <blockpin signalname="XLXN_54" name="CLK" />
            <blockpin signalname="LAP" name="BUTTON" />
            <blockpin signalname="XLXN_55" name="TOGGLE" />
            <blockpin name="DEBOUNCE" />
            <blockpin name="PULSE" />
        </block>
        <block symbolname="ToggleButton" name="XLXI_3">
            <blockpin signalname="XLXN_54" name="CLK" />
            <blockpin signalname="CLEAR" name="BUTTON" />
            <blockpin name="TOGGLE" />
            <blockpin name="DEBOUNCE" />
            <blockpin signalname="XLXN_24" name="PULSE" />
        </block>
        <block symbolname="Cnt999" name="XLXI_4">
            <blockpin signalname="XLXN_31" name="EN" />
            <blockpin signalname="XLXN_54" name="CLK" />
            <blockpin signalname="XLXN_67" name="CLR" />
            <blockpin signalname="XLXN_63" name="CARRY" />
            <blockpin signalname="XLXN_72(3:0)" name="BCD1_10(3:0)" />
        </block>
        <block symbolname="Cnt59" name="XLXI_5">
            <blockpin signalname="XLXN_63" name="EN" />
            <blockpin signalname="XLXN_54" name="CLK" />
            <blockpin signalname="XLXN_67" name="CLR" />
            <blockpin signalname="XLXN_65" name="CARRY" />
            <blockpin signalname="XLXN_73(7:0)" name="BCD59(7:0)" />
        </block>
        <block symbolname="Time_Lap_Lach" name="XLXI_7">
            <blockpin signalname="XLXN_55" name="LAP" />
            <blockpin signalname="XLXN_72(3:0)" name="IN_TEENTH(3:0)" />
            <blockpin signalname="XLXN_73(7:0)" name="IN_SEC(7:0)" />
            <blockpin signalname="XLXN_74(7:0)" name="IN_MIN(7:0)" />
            <blockpin signalname="XLXN_56(3:0)" name="OUT_TEENTH(3:0)" />
            <blockpin signalname="XLXN_58(7:0)" name="OUT_SEC(7:0)" />
            <blockpin signalname="XLXN_59(7:0)" name="OUT_MIN(7:0)" />
        </block>
        <block symbolname="TeenthSec" name="XLXI_10">
            <blockpin signalname="XLXN_56(3:0)" name="BCD(3:0)" />
            <blockpin signalname="XLXN_8(7:0)" name="LED(7:0)" />
        </block>
        <block symbolname="MuxDisplay" name="XLXI_9">
            <blockpin signalname="XLXN_54" name="CLK_1K" />
            <blockpin signalname="XLXN_57(3:0)" name="DOTS(3:0)" />
            <blockpin signalname="XLXN_58(7:0)" name="SEC(7:0)" />
            <blockpin signalname="XLXN_59(7:0)" name="MIN(7:0)" />
            <blockpin signalname="XLXN_9(3:0)" name="AN(3:0)" />
            <blockpin signalname="XLXN_10(7:0)" name="SEG(7:0)" />
        </block>
        <block symbolname="BlinkingDots" name="XLXI_11">
            <blockpin signalname="XLXN_55" name="LAP" />
            <blockpin signalname="XLXN_31" name="START_STOP" />
            <blockpin signalname="XLXN_56(3:0)" name="SEC1_10(3:0)" />
            <blockpin signalname="XLXN_57(3:0)" name="DOTS(3:0)" />
        </block>
        <block symbolname="StepDown1KHz" name="XLXI_12">
            <blockpin signalname="CLK" name="CLK_50MHz" />
            <blockpin signalname="XLXN_54" name="CLK_1KHz" />
        </block>
        <block symbolname="and2b1" name="XLXI_29">
            <blockpin signalname="XLXN_31" name="I0" />
            <blockpin signalname="XLXN_24" name="I1" />
            <blockpin signalname="XLXN_67" name="O" />
        </block>
        <block symbolname="Cnt59" name="XLXI_6">
            <blockpin signalname="XLXN_65" name="EN" />
            <blockpin signalname="XLXN_54" name="CLK" />
            <blockpin signalname="XLXN_67" name="CLR" />
            <blockpin name="CARRY" />
            <blockpin signalname="XLXN_74(7:0)" name="BCD59(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="384" y="1200" name="XLXI_1" orien="R0">
        </instance>
        <instance x="384" y="1600" name="XLXI_2" orien="R0">
        </instance>
        <instance x="384" y="1936" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1824" y="1536" name="XLXI_7" orien="R0">
        </instance>
        <instance x="2752" y="1296" name="XLXI_10" orien="R0">
        </instance>
        <instance x="2752" y="1648" name="XLXI_9" orien="R0">
        </instance>
        <branch name="STARTSOP">
            <wire x2="384" y1="1168" y2="1168" x1="352" />
        </branch>
        <iomarker fontsize="28" x="352" y="1168" name="STARTSOP" orien="R180" />
        <branch name="LAP">
            <wire x2="384" y1="1568" y2="1568" x1="352" />
        </branch>
        <iomarker fontsize="28" x="352" y="1568" name="LAP" orien="R180" />
        <branch name="CLEAR">
            <wire x2="384" y1="1904" y2="1904" x1="352" />
        </branch>
        <iomarker fontsize="28" x="352" y="1904" name="CLEAR" orien="R180" />
        <branch name="XLXN_8(7:0)">
            <wire x2="3168" y1="1264" y2="1264" x1="3136" />
        </branch>
        <iomarker fontsize="28" x="3168" y="1264" name="XLXN_8(7:0)" orien="R0" />
        <branch name="XLXN_9(3:0)">
            <wire x2="3168" y1="1424" y2="1424" x1="3136" />
        </branch>
        <iomarker fontsize="28" x="3168" y="1424" name="XLXN_9(3:0)" orien="R0" />
        <branch name="XLXN_10(7:0)">
            <wire x2="3168" y1="1616" y2="1616" x1="3136" />
        </branch>
        <iomarker fontsize="28" x="3168" y="1616" name="XLXN_10(7:0)" orien="R0" />
        <iomarker fontsize="28" x="352" y="2304" name="CLK" orien="R180" />
        <instance x="1136" y="1248" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1136" y="1936" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1136" y="1600" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_54">
            <wire x2="144" y1="1040" y2="1440" x1="144" />
            <wire x2="144" y1="1440" y2="1776" x1="144" />
            <wire x2="384" y1="1776" y2="1776" x1="144" />
            <wire x2="144" y1="1776" y2="2192" x1="144" />
            <wire x2="1008" y1="2192" y2="2192" x1="144" />
            <wire x2="2720" y1="2192" y2="2192" x1="1008" />
            <wire x2="1008" y1="2192" y2="2304" x1="1008" />
            <wire x2="384" y1="1440" y2="1440" x1="144" />
            <wire x2="384" y1="1040" y2="1040" x1="144" />
            <wire x2="1008" y1="2304" y2="2304" x1="768" />
            <wire x2="1136" y1="1152" y2="1152" x1="1008" />
            <wire x2="1008" y1="1152" y2="1504" x1="1008" />
            <wire x2="1136" y1="1504" y2="1504" x1="1008" />
            <wire x2="1008" y1="1504" y2="1840" x1="1008" />
            <wire x2="1136" y1="1840" y2="1840" x1="1008" />
            <wire x2="1008" y1="1840" y2="2192" x1="1008" />
            <wire x2="2720" y1="1424" y2="2192" x1="2720" />
            <wire x2="2752" y1="1424" y2="1424" x1="2720" />
        </branch>
        <instance x="2160" y="1936" name="XLXI_11" orien="R0">
        </instance>
        <branch name="XLXN_55">
            <wire x2="816" y1="1440" y2="1440" x1="768" />
            <wire x2="816" y1="1312" y2="1440" x1="816" />
            <wire x2="1712" y1="1312" y2="1312" x1="816" />
            <wire x2="1824" y1="1312" y2="1312" x1="1712" />
            <wire x2="1712" y1="1312" y2="1776" x1="1712" />
            <wire x2="2160" y1="1776" y2="1776" x1="1712" />
        </branch>
        <branch name="XLXN_56(3:0)">
            <wire x2="2160" y1="1904" y2="1904" x1="2096" />
            <wire x2="2096" y1="1904" y2="2000" x1="2096" />
            <wire x2="2608" y1="2000" y2="2000" x1="2096" />
            <wire x2="2608" y1="1312" y2="1312" x1="2336" />
            <wire x2="2608" y1="1312" y2="2000" x1="2608" />
            <wire x2="2752" y1="1264" y2="1264" x1="2608" />
            <wire x2="2608" y1="1264" y2="1312" x1="2608" />
        </branch>
        <branch name="XLXN_57(3:0)">
            <wire x2="2640" y1="1776" y2="1776" x1="2544" />
            <wire x2="2640" y1="1488" y2="1776" x1="2640" />
            <wire x2="2752" y1="1488" y2="1488" x1="2640" />
        </branch>
        <branch name="XLXN_58(7:0)">
            <wire x2="2544" y1="1408" y2="1408" x1="2336" />
            <wire x2="2544" y1="1408" y2="1552" x1="2544" />
            <wire x2="2752" y1="1552" y2="1552" x1="2544" />
        </branch>
        <branch name="XLXN_59(7:0)">
            <wire x2="2528" y1="1504" y2="1504" x1="2336" />
            <wire x2="2528" y1="1504" y2="1616" x1="2528" />
            <wire x2="2752" y1="1616" y2="1616" x1="2528" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="1120" y1="1344" y2="1440" x1="1120" />
            <wire x2="1136" y1="1440" y2="1440" x1="1120" />
            <wire x2="1552" y1="1344" y2="1344" x1="1120" />
            <wire x2="1552" y1="1088" y2="1088" x1="1520" />
            <wire x2="1552" y1="1088" y2="1344" x1="1552" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="1552" y1="1664" y2="1664" x1="1120" />
            <wire x2="1120" y1="1664" y2="1776" x1="1120" />
            <wire x2="1136" y1="1776" y2="1776" x1="1120" />
            <wire x2="1552" y1="1440" y2="1440" x1="1520" />
            <wire x2="1552" y1="1440" y2="1664" x1="1552" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="912" y1="2064" y2="2064" x1="736" />
            <wire x2="1136" y1="1216" y2="1216" x1="912" />
            <wire x2="912" y1="1216" y2="1568" x1="912" />
            <wire x2="1136" y1="1568" y2="1568" x1="912" />
            <wire x2="912" y1="1568" y2="1904" x1="912" />
            <wire x2="1136" y1="1904" y2="1904" x1="912" />
            <wire x2="912" y1="1904" y2="2064" x1="912" />
        </branch>
        <branch name="CLK">
            <wire x2="384" y1="2304" y2="2304" x1="352" />
        </branch>
        <instance x="384" y="2336" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_31">
            <wire x2="432" y1="2096" y2="2144" x1="432" />
            <wire x2="832" y1="2144" y2="2144" x1="432" />
            <wire x2="480" y1="2096" y2="2096" x1="432" />
            <wire x2="832" y1="1040" y2="1040" x1="768" />
            <wire x2="960" y1="1040" y2="1040" x1="832" />
            <wire x2="960" y1="1040" y2="1088" x1="960" />
            <wire x2="1072" y1="1088" y2="1088" x1="960" />
            <wire x2="1136" y1="1088" y2="1088" x1="1072" />
            <wire x2="832" y1="1040" y2="2144" x1="832" />
            <wire x2="1072" y1="992" y2="1088" x1="1072" />
            <wire x2="1584" y1="992" y2="992" x1="1072" />
            <wire x2="1584" y1="992" y2="1840" x1="1584" />
            <wire x2="2160" y1="1840" y2="1840" x1="1584" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="784" y1="1984" y2="1984" x1="416" />
            <wire x2="416" y1="1984" y2="2032" x1="416" />
            <wire x2="480" y1="2032" y2="2032" x1="416" />
            <wire x2="784" y1="1904" y2="1904" x1="768" />
            <wire x2="784" y1="1904" y2="1984" x1="784" />
        </branch>
        <instance x="480" y="2160" name="XLXI_29" orien="R0" />
        <branch name="XLXN_72(3:0)">
            <wire x2="1664" y1="1216" y2="1216" x1="1520" />
            <wire x2="1664" y1="1216" y2="1376" x1="1664" />
            <wire x2="1824" y1="1376" y2="1376" x1="1664" />
        </branch>
        <branch name="XLXN_73(7:0)">
            <wire x2="1664" y1="1568" y2="1568" x1="1520" />
            <wire x2="1664" y1="1440" y2="1568" x1="1664" />
            <wire x2="1824" y1="1440" y2="1440" x1="1664" />
        </branch>
        <branch name="XLXN_74(7:0)">
            <wire x2="1648" y1="1904" y2="1904" x1="1520" />
            <wire x2="1648" y1="1504" y2="1904" x1="1648" />
            <wire x2="1824" y1="1504" y2="1504" x1="1648" />
        </branch>
    </sheet>
</drawing>