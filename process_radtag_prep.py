#!/usr/local/bin/python3
## Made by Dennis Larsson @ Vienna University
## 11 March 2020

##example: python3 /home/biogeoanalysis/RAD/script/process_radtag_prep.py -o /home/biogeoanalysis/RAD/RAD1/ -t /home/biogeoanalysis/RAD/RAD4_2/P12table_RAD4

import os
import sys

def execute_command (command):
	print(command)
	check_value = os.system(command)
	if check_value > 0:
		sys.exit("\nSomething went wrong!")

outputfolder = ""
path_P11 = ""
path_P2 = ""
path_P12 = ""


for i in sys.argv:
	if i == "-o":
		index = sys.argv.index(i)
		outputfolder = sys.argv[index+1].rstrip("/")
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
print(P11_adapter)
P2_adapter = set(x[3] for x in P12_list)
print(P2_adapter)

proj_name = outputfolder.split("/")[-1]

for p11 in P11_adapter:
	for p2 in P2_adapter:
		os.mkdir(outputfolder + "/" + p11 + "/" + p2 + "s")

for i in P12_list:
	barcode_file = open (outputfolder+ "/" + i[2] + "/" + i[3] + "s" + "/barcodes", "a")
	barcode_file.write(i[1] + "\t" + i[0] + "\n")
	barcode_file.close()

for p11 in P11_adapter:
	for p2 in P2_adapter:
		execute_command("process_radtags -f " + outputfolder + "/" + p11 + "/" + proj_name + "_" + p11 + "#" + p2 + "s.bam -o " + outputfolder + "/" + p11 + "/" + p2 + "s -b " + outputfolder + "/" + p11 + "/" + p2 + "s/barcodes -e pstI -E phred33 -r -c -q -i bam -y gzfastq --barcode_dist_1 1 -s 20 -w 0.06")
