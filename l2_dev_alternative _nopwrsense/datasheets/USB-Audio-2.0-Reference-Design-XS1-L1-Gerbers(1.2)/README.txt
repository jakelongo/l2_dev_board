README.txt
----------

Additional information relating to the fabrication and assembly of printed circuit board XPCB-010.

Design Ref : XPCB-010

Contact : Joe Golightly
Tel(UK) : 0117 9154285
Email   : joe@xmos.com
Address : XMOS Limited
          Venturers House
          King Street
          Bristol
          United Kingdom
          BS1 4PB

PCB Design tool : Mentor Graphics PADS2007.4 Flow. DxDesigner, PADS Layout.


Description of files included in XPCB-010-FAB.zip:

./README.txt    This file.

./BOM/          This directory contains the bill of materials for the design.

XPCB-010-BOM.xls    Bill of Materials in Microsoft Excel Spreadsheet.

./Drill/        This directory contains the following drill data files for the design.

XPCB-010-NC.drl     NC Drill File (Excellon Format, metric (000.00), suppress trailing zeros, absolute coordinates).
XPCB-010-NC.rep     NC Drill Report (Sizes & Quantities).
XPCB-010-NC.lst     NC Drill List (Sizes & Coordinates).

./Gerber/       This directory contains the following gerber files for the design in RS-274-X format.
      
XPCB-010-TOP.pho    Top Copper.
XPCB-010-BOT.pho    Bottom Copper.
XPCB-010-SST.pho    Silkscreen Top.
XPCB-010-SSB.pho    Silkscreen Bottom.
XPCB-010-SMT.pho    Solder Mask Top.
XPCB-010-SMB.pho    Solder Mask Bottom.
XPCB-010-SPT.pho    Solder Paste Top.
XPCB-010-SPB.pho    Solder Paste Bottom.
XPCB-010-FAB.pho    Fabrication Instructions.
XPCB-010-DRL.pho    Drill Drawing.
XPCB-010-ADT.pho    Assembly Drawing Top.

./Netlist/      This directory contains the netlist files for equivalence checking and bare board test.

XPCB-010-IPC.net    IPC-D-356 Format Netlist

./XY/           This directory contains the pick and place data for the design.

XPCB-010-XY.xls     Part Locations File (XY Coordinates) in Microsoft Excel Spreadsheet.