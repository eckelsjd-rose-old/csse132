<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="a(0)" />
        <signal name="a(1)" />
        <signal name="b(1)" />
        <signal name="a(2)" />
        <signal name="b(2)" />
        <signal name="a(3)" />
        <signal name="b(3)" />
        <signal name="b(0)" />
        <signal name="op(2:0)" />
        <signal name="a(3:0)" />
        <signal name="b(3:0)" />
        <signal name="op(2)" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_31" />
        <signal name="r(0)" />
        <signal name="r(1)" />
        <signal name="r(2)" />
        <signal name="addR" />
        <signal name="r(3:0)" />
        <signal name="r(3)" />
        <port polarity="Input" name="op(2:0)" />
        <port polarity="Input" name="a(3:0)" />
        <port polarity="Input" name="b(3:0)" />
        <port polarity="Output" name="r(3:0)" />
        <blockdef name="alu_1b">
            <timestamp>2018-9-13T5:40:22</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="alu_1b" name="XLXI_1">
            <blockpin signalname="a(0)" name="a" />
            <blockpin signalname="b(0)" name="b" />
            <blockpin signalname="op(2:0)" name="op(2:0)" />
            <blockpin signalname="op(2)" name="ci" />
            <blockpin signalname="addR" name="slt" />
            <blockpin signalname="r(0)" name="r" />
            <blockpin signalname="XLXN_26" name="co" />
            <blockpin name="addR" />
        </block>
        <block symbolname="alu_1b" name="XLXI_2">
            <blockpin signalname="a(1)" name="a" />
            <blockpin signalname="b(1)" name="b" />
            <blockpin signalname="op(2:0)" name="op(2:0)" />
            <blockpin signalname="XLXN_26" name="ci" />
            <blockpin signalname="XLXN_31" name="slt" />
            <blockpin signalname="r(1)" name="r" />
            <blockpin signalname="XLXN_27" name="co" />
            <blockpin name="addR" />
        </block>
        <block symbolname="alu_1b" name="XLXI_3">
            <blockpin signalname="a(2)" name="a" />
            <blockpin signalname="b(2)" name="b" />
            <blockpin signalname="op(2:0)" name="op(2:0)" />
            <blockpin signalname="XLXN_27" name="ci" />
            <blockpin signalname="XLXN_31" name="slt" />
            <blockpin signalname="r(2)" name="r" />
            <blockpin signalname="XLXN_28" name="co" />
            <blockpin name="addR" />
        </block>
        <block symbolname="alu_1b" name="XLXI_4">
            <blockpin signalname="a(3)" name="a" />
            <blockpin signalname="b(3)" name="b" />
            <blockpin signalname="op(2:0)" name="op(2:0)" />
            <blockpin signalname="XLXN_28" name="ci" />
            <blockpin signalname="XLXN_31" name="slt" />
            <blockpin signalname="r(3)" name="r" />
            <blockpin name="co" />
            <blockpin signalname="addR" name="addR" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_31" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1552" y="720" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1552" y="1280" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1552" y="1824" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1552" y="2416" name="XLXI_4" orien="R0">
        </instance>
        <branch name="a(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="432" type="branch" />
            <wire x2="1552" y1="432" y2="432" x1="1456" />
        </branch>
        <branch name="a(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="992" type="branch" />
            <wire x2="1552" y1="992" y2="992" x1="1456" />
        </branch>
        <branch name="b(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1056" type="branch" />
            <wire x2="1552" y1="1056" y2="1056" x1="1472" />
        </branch>
        <branch name="a(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1536" type="branch" />
            <wire x2="1552" y1="1536" y2="1536" x1="1456" />
        </branch>
        <branch name="b(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1600" type="branch" />
            <wire x2="1552" y1="1600" y2="1600" x1="1456" />
        </branch>
        <branch name="a(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="2128" type="branch" />
            <wire x2="1552" y1="2128" y2="2128" x1="1424" />
        </branch>
        <branch name="b(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="2192" type="branch" />
            <wire x2="1552" y1="2192" y2="2192" x1="1424" />
        </branch>
        <branch name="b(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="496" type="branch" />
            <wire x2="1552" y1="496" y2="496" x1="1456" />
        </branch>
        <branch name="op(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="560" type="branch" />
            <wire x2="1344" y1="560" y2="560" x1="1232" />
            <wire x2="1552" y1="560" y2="560" x1="1344" />
            <wire x2="1344" y1="560" y2="1120" x1="1344" />
            <wire x2="1552" y1="1120" y2="1120" x1="1344" />
            <wire x2="1344" y1="1120" y2="1664" x1="1344" />
            <wire x2="1552" y1="1664" y2="1664" x1="1344" />
            <wire x2="1344" y1="1664" y2="1664" x1="1328" />
            <wire x2="1328" y1="1664" y2="2256" x1="1328" />
            <wire x2="1552" y1="2256" y2="2256" x1="1328" />
        </branch>
        <branch name="op(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="384" type="branch" />
            <wire x2="512" y1="384" y2="384" x1="176" />
        </branch>
        <iomarker fontsize="28" x="176" y="384" name="op(2:0)" orien="R180" />
        <branch name="a(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="288" type="branch" />
            <wire x2="512" y1="288" y2="288" x1="176" />
        </branch>
        <branch name="b(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="192" type="branch" />
            <wire x2="512" y1="192" y2="192" x1="176" />
        </branch>
        <iomarker fontsize="28" x="176" y="192" name="b(3:0)" orien="R180" />
        <iomarker fontsize="28" x="176" y="288" name="a(3:0)" orien="R180" />
        <branch name="op(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="624" type="branch" />
            <wire x2="1552" y1="624" y2="624" x1="1456" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1984" y1="832" y2="832" x1="1376" />
            <wire x2="1376" y1="832" y2="1184" x1="1376" />
            <wire x2="1552" y1="1184" y2="1184" x1="1376" />
            <wire x2="1984" y1="688" y2="688" x1="1936" />
            <wire x2="1984" y1="688" y2="832" x1="1984" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1984" y1="1392" y2="1392" x1="1376" />
            <wire x2="1376" y1="1392" y2="1728" x1="1376" />
            <wire x2="1552" y1="1728" y2="1728" x1="1376" />
            <wire x2="1984" y1="1248" y2="1248" x1="1936" />
            <wire x2="1984" y1="1248" y2="1392" x1="1984" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="2000" y1="1952" y2="1952" x1="1360" />
            <wire x2="1360" y1="1952" y2="2320" x1="1360" />
            <wire x2="1552" y1="2320" y2="2320" x1="1360" />
            <wire x2="2000" y1="1792" y2="1792" x1="1936" />
            <wire x2="2000" y1="1792" y2="1952" x1="2000" />
        </branch>
        <instance x="1120" y="2560" name="XLXI_5" orien="R0" />
        <branch name="XLXN_31">
            <wire x2="1552" y1="1248" y2="1248" x1="1168" />
            <wire x2="1168" y1="1248" y2="1792" x1="1168" />
            <wire x2="1184" y1="1792" y2="1792" x1="1168" />
            <wire x2="1552" y1="1792" y2="1792" x1="1184" />
            <wire x2="1184" y1="1792" y2="2384" x1="1184" />
            <wire x2="1552" y1="2384" y2="2384" x1="1184" />
            <wire x2="1184" y1="2384" y2="2432" x1="1184" />
        </branch>
        <branch name="r(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="432" type="branch" />
            <wire x2="2096" y1="432" y2="432" x1="1936" />
        </branch>
        <branch name="r(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="992" type="branch" />
            <wire x2="2112" y1="992" y2="992" x1="1936" />
        </branch>
        <branch name="r(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="1536" type="branch" />
            <wire x2="2144" y1="1536" y2="1536" x1="1936" />
        </branch>
        <branch name="r(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="256" type="branch" />
            <wire x2="2608" y1="256" y2="256" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2608" y="256" name="r(3:0)" orien="R0" />
        <branch name="addR">
            <wire x2="1472" y1="688" y2="688" x1="848" />
            <wire x2="1552" y1="688" y2="688" x1="1472" />
            <wire x2="848" y1="688" y2="2608" x1="848" />
            <wire x2="2048" y1="2608" y2="2608" x1="848" />
            <wire x2="2048" y1="2448" y2="2448" x1="1936" />
            <wire x2="2048" y1="2448" y2="2592" x1="2048" />
            <wire x2="2048" y1="2592" y2="2608" x1="2048" />
        </branch>
        <branch name="r(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="2128" type="branch" />
            <wire x2="2176" y1="2128" y2="2128" x1="1936" />
        </branch>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(255,0,0)" x="2360" y="2652">JOSHUA ECKELS AND AARON GLAVE - LAB02; CSSE132</text>
    </sheet>
</drawing>