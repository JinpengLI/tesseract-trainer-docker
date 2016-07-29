TLANG=tlang
FONTSDIR=/usr/share/fonts/truetype/dejavu
FONTNAME_NOSPACE=dejavusans
FONTNAME="DejaVu Sans"


text2image --text=training_text.txt --outputbase=${TLANG}.${FONTNAME_NOSPACE}.exp0 --font='DejaVu Sans' --fonts_dir=${FONTSDIR}
tesseract ${TLANG}.${FONTNAME_NOSPACE}.exp0.tif ${TLANG}.${FONTNAME_NOSPACE}.exp0 box.train
tesseract ${TLANG}.${FONTNAME_NOSPACE}.exp0.tif ${TLANG}.${FONTNAME_NOSPACE}.exp0 box.train.stderr
unicharset_extractor ${TLANG}.${FONTNAME_NOSPACE}.exp0.box
set_unicharset_properties -U unicharset -O output_unicharset --script_dir=/langdata
mv unicharset unicharset_back
mv output_unicharset unicharset
echo "dejavusans 0 0 0 0 0" > font_properties
shapeclustering -F font_properties -U unicharset ${TLANG}.${FONTNAME_NOSPACE}.exp0.tr
mftraining -F font_properties -U unicharset -O ${TLANG}.unicharset ${TLANG}.${FONTNAME_NOSPACE}.exp0.tr
cntraining ${TLANG}.${FONTNAME_NOSPACE}.exp0.tr

mv shapetable ${TLANG}.shapetable
mv normproto ${TLANG}.normproto
mv inttemp ${TLANG}.inttemp
mv pffmtable ${TLANG}.pffmtable

combine_tessdata ${TLANG}.

tesseract test_image.png output -l tlang

