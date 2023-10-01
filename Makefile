all:
	asciidoctor -D build IHE.adoc
	pandoc -f docbook -i build/IHE.xml -o IHE.pdf
	pandoc -f docbook -i build/IHE.xml -o IHE.epub
