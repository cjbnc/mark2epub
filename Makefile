recipe_book.epub: recipe_book/description.json
	python mark2epub.py recipe_book recipe_book.epub

unpack:
	unzip -o -d unpacked recipe_book.epub

xfer: recipe_book.epub
	cp recipe_book.epub /home/nas/public/xfer

force:
	rm recipe_book.epub
	python mark2epub.py recipe_book recipe_book.epub
