all: pdf epub

pdf:
	asciidoctor-pdf -D output IHE.adoc

epub:
	mkdir -p output
	asciidoctor -D build IHE.adoc
	pandoc -f docbook -i build/IHE.xml -o output/IHE.epub

clean:
	rm -rf build/ output/
