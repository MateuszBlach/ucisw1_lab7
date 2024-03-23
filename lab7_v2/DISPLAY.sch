<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="zegar_50" />
        <signal name="przyc_reset" />
        <signal name="linia_wej(63:0)" />
        <signal name="blank(15:0)" />
        <signal name="lcd_d(3:0)" />
        <signal name="lcd_e" />
        <signal name="lcd_rw" />
        <signal name="lcd_rs" />
        <signal name="sf_ce" />
        <port polarity="Input" name="zegar_50" />
        <port polarity="Input" name="przyc_reset" />
        <port polarity="Input" name="linia_wej(63:0)" />
        <port polarity="Input" name="blank(15:0)" />
        <port polarity="BiDirectional" name="lcd_d(3:0)" />
        <port polarity="Output" name="lcd_e" />
        <port polarity="Output" name="lcd_rw" />
        <port polarity="Output" name="lcd_rs" />
        <port polarity="Output" name="sf_ce" />
        <blockdef name="LCD1x64">
            <timestamp>2008-9-19T11:10:6</timestamp>
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="LCD1x64" name="XLXI_1">
            <blockpin signalname="zegar_50" name="Clk_50MHz" />
            <blockpin signalname="przyc_reset" name="Reset" />
            <blockpin signalname="linia_wej(63:0)" name="Line(63:0)" />
            <blockpin signalname="blank(15:0)" name="Blank(15:0)" />
            <blockpin signalname="lcd_d(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="lcd_e" name="LCD_E" />
            <blockpin signalname="lcd_rw" name="LCD_RW" />
            <blockpin signalname="lcd_rs" name="LCD_RS" />
            <blockpin signalname="sf_ce" name="SF_CE" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1664" y="1088" name="XLXI_1" orien="R0">
        </instance>
        <branch name="zegar_50">
            <wire x2="1664" y1="1056" y2="1056" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1632" y="1056" name="zegar_50" orien="R180" />
        <branch name="przyc_reset">
            <wire x2="1664" y1="992" y2="992" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1632" y="992" name="przyc_reset" orien="R180" />
        <branch name="linia_wej(63:0)">
            <wire x2="1664" y1="800" y2="800" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1632" y="800" name="linia_wej(63:0)" orien="R180" />
        <branch name="blank(15:0)">
            <wire x2="1664" y1="864" y2="864" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1632" y="864" name="blank(15:0)" orien="R180" />
        <branch name="lcd_d(3:0)">
            <wire x2="2112" y1="992" y2="992" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2112" y="992" name="lcd_d(3:0)" orien="R0" />
        <branch name="lcd_e">
            <wire x2="2112" y1="800" y2="800" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2112" y="800" name="lcd_e" orien="R0" />
        <branch name="lcd_rw">
            <wire x2="2112" y1="928" y2="928" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2112" y="928" name="lcd_rw" orien="R0" />
        <branch name="lcd_rs">
            <wire x2="2112" y1="864" y2="864" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2112" y="864" name="lcd_rs" orien="R0" />
        <branch name="sf_ce">
            <wire x2="2112" y1="1056" y2="1056" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2112" y="1056" name="sf_ce" orien="R0" />
    </sheet>
</drawing>