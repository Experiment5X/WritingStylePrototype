.PHONY: deploy clean install

deploy:
	mkdir deploy
	mkdir deploy/style
	mkdir deploy/script
	mkdir deploy/images

	cp style/* deploy/style/
	cp script/* deploy/script/
	cp images/* deploy/images/

	pug templates/index.pug -o deploy/

clean:
	rm -rf deploy

install: clean deploy
	ssh writingstyle@nitron.se.rit.edu rm -rf ~/public_html/prototype
	scp -r deploy/* writingstyle@nitron.se.rit.edu:~/public_html/prototype