<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="rs_read" />
        <signal name="trans_busy" />
        <signal name="read_rdy" />
        <signal name="rs_trans" />
        <signal name="rs_do(7:0)" />
        <signal name="przyc_reset" />
        <signal name="przyc_start" />
        <signal name="t_di(7:0)" />
        <signal name="zegar_sys" />
        <signal name="XLXN_11" />
        <port polarity="Input" name="rs_read" />
        <port polarity="Output" name="trans_busy" />
        <port polarity="Output" name="read_rdy" />
        <port polarity="Output" name="rs_trans" />
        <port polarity="Output" name="rs_do(7:0)" />
        <port polarity="Input" name="przyc_reset" />
        <port polarity="Input" name="przyc_start" />
        <port polarity="Input" name="t_di(7:0)" />
        <port polarity="Input" name="zegar_sys" />
        <blockdef name="RS232">
            <timestamp>2008-9-23T11:16:18</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="320" y1="-288" y2="-288" x1="384" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <block symbolname="RS232" name="XLXI_1">
            <blockpin signalname="zegar_sys" name="Clk_50MHz" />
            <blockpin signalname="przyc_reset" name="Reset" />
            <blockpin signalname="rs_read" name="RS232_RxD" />
            <blockpin signalname="przyc_start" name="TxStart" />
            <blockpin signalname="t_di(7:0)" name="TxDI(7:0)" />
            <blockpin signalname="trans_busy" name="TxBusy" />
            <blockpin signalname="read_rdy" name="RxRdy" />
            <blockpin signalname="rs_trans" name="RS232_TxD" />
            <blockpin signalname="rs_do(7:0)" name="RxDO(7:0)" />
            <blockpin signalname="zegar_sys" name="Clk_Sys" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1232" y="1200" name="XLXI_1" orien="R0">
        </instance>
        <branch name="rs_read">
            <wire x2="1632" y1="912" y2="912" x1="1616" />
            <wire x2="1648" y1="912" y2="912" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1648" y="912" name="rs_read" orien="R0" />
        <branch name="trans_busy">
            <wire x2="1632" y1="1168" y2="1168" x1="1616" />
            <wire x2="1648" y1="1168" y2="1168" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1168" name="trans_busy" orien="R0" />
        <branch name="read_rdy">
            <wire x2="1632" y1="1104" y2="1104" x1="1616" />
            <wire x2="1648" y1="1104" y2="1104" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1104" name="read_rdy" orien="R0" />
        <branch name="rs_trans">
            <wire x2="1632" y1="976" y2="976" x1="1616" />
            <wire x2="1648" y1="976" y2="976" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1648" y="976" name="rs_trans" orien="R0" />
        <branch name="rs_do(7:0)">
            <wire x2="1632" y1="1040" y2="1040" x1="1616" />
            <wire x2="1648" y1="1040" y2="1040" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1040" name="rs_do(7:0)" orien="R0" />
        <branch name="przyc_reset">
            <wire x2="1216" y1="1104" y2="1104" x1="1200" />
            <wire x2="1232" y1="1104" y2="1104" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1104" name="przyc_reset" orien="R180" />
        <branch name="przyc_start">
            <wire x2="1216" y1="1040" y2="1040" x1="1200" />
            <wire x2="1232" y1="1040" y2="1040" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1040" name="przyc_start" orien="R180" />
        <branch name="t_di(7:0)">
            <wire x2="1216" y1="976" y2="976" x1="1200" />
            <wire x2="1232" y1="976" y2="976" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1200" y="976" name="t_di(7:0)" orien="R180" />
        <branch name="zegar_sys">
            <wire x2="1072" y1="1216" y2="1216" x1="1056" />
            <wire x2="1216" y1="1216" y2="1216" x1="1072" />
            <wire x2="1216" y1="1216" y2="1232" x1="1216" />
            <wire x2="1232" y1="1232" y2="1232" x1="1216" />
            <wire x2="1232" y1="1168" y2="1168" x1="1216" />
            <wire x2="1216" y1="1168" y2="1216" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1056" y="1216" name="zegar_sys" orien="R180" />
    </sheet>
</drawing>