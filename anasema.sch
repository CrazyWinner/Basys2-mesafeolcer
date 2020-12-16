<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(3:0)" />
        <signal name="XLXN_3(8:0)" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6(3:0)" />
        <signal name="XLXN_7(3:0)" />
        <signal name="XLXN_8(3:0)" />
        <signal name="echo" />
        <signal name="mClk" />
        <signal name="an(3:0)" />
        <signal name="seg(6:0)" />
        <signal name="trig" />
        <signal name="led(7:0)" />
        <port polarity="Input" name="echo" />
        <port polarity="Input" name="mClk" />
        <port polarity="Output" name="an(3:0)" />
        <port polarity="Output" name="seg(6:0)" />
        <port polarity="Output" name="trig" />
        <port polarity="Output" name="led(7:0)" />
        <blockdef name="binaryToDecimal">
            <timestamp>2017-11-21T16:50:2</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ledDriver">
            <timestamp>2017-11-21T16:32:50</timestamp>
            <rect width="304" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="binaryTo7segment">
            <timestamp>2017-11-21T16:32:43</timestamp>
            <rect width="304" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="anaModul">
            <timestamp>2017-11-22T15:22:19</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <block symbolname="binaryToDecimal" name="XLXI_2">
            <blockpin signalname="XLXN_4" name="clkIn" />
            <blockpin signalname="XLXN_3(8:0)" name="dataIn(8:0)" />
            <blockpin signalname="XLXN_5" name="clkOut" />
            <blockpin signalname="XLXN_6(3:0)" name="dataOut1(3:0)" />
            <blockpin signalname="XLXN_7(3:0)" name="dataOut2(3:0)" />
            <blockpin signalname="XLXN_8(3:0)" name="dataOut3(3:0)" />
        </block>
        <block symbolname="ledDriver" name="XLXI_3">
            <blockpin signalname="XLXN_5" name="clkIn" />
            <blockpin signalname="XLXN_6(3:0)" name="dataIn1(3:0)" />
            <blockpin signalname="XLXN_7(3:0)" name="dataIn2(3:0)" />
            <blockpin signalname="XLXN_8(3:0)" name="dataIn3(3:0)" />
            <blockpin signalname="XLXN_1(3:0)" name="dataOut(3:0)" />
            <blockpin signalname="an(3:0)" name="chipSelect(3:0)" />
        </block>
        <block symbolname="binaryTo7segment" name="XLXI_4">
            <blockpin signalname="XLXN_1(3:0)" name="veriIN(3:0)" />
            <blockpin signalname="seg(6:0)" name="outSegment(6:0)" />
        </block>
        <block symbolname="anaModul" name="XLXI_5">
            <blockpin signalname="echo" name="echoPin" />
            <blockpin signalname="mClk" name="clkIn" />
            <blockpin signalname="trig" name="trigPin" />
            <blockpin signalname="XLXN_4" name="clkOut" />
            <blockpin signalname="XLXN_3(8:0)" name="degerOut(8:0)" />
            <blockpin signalname="led(7:0)" name="ledOut(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1216" y="1248" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2080" y="1248" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2576" y="1056" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_1(3:0)">
            <wire x2="2576" y1="1024" y2="1024" x1="2512" />
        </branch>
        <branch name="XLXN_3(8:0)">
            <wire x2="1104" y1="1200" y2="1200" x1="992" />
            <wire x2="1104" y1="1200" y2="1216" x1="1104" />
            <wire x2="1216" y1="1216" y2="1216" x1="1104" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1104" y1="1136" y2="1136" x1="992" />
            <wire x2="1104" y1="1024" y2="1136" x1="1104" />
            <wire x2="1216" y1="1024" y2="1024" x1="1104" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="2080" y1="1024" y2="1024" x1="1600" />
        </branch>
        <branch name="XLXN_6(3:0)">
            <wire x2="2080" y1="1088" y2="1088" x1="1600" />
        </branch>
        <branch name="XLXN_7(3:0)">
            <wire x2="2080" y1="1152" y2="1152" x1="1600" />
        </branch>
        <branch name="XLXN_8(3:0)">
            <wire x2="2080" y1="1216" y2="1216" x1="1600" />
        </branch>
        <branch name="echo">
            <wire x2="608" y1="1072" y2="1072" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="1072" name="echo" orien="R180" />
        <branch name="mClk">
            <wire x2="608" y1="1200" y2="1200" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="1200" name="mClk" orien="R180" />
        <branch name="an(3:0)">
            <wire x2="2544" y1="1216" y2="1216" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1216" name="an(3:0)" orien="R0" />
        <branch name="seg(6:0)">
            <wire x2="3040" y1="1024" y2="1024" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="3040" y="1024" name="seg(6:0)" orien="R0" />
        <branch name="trig">
            <wire x2="1024" y1="1072" y2="1072" x1="992" />
        </branch>
        <iomarker fontsize="28" x="1024" y="1072" name="trig" orien="R0" />
        <instance x="608" y="1232" name="XLXI_5" orien="R0">
        </instance>
        <branch name="led(7:0)">
            <wire x2="1024" y1="1264" y2="1264" x1="992" />
        </branch>
        <iomarker fontsize="28" x="1024" y="1264" name="led(7:0)" orien="R0" />
    </sheet>
</drawing>