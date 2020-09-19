#!/usr/local/bin/python3
## Made by Dennis Larsson @ Vienna University
## 12 September 2020
## version 1.2

##example: python3 /home/biogeoanalysis/RAD/script/process_radtag_prep1.2.py -o /home/biogeoanalysis/RAD/RAD1/ -p RAD1 -t /home/biogeoanalysis/RAD/RAD1/P12table_RAD1

import os
import sys

def execute_command (command):
	print(command)
	check_value = os.system(command)
	if check_value > 0:
		sys.exit("\nSomething went wrong! Last command: " + command)

outputfolder = ""
path_P11 = ""
path_P2 = ""
path_P12 = ""


for i in sys.argv:
	if i == "-o":
		index = sys.argv.index(i)
		outputfolder = sys.argv[index+1].rstrip("/")
	elif i == "-p":
		index = sys.argv.index(i)
		proj_name = sys.argv[index+1]
	elif i == "-t":
		index = sys.argv.index(i)
		path_P12 = sys.argv[index+1]

P12_list = []
with open (path_P12, "r") as P12_file:
	next(P12_file)
	for line in P12_file:
		P12Binfo = line.rstrip().split("\t") #P12 barcode adapter info
		P12_list.append(P12Binfo)


P11_adapter = set(x[2] for x in P12_list)
P11_adapter = sorted(P11_adapter)
#print(P11_adapter)

P2_adapter = set(x[3] for x in P12_list)
P2_adapter = sorted(P2_adapter)
#print(P2_adapter)



for p11 in P11_adapter:
	for p2 in P2_adapter:
		if os.path.exists(outputfolder + "/" + p11 + "/" + p2 + "s") == False:
			os.mkdir(outputfolder + "/" + p11 + "/" + p2 + "s")

for i in P12_list:
	if os.path.isfile(outputfolder+ "/" + i[2] + "/" + i[3] + "s" + "/barcodes") == True:
		os.remove(outputfolder+ "/" + i[2] + "/" + i[3] + "s" + "/barcodes") 

for i in P12_list:
	barcode_file = open (outputfolder+ "/" + i[2] + "/" + i[3] + "s" + "/barcodes", "a")
	barcode_file.write(i[1] + "\t" + i[0] + "\n")
	barcode_file.close()

for p11 in P11_adapter:
	for p2 in P2_adapter:
		if os.path.isfile(outputfolder + "/" + p11 + "/" + p2 + "s/barcodes") == True:
			execute_command("process_radtags -f " + outputfolder + "/" + p11 + "/" + proj_name + "_" + p11 + "#" + p2 + "s.bam -o " + outputfolder + "/" + p11 + "/" + p2 + "s -b " + outputfolder + "/" + p11 + "/" + p2 + "s/barcodes -e pstI -E phred33 -r -c -q -i bam -y gzfastq --barcode_dist_1 1 -s 20 -w 0.06")
		else:
			print("WARNING: Barcode file not found!")
