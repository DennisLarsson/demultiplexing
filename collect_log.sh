echo "Barcode	Filename	Total	NoRadTag	LowQuality	Retained" > logAll
awk 'FNR==13;FNR==14;FNR==15;FNR==16' ./506/*/process_radtags* >> logAll
echo "\n" >> logAll
awk 'FNR==13;FNR==14;FNR==15;FNR==16' ./507/*/process_radtags* >> logAll
echo "\n" >> logAll
awk 'FNR==13;FNR==14;FNR==15;FNR==16' ./508/*/process_radtags* >> logAll
