from xml.dom.minidom import *

#This header wil init the xn and erase all previous entries
def initxn (doc):
    #create Network attributes
    network = doc.createElement("Network")
    network.setAttribute("xmlns","http://www.xmos.com")
    network.setAttribute("xmlns:xsi","http://www.w3.org/2001/XMLSchema-instance")
    network.setAttribute("xsi:schemaLocation","http://www.xmos.com http://www.xmos.com")
    doc.appendChild(network)
    return network

def write_declaration(root, len_x, len_y):
    #write Declaration of cores
    decs = doc.createElement("Declarations")
    root.appendChild(decs)

    dec = doc.createElement("Declaration")
    decs.appendChild(dec)

    core_no = doc.createTextNode("core stdcore["+str((len_x*len_y*16))+"]")
    dec.appendChild(core_no)

def write_packages(root, len_x, len_y):
    #create packages
    no_boards = len_x * len_y
    no_chips = no_boards * 8
    reference = 0

    #loop package attribute for each chip
    for i in range(no_chips):
        pack = doc.createElement("Package")
        pack.setAttribute("Package ID", str(i))
        pack.setAttribute("Type", "XS1-L2A-QF124")
        pack.setAttribute("Oscillator", "20Mhz")
        root.appendChild(pack)
        
        reference = write_nodes(pack, reference)

        
        

def write_nodes(root, reference):
    #This will write the nodes out for each L2
    nodes = doc.createElement("Nodes")
    root.appendChild(nodes)

    #Set attributes for each core in the chip
    for i in range(2):
        node = doc.createElement("Node")
        node.setAttribute("Id", str(reference))
        node.setAttribute("InPackageId",str(reference%2))
        node.setAttribute("Type","XS1-L1A")
        nodes.appendChild(node)

        core = doc.createElement("Core")
        core.setAttribute("Number", "0")
        core.setAttribute("Reference", "stdcore["+str(reference)+"]")
        reference += 1
        node.appendChild(core)

        #Declare the port for the LEDs
        if i == 1:
            port = doc.createElement("Port")
            port.setAttribute("Location","XS1_PORT_4F")
            port.setAttribute("Name", "PORT_LED")
            core.appendChild(port)

    return reference


def write_links(root, len_x, len_y):
    links = doc.createElement("Links")
    root.appendChild(links)

    write_internal_links(links, len_x, len_y)

def write_internal_links(root, len_x, len_y):
    chips = len_x * len_y * 8
    nodes = chips * 2

    for i in range(nodes*2):
        
        if (i%4) == 0:
            linka = "XLG"
            linkb = "XLF"
        elif (i%4) == 1:
            linka = "XLH"
            linkb = "XLE"
        elif (i%4) == 2:
            linka = "XLE"
            linkb = "XLH"
        else:
            linka = "XLF"
            linkb = "XLG"
        
        link = doc.createElement("Link")
        link.setAttribute("Encoding", "5wire")
        link.setAttribute("Delays", "0,1")
        root.appendChild(link)

        endpoint = doc.createElement("LinkEndpoint")
        endpoint.setAttribute("Link", linka)
        endpoint.setAttribute("NodeId",str(i/4*2))
        link.appendChild(endpoint)

        endpoint = doc.createElement("LinkEndpoint")
        endpoint.setAttribute("Link", linkb)
        endpoint.setAttribute("NodeId",str((i/4*2)+1))
        link.appendChild(endpoint)

        
#   This will write the external links. Due to the naming of nodes
#   you must connect the nodes in the patterns which match
#        [  >-][--]=[--][-|]
#   JTAG=[</^|][--]=[--][-<]
#        [  ^>][--]=[--][-|]
#        [  ^|][--]=[--][-<]

# ^ means JTAG goes up
# | means JTAG goes down
# > means JTAG goes right
# < means JTAG goes left
# = means the interconnect between boards
# the JTAG Node has both up and left actions
def write_external_links(root, len_x, len_y)
    


if __name__ == '__main__':
    
#  boardname = raw_input('Enter the name of the board\n')
    boardname = 'XMP16'

#   length in the x dimention
#   len_x = raw_input('Please enter the length in the x dimention')
    len_x = 2

#   length in the y dimention
#   len_y = raw_input('Please enter the length in the y dimention')
    len_y = 2

#  this will erase the file if there is one present
    xn_out = open((boardname+'.xn'), 'w')

#  start document for minidom
    doc = Document()

#   Add all the xn declaration required by the tools
    network = initxn(doc)

#   Declarations: this should specify the number of cores in the network
    write_declaration(network, len_x, len_y)

#   Packages: declares the L2 chips in the network, assigning them references
    write_packages(network, len_x, len_y)

#   Links: This is to declare how the cores are wired together (messy!)
#   This can be integrated into the packages function but for clarities sake...
    write_links(network, len_x, len_y)

#   Write out xml to xn file
    xn_out.write(doc.toprettyxml(indent="	", newl="\n", encoding="UTF-8"))

#   close the xn file
    xn_out.close()


