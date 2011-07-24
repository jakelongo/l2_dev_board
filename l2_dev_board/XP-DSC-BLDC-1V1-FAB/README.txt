README.txt
----------

Additional information relating to the build of design XPCB-018.

Design Ref : XP-DSC-BLDC-1V1 (XPCB-018)

Contact : Corin Rathbone
Tel(UK) : 0117 9154225
Email   : corin@xmos.com
Address : XMOS Limited
          Venturers House
          King Street
          Bristol
          United Kingdom
          BS1 4PB

PCB Design tool : Mentor Graphics PADS2007.4 Flow. DxDesigner, PADS Layout.


Description of files included in XPCB-018-FAB.zip:

./README.txt    This file.

./BOM/      This directory contains the bill of materials and component position files for fabrication.

XPCB-018.pos        Component Position Data
XPCB-018.xls        Bill Of Materials

./Gerber/       This directory contains the following gerber files for the design in RS-274-X format.
      
XPCB-018-Ln.pho     PCB Copper Layer (where n = layer number, 01=Top Side)
XPCB-018-SST.pho    Silkscreen Top
XPCB-018-SSB.pho    Silkscreen Bottom  
XPCB-018-SMT.pho    Solder Mask Top
XPCB-018-SMB.pho    Solder Mask Bottom
XPCB-018-SPT.pho    Solder Paste Top
XPCB-018-SPB.pho    Solder Paste Bottom
XPCB-018-FAB.pho    Fabrication Instructions
XPCB-018-DRL.pho    Drill Diagram

./Drill/        This directory contains the following drill data files for the design.

XPCB-018-NC.drl     NC Drill File (Excellon Format, metric (000.00), suppress trailing zeros, absolute coordinates)
XPCB-018-NC.rep     NC Drill Report (Sizes & Quantities)
XPCB-018-NC.lst     NC Drill List (Sizes & Coordinates)

./Netlist/      This directory contains the netlist files for equivalence checking and bare board test.

XPCB-018-IPC.net    IPC-D-356 Format Netlist
