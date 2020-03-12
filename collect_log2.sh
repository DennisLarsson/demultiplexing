echo "File	Retained Reads	Low Quality	Barcode Not Found	RAD cutsite Not Found	Total" > logAll2
awk 'FNR==4' ./506/*/process_radtags* >> logAll2
echo "\n" >> logAll
awk 'FNR==4' ./507/*/process_radtags* >> logAll2
echo "\n" >> logAll
awk 'FNR==4' ./508/*/process_radtags* >> logAll2
