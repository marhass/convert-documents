# #!/usr/bin/bash/

# Ask user what name of file is
echo "What is the name of your file? No extension or periods, please."
# Read file name from input
read FILENAME
# Ask user what file type is
echo "What is the extension: md, odt, pdf, docx, or html? No periods, please."
# Read file extension from output
read EXT
# Convert file to HTML
pandoc -o $FILENAME.html $FILENAME.$EXT
# Convert file to DOCX
pandoc -o $FILENAME.docx $FILENAME.$EXT
# Convert file to ODT
pandoc -o $FILENAME.odt $FILENAME.$EXT
# Convert file to TXT
pandoc -o $FILENAME.txt $FILENAME.$EXT
# Convert file to PDF
pandoc $FILENAME.txt --latex-engine=pdflatex -o $FILENAME.pdf
# Tell user the process is complete
echo "Thank you. Your files have been created."