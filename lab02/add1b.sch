<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="ci" />
        <signal name="b" />
        <signal name="a" />
        <signal name="r" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="co" />
        <signal name="XLXN_20" />
        <port polarity="Input" name="ci" />
        <port polarity="Input" name="b" />
        <port polarity="Input" name="a" />
        <port polarity="Output" name="r" />
        <port polarity="Output" name="co" />
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <block symbolname="or4" name="XLXI_2">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="XLXN_2" name="I2" />
            <blockpin signalname="XLXN_20" name="I3" />
            <blockpin signalname="r" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_3">
            <blockpin signalname="ci" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin signalname="XLXN_9" name="I2" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_4">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="b" name="I1" />
            <blockpin signalname="XLXN_11" name="I2" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_6">
            <blockpin signalname="ci" name="I0" />
            <blockpin signalname="b" name="I1" />
            <blockpin signalname="a" name="I2" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="a" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="b" name="I" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="a" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="ci" name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="b" name="I" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="b" name="I" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_5">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="a" name="I2" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="ci" name="I0" />
            <blockpin signalname="b" name="I1" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="ci" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_16">
            <blockpin signalname="XLXN_19" name="I0" />
            <blockpin signalname="XLXN_18" name="I1" />
            <blockpin signalname="XLXN_17" name="I2" />
            <blockpin signalname="co" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1728" y="1408" name="XLXI_2" orien="R0" />
        <instance x="1072" y="1360" name="XLXI_4" orien="R0" />
        <instance x="1104" y="2240" name="XLXI_6" orien="R0" />
        <instance x="1104" y="848" name="XLXI_3" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1520" y1="1232" y2="1232" x1="1328" />
            <wire x2="1520" y1="1216" y2="1232" x1="1520" />
            <wire x2="1728" y1="1216" y2="1216" x1="1520" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1536" y1="1712" y2="1712" x1="1344" />
            <wire x2="1536" y1="1280" y2="1712" x1="1536" />
            <wire x2="1728" y1="1280" y2="1280" x1="1536" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1728" y1="2112" y2="2112" x1="1360" />
            <wire x2="1728" y1="1344" y2="2112" x1="1728" />
        </branch>
        <branch name="r">
            <wire x2="2016" y1="1248" y2="1248" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="2016" y="1248" name="r" orien="R0" />
        <instance x="784" y="688" name="XLXI_7" orien="R0" />
        <instance x="784" y="752" name="XLXI_8" orien="R0" />
        <instance x="768" y="1200" name="XLXI_9" orien="R0" />
        <instance x="768" y="1328" name="XLXI_10" orien="R0" />
        <instance x="736" y="1744" name="XLXI_11" orien="R0" />
        <instance x="752" y="1808" name="XLXI_12" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="1104" y1="656" y2="656" x1="1008" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1104" y1="720" y2="720" x1="1008" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1072" y1="1168" y2="1168" x1="992" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1072" y1="1296" y2="1296" x1="992" />
        </branch>
        <instance x="1088" y="1840" name="XLXI_5" orien="R0" />
        <branch name="XLXN_15">
            <wire x2="1088" y1="1712" y2="1712" x1="960" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1088" y1="1776" y2="1776" x1="976" />
        </branch>
        <branch name="a">
            <wire x2="256" y1="112" y2="320" x1="256" />
            <wire x2="1088" y1="320" y2="320" x1="256" />
            <wire x2="256" y1="320" y2="496" x1="256" />
            <wire x2="256" y1="496" y2="656" x1="256" />
            <wire x2="784" y1="656" y2="656" x1="256" />
            <wire x2="256" y1="656" y2="1168" x1="256" />
            <wire x2="768" y1="1168" y2="1168" x1="256" />
            <wire x2="256" y1="1168" y2="1648" x1="256" />
            <wire x2="1088" y1="1648" y2="1648" x1="256" />
            <wire x2="256" y1="1648" y2="2048" x1="256" />
            <wire x2="1104" y1="2048" y2="2048" x1="256" />
            <wire x2="1088" y1="496" y2="496" x1="256" />
        </branch>
        <branch name="b">
            <wire x2="400" y1="112" y2="144" x1="400" />
            <wire x2="1088" y1="144" y2="144" x1="400" />
            <wire x2="400" y1="144" y2="560" x1="400" />
            <wire x2="400" y1="560" y2="720" x1="400" />
            <wire x2="784" y1="720" y2="720" x1="400" />
            <wire x2="400" y1="720" y2="1232" x1="400" />
            <wire x2="1072" y1="1232" y2="1232" x1="400" />
            <wire x2="400" y1="1232" y2="1712" x1="400" />
            <wire x2="736" y1="1712" y2="1712" x1="400" />
            <wire x2="400" y1="1712" y2="1776" x1="400" />
            <wire x2="752" y1="1776" y2="1776" x1="400" />
            <wire x2="400" y1="1776" y2="2112" x1="400" />
            <wire x2="1104" y1="2112" y2="2112" x1="400" />
            <wire x2="1088" y1="560" y2="560" x1="400" />
        </branch>
        <branch name="ci">
            <wire x2="576" y1="112" y2="208" x1="576" />
            <wire x2="1088" y1="208" y2="208" x1="576" />
            <wire x2="576" y1="208" y2="384" x1="576" />
            <wire x2="576" y1="384" y2="784" x1="576" />
            <wire x2="1104" y1="784" y2="784" x1="576" />
            <wire x2="576" y1="784" y2="1296" x1="576" />
            <wire x2="768" y1="1296" y2="1296" x1="576" />
            <wire x2="576" y1="1296" y2="2176" x1="576" />
            <wire x2="1104" y1="2176" y2="2176" x1="576" />
            <wire x2="1088" y1="384" y2="384" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="112" name="ci" orien="R270" />
        <iomarker fontsize="28" x="400" y="112" name="b" orien="R270" />
        <iomarker fontsize="28" x="256" y="112" name="a" orien="R270" />
        <instance x="1088" y="272" name="XLXI_13" orien="R0" />
        <instance x="1088" y="448" name="XLXI_14" orien="R0" />
        <instance x="1088" y="624" name="XLXI_15" orien="R0" />
        <instance x="1728" y="464" name="XLXI_16" orien="R0" />
        <branch name="XLXN_17">
            <wire x2="1728" y1="176" y2="176" x1="1344" />
            <wire x2="1728" y1="176" y2="272" x1="1728" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1536" y1="352" y2="352" x1="1344" />
            <wire x2="1536" y1="336" y2="352" x1="1536" />
            <wire x2="1728" y1="336" y2="336" x1="1536" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1728" y1="528" y2="528" x1="1344" />
            <wire x2="1728" y1="400" y2="528" x1="1728" />
        </branch>
        <branch name="co">
            <wire x2="2016" y1="336" y2="336" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="2016" y="336" name="co" orien="R0" />
        <branch name="XLXN_20">
            <wire x2="1728" y1="720" y2="720" x1="1360" />
            <wire x2="1728" y1="720" y2="1152" x1="1728" />
        </branch>
    </sheet>
</drawing>