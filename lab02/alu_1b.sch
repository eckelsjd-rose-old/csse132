<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="a" />
        <signal name="b" />
        <signal name="op(2:0)" />
        <signal name="ci" />
        <signal name="op(2)" />
        <signal name="op(0)" />
        <signal name="op(1)" />
        <signal name="XLXN_23" />
        <signal name="addR" />
        <signal name="slt" />
        <signal name="XLXN_25" />
        <signal name="XLXN_27" />
        <signal name="co" />
        <signal name="r" />
        <port polarity="Input" name="a" />
        <port polarity="Input" name="b" />
        <port polarity="Input" name="op(2:0)" />
        <port polarity="Input" name="ci" />
        <port polarity="Output" name="addR" />
        <port polarity="Input" name="slt" />
        <port polarity="Output" name="co" />
        <port polarity="Output" name="r" />
        <blockdef name="m4_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-320" y2="-320" x1="320" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="176" />
            <line x2="176" y1="-208" y2="-96" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-216" y2="-32" x1="224" />
            <line x2="96" y1="-224" y2="-192" x1="256" />
            <line x2="256" y1="-416" y2="-224" x1="256" />
            <line x2="256" y1="-448" y2="-416" x1="96" />
            <line x2="96" y1="-192" y2="-448" x1="96" />
            <line x2="96" y1="-160" y2="-160" x1="128" />
            <line x2="128" y1="-200" y2="-160" x1="128" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="add1b">
            <timestamp>2018-9-13T2:22:19</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="m4_1e" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="D0" />
            <blockpin signalname="XLXN_2" name="D1" />
            <blockpin signalname="addR" name="D2" />
            <blockpin signalname="slt" name="D3" />
            <blockpin signalname="XLXN_23" name="E" />
            <blockpin signalname="op(0)" name="S0" />
            <blockpin signalname="op(1)" name="S1" />
            <blockpin signalname="r" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_3">
            <blockpin signalname="b" name="D0" />
            <blockpin signalname="XLXN_25" name="D1" />
            <blockpin signalname="op(2)" name="S0" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_6">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_7">
            <blockpin signalname="XLXN_23" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="b" name="I" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="add1b" name="XLXI_10">
            <blockpin signalname="ci" name="ci" />
            <blockpin signalname="XLXN_27" name="b" />
            <blockpin signalname="a" name="a" />
            <blockpin signalname="addR" name="r" />
            <blockpin signalname="co" name="co" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1920" y="1456" name="XLXI_2" orien="R0" />
        <instance x="736" y="1936" name="XLXI_3" orien="R0" />
        <instance x="1184" y="1136" name="XLXI_5" orien="R0" />
        <instance x="1184" y="1344" name="XLXI_6" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1920" y1="1040" y2="1040" x1="1440" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1680" y1="1248" y2="1248" x1="1440" />
            <wire x2="1680" y1="1104" y2="1248" x1="1680" />
            <wire x2="1920" y1="1104" y2="1104" x1="1680" />
        </branch>
        <branch name="a">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="544" type="branch" />
            <wire x2="480" y1="544" y2="544" x1="208" />
        </branch>
        <branch name="b">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="624" type="branch" />
            <wire x2="480" y1="624" y2="624" x1="208" />
        </branch>
        <branch name="op(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="720" type="branch" />
            <wire x2="480" y1="720" y2="720" x1="208" />
        </branch>
        <branch name="ci">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="816" type="branch" />
            <wire x2="480" y1="816" y2="816" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="544" name="a" orien="R180" />
        <iomarker fontsize="28" x="208" y="624" name="b" orien="R180" />
        <iomarker fontsize="28" x="208" y="720" name="op(2:0)" orien="R180" />
        <iomarker fontsize="28" x="208" y="816" name="ci" orien="R180" />
        <branch name="a">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1008" type="branch" />
            <wire x2="1184" y1="1008" y2="1008" x1="1056" />
        </branch>
        <branch name="b">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1072" type="branch" />
            <wire x2="1184" y1="1072" y2="1072" x1="1056" />
        </branch>
        <branch name="a">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1216" type="branch" />
            <wire x2="1184" y1="1216" y2="1216" x1="1056" />
        </branch>
        <branch name="b">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1280" type="branch" />
            <wire x2="1184" y1="1280" y2="1280" x1="1056" />
        </branch>
        <branch name="b">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1776" type="branch" />
            <wire x2="736" y1="1776" y2="1776" x1="640" />
        </branch>
        <branch name="op(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1904" type="branch" />
            <wire x2="736" y1="1904" y2="1904" x1="640" />
        </branch>
        <branch name="op(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1296" type="branch" />
            <wire x2="1920" y1="1296" y2="1296" x1="1856" />
        </branch>
        <branch name="op(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1360" type="branch" />
            <wire x2="1920" y1="1360" y2="1360" x1="1856" />
        </branch>
        <instance x="1904" y="1680" name="XLXI_7" orien="R0" />
        <branch name="XLXN_23">
            <wire x2="1920" y1="1424" y2="1760" x1="1920" />
            <wire x2="1968" y1="1760" y2="1760" x1="1920" />
            <wire x2="1968" y1="1680" y2="1760" x1="1968" />
        </branch>
        <branch name="slt">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="496" y="928" type="branch" />
            <wire x2="496" y1="928" y2="928" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="928" name="slt" orien="R180" />
        <branch name="slt">
            <wire x2="1920" y1="1232" y2="1232" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1872" y="1232" name="slt" orien="R180" />
        <instance x="320" y="1872" name="XLXI_9" orien="R0" />
        <branch name="b">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1840" type="branch" />
            <wire x2="320" y1="1840" y2="1840" x1="224" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="736" y1="1840" y2="1840" x1="544" />
        </branch>
        <instance x="1232" y="1888" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_27">
            <wire x2="1136" y1="1808" y2="1808" x1="1056" />
            <wire x2="1136" y1="1792" y2="1808" x1="1136" />
            <wire x2="1232" y1="1792" y2="1792" x1="1136" />
        </branch>
        <branch name="a">
            <wire x2="1232" y1="1856" y2="1856" x1="1152" />
        </branch>
        <branch name="ci">
            <wire x2="1232" y1="1728" y2="1728" x1="1152" />
        </branch>
        <branch name="co">
            <wire x2="1760" y1="1856" y2="1856" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1152" y="1728" name="ci" orien="R180" />
        <iomarker fontsize="28" x="1152" y="1856" name="a" orien="R180" />
        <iomarker fontsize="28" x="1760" y="1856" name="co" orien="R0" />
        <branch name="addR">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="1728" type="branch" />
            <wire x2="1680" y1="1728" y2="1728" x1="1616" />
        </branch>
        <branch name="addR">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1168" type="branch" />
            <wire x2="1920" y1="1168" y2="1168" x1="1808" />
        </branch>
        <branch name="addR">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1952" type="branch" />
            <wire x2="2304" y1="1952" y2="1952" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1952" name="addR" orien="R0" />
        <branch name="r">
            <wire x2="2336" y1="1136" y2="1136" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2336" y="1136" name="r" orien="R0" />
    </sheet>
</drawing>