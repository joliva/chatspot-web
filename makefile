APPNAME=cweb
EXEC=node_modules/sails/bin/sails.js

node_modules:
	npm install

start: node_modules
	forever start -o $(APPNAME).log -e $(APPNAME).log $(EXEC) lift

stop: 
	forever stop $(EXEC)

log: 
	forever logs $(EXEC)
