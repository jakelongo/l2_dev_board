from xml.dom.minidom import *

#xn_gen in a class so can be called
class xn_gen:
	def __init__ (self):
	
		#open a file to write to
		xn_out = open ('xmp_16.xn', 'w')
	
		#Create a DOM document object
		doc = Document()
		
		#create Network attributes
		network = doc.createElement("Network")
		network.setAttribute("xmlns","http://www.xmos.com")
		network.setAttribute("xmlns:xsi","http://www.w3.org/2001/XMLSchema-instance")
		network.setAttribute("xsi:schemaLocation","http://www.xmos.com http://www.xmos.com")
		doc.appendChild(network)
		
		#add declarations for cores
		self.declarations(doc, network, '2');
		
		#add packages
		packages = doc.createElement("Packages")
		network.appendChild(packages)
		
		#set package info
		self.package(doc, packages, '0')
		
		#set Links info
		self.links(doc, network, '0')
		
		#external devices such as SPI flash
		self.externaldevs(doc, network, '0')
		
		#jtag chain setup
		self.jtag(doc, network, '0')
		
		
		xn_out.write(doc.toprettyxml(indent="	", newl="\n", encoding="UTF-8"))

	def jtag(self, doc, root, core):
		
		jtagchain = doc.createElement("JTAGChain")
		root.appendChild(jtagchain)
		
		jtagdevice = doc.createElement("JTAGDevice")
		jtagdevice.setAttribute("NodeId", "Master")
		jtagdevice.setAttribute("Position", "0")
		jtagchain.appendChild(jtagdevice)
		
		
	def externaldevs(self, doc, root, core):
		
		externaldev = doc.createElement("ExternalDevices")
		root.appendChild(externaldev)
		
		device = doc.createElement("Device")
		device.setAttribute("NodeId", "Master")
		device.setAttribute("Core", "0")
		device.setAttribute("Class", "SPIFlash")
		device.setAttribute("Name", "BootFlash")
		
		attribute = doc.createElement("Attribute")
		attribute.setAttribute("Name", "Define Name")
		attribute.setAttribute("Value", "Define Vals")
		externaldev.appendChild(attribute)
	
	#defines the links interconnect
	def links(self, doc, root, core):
		links = doc.createElement("Links")
		root.appendChild(links)
		
		link = doc.createElement("Link")
		link.setAttribute("Encoding", "2wire")
		link.setAttribute("Delays", "4,4")
		links.appendChild(link)
		
		linkendpt = doc.createElement("LinkEndpoint")
		linkendpt.setAttribute("NodeId", "Master")
		linkendpt.setAttribute("Link", "X0LD")
		link.appendChild(linkendpt)
		
		linkendpt = doc.createElement("LinkEndpoint")
		linkendpt.setAttribute("NodeId", "Slave")
		linkendpt.setAttribute("Link", "X0LB")
		link.appendChild(linkendpt)
		
	#package - this contains Node, Nodes, Boot and Core. It assumes core 0 boots all other cores)
	def package(self, doc, root, core):
		package = doc.createElement("Package")
		package.setAttribute("Id", "P"+core)
		package.setAttribute("Type", "XS1-L1A-TQ128")
		root.appendChild(package)
		
		nodes = doc.createElement("Nodes")
		package.appendChild(nodes)
		
		#create node 0
		node = doc.createElement("Node")
		node.setAttribute("Id", "Master")
		node.setAttribute("Type", "XS1-L1A")
		node.setAttribute("InPackageId", '0')
		node.setAttribute("Oscillator", "20MHz")
		nodes.appendChild(node)
		
		#Boot - find out about booting over XTAG
#		boot = doc.createElement("Boot")
#		nodes.appendChild(boot)
		
		#Bootee
#		bootee = doc.createElement("Bootee")
#		bootee.setAttribute("NodeId", "Slave")
#		bootee.setAttribute("Core", '0')
#		boot.appendChild(bootee)
		
		#Core information
		core = doc.createElement("Core")
		core.setAttribute("Number", "0")
		core.setAttribute("Reference", "stdcore[0]")
		node.appendChild(core)
		
				
	def declarations(self, doc, root, cores):
		#Declarations root
		declarations = doc.createElement("Declarations")
		root.appendChild(declarations)
		
		#Declare nodes
		declaration = doc.createElement("Declaration")
		declarations.appendChild(declaration)
	
		textdec = doc.createTextNode("core stdcore["+cores+"]")
		declaration.appendChild(textdec)
		
				
#init self class
if __name__ == '__main__':
	xn = xn_gen()
	