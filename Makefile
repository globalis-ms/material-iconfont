.PHONY: install build deploy

all: install build deploy

install:
	@ npm install material-design-icons
	@ npm update material-design-icons

build:
	@ cp -r node_modules/material-design-icons/iconfont .
	@ cp node_modules/material-design-icons/LICENSE .

deploy:
	@ git add .
	@ git commit -m "update iconfont"
	@ git push origin master
