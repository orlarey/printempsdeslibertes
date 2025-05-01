all: document.pdf compresse.pdf

document.pdf : document.md
	pandoc document.md -o document.pdf --from markdown --template=eisvogel --listings --pdf-engine=xelatex

compresse.pdf : compresse.md
	pandoc compresse.md -o compresse.pdf --from markdown --template=eisvogel --listings --pdf-engine=xelatex

clean:
	rm -f document.pdf
	rm -f compresse.pdf



