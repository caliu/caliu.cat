all: index.html \
	banc/index.html \
	fer-sen-soci/index.html \
	llistes-de-correu/index.html \
	organitzacio/index.html \
	politica-de-privadesa/index.html \
	que-es-caliu/index.html \
	servidor-de-ftp/index.html

index.html: src/header.html src/caliu.html src/footer.html
	cat $+ > $@

%/index.html: src/header.html src/%.html src/footer.html
	mkdir -p $*
	cat $+ > $@

server:
	python3 -m http.server

.PHONY: all server
