import os
import sys
import shutil

##This file will only work Kicad files generated using gerber format
##If the files are open when this is executed it will throw an error and spaz!

def setupdir(boardname):
    tree = ['Gerber', 'Drill', 'Net', 'XY']
    for folders in os.listdir('.'):
        if tree.count(folders) > 0:
            shutil.rmtree(folders)

    for folders in tree:
        os.mkdir(folders)

def setupreadme(boardname, revision):
    filename = boardname + '-' + revision
    file = open("README.txt", 'w')
    file.write('README.txt\n')
    file.write('----------\n\n')

    file.write('Additional information relating to the build of '+filename+'\n\n')

    file.write("Contact: Jake Longo\n")
    file.write("Tel(UK) : 07510709598\n")
    file.write("Email   : longo.90@gmail.com\n")
    file.write("Address : XMOS Limited\n")
    file.write("Venturers House\n")
    file.write("King Street\n")
    file.write("Bristol\n")
    file.write("United Kingdom\n")
    file.write("BS1 4PB\n\n")

    file.write("PCB Design Tool: KiCad\n\n")

    file.write('Description of files included in '+filename+'-FAB.zip:\n\n')

    file.write("./README.txt    This File\n\n")
    file.close()

def setupgerber(boardname, revision):
    filename = boardname + '-' + revision
    #List all the files   
    for files in os.listdir('.'):
        #Split from hypen   
        splitfile = files.split("-")
        if len(splitfile) > 1:
            #Split from extension
            ends = splitfile[1].split(".")

            if ends[0] == 'Back':
                newname = (filename + '-BOT.pho')
                os.rename(files, newname)
                shutil.move(newname, os.getcwd()+'\Gerber')

            elif ends[0] == 'Comments':
                newname = (filename + '-CMT.pho')
                os.rename(files, newname)
                shutil.move(newname, os.getcwd()+'\Gerber')

            elif ends[0] == 'Front':
                newname = (filename + '-TOP.pho')
                os.rename(files, newname)
                shutil.move(newname, os.getcwd()+'\Gerber')

            elif ends[0] == 'GND':
                newname = (filename + '-GND.pho')
                os.rename(files, newname)
                shutil.move(newname, os.getcwd()+'\Gerber')

            elif ends[0] == 'Mask_Front':
                newname = (filename + '-SMT.pho')
                os.rename(files, newname)
                shutil.move(newname, os.getcwd()+'\Gerber')

            elif ends[0] == 'PWR':
                newname = (filename + '-PWR.pho')
                os.rename(files, newname)
                shutil.move(newname, os.getcwd()+'\Gerber')

            elif ends[0] == 'SilkS_Front':
                newname = (filename + '-SST.pho')
                os.rename(files, newname)
                shutil.move(newname, os.getcwd()+'\Gerber')

            elif ends[0] == 'SoldP_Front':
                newname = (filename + '-SPT.pho')
                os.rename(files, newname)
                shutil.move(newname, os.getcwd()+'\Gerber')

def setupdrill(boardname, revision):
    filename = boardname + '-' + revision
    
    #List all the files   
    for files in os.listdir('.'):
        #Split from hypen   
        splitfile = files.split("-")
        if len(splitfile) > 1:
            #Split from extension
            ends = splitfile[1].split(".")

            if ends[0] == 'drl' and ends[1] == 'rpt':
                newname = (filename + '-NC.' + ends[1])
                os.rename(files, newname)
                shutil.move(newname, os.getcwd()+'\Drill')

            elif ends[0] == 'drl' and ends[1] == 'pho':
                newname = (filename + '-NC.' + ends[1])
                os.rename(files, newname)
                shutil.move(newname, os.getcwd()+'\Gerber')

    for files in os.listdir('.'):
        splitfile = files.split(".")

        if len(splitfile) > 1:
            if splitfile[1] == 'drl':
                newname = (filename + '-NC.' + splitfile[1])
                os.rename(files, newname)
                shutil.move(newname, os.getcwd()+'\Drill')
                
def setupxy(boardname, revision):
    filename = boardname + '-' + revision

    for files in os.listdir('.'):
        splitfile = files.split(".")

        if len(splitfile) > 1:
            if splitfile[1] == 'pos':

                xyfile = []
                for lines in open(files, 'r'):
                    xyfile.append(lines)

                
                xyfile.pop(0)
                xyfile.pop(0)
                xyfile.pop(0)
                xyfile.pop(0)
                xyfile.pop()

                f = open(files, 'w')
                for line in xyfile:
                    f.write(line)

                f.close()
                
                
                newname = (filename + '-XY.' + splitfile[1])
                os.rename(files, newname)
                shutil.move(newname, os.getcwd()+'\XY')

def setupnet(boardname, revision):
    filename = boardname + '-' + revision

    for files in os.listdir('.'):
        splitfile = files.split(".")

        if len(splitfile) > 1:
            if splitfile[1] == 'net':
                newname = (filename + '-NT.' + splitfile[1])
                os.rename(files, newname)
                shutil.move(newname, os.getcwd()+'\NET')

def writereadme(boardname, revision):
    filename = boardname + '-' + revision
    tree = ['Gerber', 'Drill', 'Net', 'XY', 'BOM']

    file = open("README.txt", 'a')
    
    os.chdir(tree[0])
    file.write('./'+tree[0]+'/   This directory contains the following gerber files for the design.\n\n')
    #List all the files   
    for files in os.listdir('.'):
        #Split from hypen   
        splitfile = files.split("-")
        if splitfile[2] == 'BOT.pho':
            file.write(files+'   Bottom Copper Layer\n')
        elif splitfile[2] == 'TOP.pho':
            file.write(files+'   Top Copper Layer\n')
        elif splitfile[2] == 'GND.pho':
            file.write(files+'   Ground Copper Layer\n')
        elif splitfile[2] == 'PWR.pho':
            file.write(files+'   Power Plane Copper Layer\n')
        elif splitfile[2] == 'SMT.pho':
            file.write(files+'   Solder Mask Top Layer\n')
        elif splitfile[2] == 'SPT.pho':
            file.write(files+'   Solder Paste Top Layer\n')
        elif splitfile[2] == 'SST.pho':
            file.write(files+'   Silkscreen Top Layer\n')
        elif splitfile[2] == 'NC.pho':
            file.write(files+'   NC Drill Layer\n')
            
    file.write('\n')
    os.chdir('..')

    os.chdir(tree[1])
    file.write('./'+tree[1]+'/   This directory contains the following drill data files for the design.\n\n')
    #List all the files   
    for files in os.listdir('.'):
        #Split from hypen   
        splitfile = files.split(".")
        print splitfile[1]
        if splitfile[1] == 'drl':
            file.write(files+'    NC Drill File (Excellon Format, no zero suppression, absolute coordinates)\n')
        elif splitfile[1] == 'rpt':
            file.write(files+'   NC Drill Report (Sizes & Quantities)\n')
        elif splitfile[1] == 'pho':
            file.write(files+'    NC Drill layer\n')

    file.write('\n')
    os.chdir('..')

    os.chdir(tree[2])
    file.write('./'+tree[2]+'/   This directory contains the netlist files for equivalence checking and bare board test.\n\n')
    #List all the files   
    for files in os.listdir('.'):
        #Split from hypen   
        splitfile = files.split(".")

        if splitfile[1] == 'net':
            file.write(files+'    Netlist\n')

    file.write('\n')
    os.chdir('..')

    os.chdir(tree[3])
    file.write('./'+tree[3]+'/   This directory contains the following drill data files for the design.\n\n')
    #List all the files   
    for files in os.listdir('.'):
        #Split from hypen   
        splitfile = files.split(".")

        if splitfile[1] == 'xls':
            file.write(files+'    XY Component Position Data (Excel Format)\n')
        elif splitfile[1] == 'pos':
            file.write(files+'   XY Component Position Data (Raw Data)\n')
            file.write(files+'    XY Component Position Data (Excel Format)\n')

            

    file.write('\n')
    os.chdir('..')

    os.chdir(tree[4])
    file.write('./'+tree[4]+'/   This directory contains the bill of materials.\n\n')
    #List all the files   
    for files in os.listdir('.'):
        #Split from hypen   
        splitfile = files.split(".")

        if splitfile[1] == 'xlsx':
            file.write(files+'    Bill of materials (Excel Format)\n')
 
    file.write('\n')
    os.chdir('..')

    
    file.close()
        

if __name__ == '__main__':
#    boardname = raw_input('Enter the name of the board\n')
    boardname = 'XMP16'
    revision = '01'
    setupdir(boardname)
    setupreadme(boardname, revision)
    setupgerber(boardname, revision)
    setupdrill(boardname, revision)
    setupxy(boardname, revision)
    setupnet(boardname, revision)
    writereadme(boardname, revision)
