.PHONY: clean install test

all: install test package

install:
	pip3 install -t target .

package: install
	cp scripts/* target/ ; \
	cd target/ ; \
	zip -r ../lambda.zip * -i "yaml*" "sqlalchemy*" "pymysql*" ;
	python setup.py bdist_egg
