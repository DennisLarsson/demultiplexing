#process_radtag demultiplexing and filtering pipeline
echo "Demultiplexing 506\n"
process_radtags -f /home/biogeoanalysis/RAD/RAD5/506/RAD5_506#CGATGT.bam -o /home/biogeoanalysis/RAD/RAD5/506/2s -b /home/biogeoanalysis/RAD/RAD5/506/2s/barcodes -e pstI -E phred33 -r -c -q -i bam -y gzfastq --barcode_dist_1 1 -s 20  -w 0.06
echo "\n"
process_radtags -f /home/biogeoanalysis/RAD/RAD5/506/RAD5_506#GATCAG.bam -o /home/biogeoanalysis/RAD/RAD5/506/3s -b /home/biogeoanalysis/RAD/RAD5/506/3s/barcodes -e pstI -E phred33 -r -c -q -i bam -y gzfastq --barcode_dist_1 1 -s 20  -w 0.06
echo "\n"
process_radtags -f /home/biogeoanalysis/RAD/RAD5/506/RAD5_506#TGACCA.bam -o /home/biogeoanalysis/RAD/RAD5/506/4s -b /home/biogeoanalysis/RAD/RAD5/506/4s/barcodes -e pstI -E phred33 -r -c -q -i bam -y gzfastq --barcode_dist_1 1 -s 20  -w 0.06
echo "\n"
process_radtags -f /home/biogeoanalysis/RAD/RAD5/506/RAD5_506#GCCAAT.bam -o /home/biogeoanalysis/RAD/RAD5/506/6s -b /home/biogeoanalysis/RAD/RAD5/506/6s/barcodes -e pstI -E phred33 -r -c -q -i bam -y gzfastq --barcode_dist_1 1 -s 20  -w 0.06
echo "\n"
process_radtags -f /home/biogeoanalysis/RAD/RAD5/506/RAD5_506#ACTTGA.bam -o /home/biogeoanalysis/RAD/RAD5/506/9s -b /home/biogeoanalysis/RAD/RAD5/506/9s/barcodes -e pstI -E phred33 -r -c -q -i bam -y gzfastq --barcode_dist_1 1 -s 20  -w 0.06
echo "\n"
process_radtags -f /home/biogeoanalysis/RAD/RAD5/506/RAD5_506#TAGCTT.bam -o /home/biogeoanalysis/RAD/RAD5/506/10s -b /home/biogeoanalysis/RAD/RAD5/506/10s/barcodes -e pstI -E phred33 -r -c -q -i bam -y gzfastq --barcode_dist_1 1 -s 20 -w 0.06
echo "\n"

echo "Demultiplexing 507\n"

process_radtags -f /home/biogeoanalysis/RAD/RAD5/507/RAD5_507#CGATGT.bam -o /home/biogeoanalysis/RAD/RAD5/507/2s -b /home/biogeoanalysis/RAD/RAD5/507/2s/barcodes -e pstI -E phred33 -r -c -q -i bam -y gzfastq --barcode_dist_1 1 -s 20  -w 0.06
echo "\n"
process_radtags -f /home/biogeoanalysis/RAD/RAD5/507/RAD5_507#GATCAG.bam -o /home/biogeoanalysis/RAD/RAD5/507/3s -b /home/biogeoanalysis/RAD/RAD5/507/3s/barcodes -e pstI -E phred33 -r -c -q -i bam -y gzfastq --barcode_dist_1 1 -s 20  -w 0.06
echo "\n"
process_radtags -f /home/biogeoanalysis/RAD/RAD5/507/RAD5_507#TGACCA.bam -o /home/biogeoanalysis/RAD/RAD5/507/4s -b /home/biogeoanalysis/RAD/RAD5/507/4s/barcodes -e pstI -E phred33 -r -c -q -i bam -y gzfastq --barcode_dist_1 1 -s 20  -w 0.06
echo "\n"
process_radtags -f /home/biogeoanalysis/RAD/RAD5/507/RAD5_507#GCCAAT.bam -o /home/biogeoanalysis/RAD/RAD5/507/6s -b /home/biogeoanalysis/RAD/RAD5/507/6s/barcodes -e pstI -E phred33 -r -c -q -i bam -y gzfastq --barcode_dist_1 1 -s 20  -w 0.06
echo "\n"
process_radtags -f /home/biogeoanalysis/RAD/RAD5/507/RAD5_507#ACTTGA.bam -o /home/biogeoanalysis/RAD/RAD5/507/9s -b /home/biogeoanalysis/RAD/RAD5/507/9s/barcodes -e pstI -E phred33 -r -c -q -i bam -y gzfastq --barcode_dist_1 1 -s 20  -w 0.06
echo "\n"
process_radtags -f /home/biogeoanalysis/RAD/RAD5/507/RAD5_507#TAGCTT.bam -o /home/biogeoanalysis/RAD/RAD5/507/10s -b /home/biogeoanalysis/RAD/RAD5/507/10s/barcodes -e pstI -E phred33 -r -c -q -i bam -y gzfastq --barcode_dist_1 1 -s 20 -w 0.06
echo "\n"


echo "Demultiplexing 508\n"

process_radtags -f /home/biogeoanalysis/RAD/RAD5/508/RAD5_508#CGATGT.bam -o /home/biogeoanalysis/RAD/RAD5/508/2s -b /home/biogeoanalysis/RAD/RAD5/508/2s/barcodes -e pstI -E phred33 -r -c -q -i bam -y gzfastq --barcode_dist_1 1 -s 20  -w 0.06
echo "\n"
process_radtags -f /home/biogeoanalysis/RAD/RAD5/508/RAD5_508#GATCAG.bam -o /home/biogeoanalysis/RAD/RAD5/508/3s -b /home/biogeoanalysis/RAD/RAD5/508/3s/barcodes -e pstI -E phred33 -r -c -q -i bam -y gzfastq --barcode_dist_1 1 -s 20  -w 0.06
echo "\n"
process_radtags -f /home/biogeoanalysis/RAD/RAD5/508/RAD5_508#TGACCA.bam -o /home/biogeoanalysis/RAD/RAD5/508/4s -b /home/biogeoanalysis/RAD/RAD5/508/4s/barcodes -e pstI -E phred33 -r -c -q -i bam -y gzfastq --barcode_dist_1 1 -s 20  -w 0.06
echo "\n"
process_radtags -f /home/biogeoanalysis/RAD/RAD5/508/RAD5_508#GCCAAT.bam -o /home/biogeoanalysis/RAD/RAD5/508/6s -b /home/biogeoanalysis/RAD/RAD5/508/6s/barcodes -e pstI -E phred33 -r -c -q -i bam -y gzfastq --barcode_dist_1 1 -s 20  -w 0.06
echo "\n"
process_radtags -f /home/biogeoanalysis/RAD/RAD5/508/RAD5_508#ACTTGA.bam -o /home/biogeoanalysis/RAD/RAD5/508/9s -b /home/biogeoanalysis/RAD/RAD5/508/9s/barcodes -e pstI -E phred33 -r -c -q -i bam -y gzfastq --barcode_dist_1 1 -s 20  -w 0.06
echo "\n"
process_radtags -f /home/biogeoanalysis/RAD/RAD5/508/RAD5_508#TAGCTT.bam -o /home/biogeoanalysis/RAD/RAD5/508/10s -b /home/biogeoanalysis/RAD/RAD5/508/10s/barcodes -e pstI -E phred33 -r -c -q -i bam -y gzfastq --barcode_dist_1 1 -s 20 -w 0.06
