#!/bin/bash
# Package design for fabrication
#
# Instructions:
# +PCBnew:
# - Plot gerbers (including copper, inner layers, component, sold pastes, silkscreens, mask, drawings).
# - Generate drill files (including drill sheet as PostScript and drill report).
# - Generate modules position (under Postprocess in PCBnew).
#
# + EESchema:
# - Export netlist as OrCAD
# - Generate List of Material
#
# +Change variable values below
# +Run ./package.sh

user_name="Corin Rathbone"		# Creators name
user_phone="4225"			# Creators office extension
user_email="corin@xmos.com"		# Creators email
project_title="128tqfp"		# Title of the KiCAD project
gerber_title="X-LINK-DEMO-1V0"		# Name for the project to go out as.

# Generate the assembly diagram
perl process.pl $project_title.brd
echo "Open assembly.brd in PCBnew and plot the SilkS_Cmp layer please."
read -p "Then press any key to continue..."

# Remove old zip file
if [ -e $gerber_title-FAB.zip ]; then	
	rm $gerber_title-FAB.zip
fi

# Remove old directory 
if [ -e $gerber_title-FAB ]; then 
	rm -rf $gerber_title-FAB
fi

# Remove temporary files
if [ -e \$savepcb.brd ]; then	
	rm \$savepcb.brd
fi
if [ -e *.bck ]; then	
	rm *.bck
fi
if [ -e *.bak ]; then	
	rm *.bak
fi
if [ -e *.000 ]; then	
	rm *.000
fi

# Create directories
mkdir Gerber
mkdir Drill
mkdir Netlist
mkdir BOM

# Copy Gerber Files
if [ -e $project_title-Inner_L1.pho ]; then 
	cp $project_title-Component.pho Gerber/$gerber_title-L01.pho
	cp $project_title-Inner_L2.pho Gerber/$gerber_title-L02.pho
	cp $project_title-Inner_L1.pho Gerber/$gerber_title-L03.pho
	cp $project_title-Copper.pho Gerber/$gerber_title-L04.pho
else
	cp $project_title-Component.pho Gerber/$gerber_title-L01.pho
	cp $project_title-Copper.pho Gerber/$gerber_title-L02.pho
fi
cp $project_title-SilkS_Cmp.pho Gerber/$gerber_title-SST.pho
cp $project_title-SilkS_Cop.pho Gerber/$gerber_title-SSB.pho
cp $project_title-Mask_Cmp.pho Gerber/$gerber_title-SMT.pho
cp $project_title-Mask_Cop.pho Gerber/$gerber_title-SMB.pho
cp $project_title-SoldP_Cmp.pho Gerber/$gerber_title-SPT.pho
#cp $project_title-SoldP_Cop.pho Gerber/$gerber_title-SPB.pho
cp $project_title-Drawings.pho Gerber/$gerber_title-FAB.pho
cp assembly-SilkS_Cmp.pho Gerber/$gerber_title-ASM.pho

# Copy Drill Files
cp $project_title.drl Drill/$gerber_title-NC.drl
cp $project_title-drl.rpt Drill/$gerber_title-NC.rep
cp $project_title-drl.ps Drill/$gerber_title-NC.ps

# Copy Netlist Files
cp $project_title.net Netlist/$gerber_title.net

# Copy BOM Files
cp $project_title-Component.pos BOM/$gerber_title.pos
cp $project_title.lst BOM/$gerber_title.lst
cp BOM.xls BOM/$gerber_title-BOM.xls

# Build README.txt
if [ -e README.txt ]; then	
	rm README.txt
fi
echo 'README.txt' >>README.txt
echo '----------' >>README.txt
echo ' ' >>README.txt
echo 'Additional information relating to the build of design '$gerber_title >>README.txt
echo ' ' >>README.txt
echo 'Design Ref : '$gerber_title >>README.txt
echo ' ' >>README.txt
echo 'Contact : '$user_name >>README.txt
echo 'Tel(UK) : 0117 915 '$user_phone >>README.txt
echo 'Email   : '$user_email >>README.txt
echo 'Address : XMOS Limited' >>README.txt
echo '          Venturers House' >>README.txt
echo '          King Street' >>README.txt
echo '          Bristol' >>README.txt
echo '          United Kingdom' >>README.txt
echo '          BS1 4PB' >>README.txt
echo ' ' >>README.txt
echo 'PCB Design tool : KiCAD PCBnew' >>README.txt
echo ' ' >>README.txt
echo 'Description of files included in '$gerber_title'-FAB.zip:' >>README.txt
echo ' ' >>README.txt
echo './README.txt    This file.' >>README.txt
echo ' ' >>README.txt
echo './Gerber/       This directory contains the following gerber files for the design in RS-274-X format.' >>README.txt
echo ' ' >>README.txt
echo $gerber_title'-Ln.pho     PCB Copper Layer (where n = layer number, 01=Top Side)' >>README.txt
echo $gerber_title'-SST.pho    Silkscreen Top' >>README.txt
echo $gerber_title'-SSB.pho    Silkscreen Bottom' >>README.txt
echo $gerber_title'-SMT.pho    Solder Mask Top' >>README.txt
echo $gerber_title'-SMB.pho    Solder Mask Bottom' >>README.txt
echo $gerber_title'-SPT.pho    Solder Paste Top' >>README.txt
#echo $gerber_title'-SPB.pho    Solder Paste Bottom' >>README.txt
echo $gerber_title'-FAB.pho    Fabrication Instructions' >>README.txt
echo $gerber_title'-ASM.pho    Assembly Diagram' >>README.txt
echo ' ' >>README.txt
echo './Drill/        This directory contains the following drill data files for the design.' >>README.txt
echo ' ' >>README.txt
echo $gerber_title'-NC.drl     NC Drill File (Excellon Format, metric (000.00), suppress trailing zeros, absolute coordinates)' >>README.txt
echo $gerber_title'-NC.rep     NC Drill Report (Sizes & Quantities)' >>README.txt
echo $gerber_title'-NC.ps      Drill Diagram in postscript.' >>README.txt
echo ' ' >>README.txt
echo './Netlist/      This directory contains the netlist files for equivalence checking and bare board test.' >>README.txt
echo ' ' >>README.txt
echo $gerber_title'.net    OrCad Format Netlist' >>README.txt
echo ' ' >>README.txt
echo './BOM/      This directory contains the bill of materials and component position files for fabrication.' >>README.txt
echo ' ' >>README.txt
echo $gerber_title'.pos    Component Position Data' >>README.txt
echo $gerber_title'.lst    Component Reference List' >>README.txt
echo $gerber_title'-BOM.xls    Bill Of Materials' >>README.txt

# Convert the readme to windows format.
unix2dos README.txt

# Build the zip file
zip -r $gerber_title-FAB.zip README.txt BOM Drill Gerber Netlist 

# Remove the temporary directories & files
rm README.txt
rm assembly*
rm *.pho
rm $project_title.drl
rm $project_title-drl.rpt
rm $project_title-drl.ps
rm $project_title-Component.pos
rm -rf BOM
rm -rf Drill
rm -rf Gerber
rm -rf Netlist

# Unzip the file into the current directory
unzip $gerber_title-FAB.zip -d $gerber_title-FAB

