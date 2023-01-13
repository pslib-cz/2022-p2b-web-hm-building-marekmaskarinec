
TEMPLATE=template.html
SRC=$(wildcard *.in.html)
OBJ=$(sort $(SRC:.in.html=.html))

all: $(OBJ)

%.html: %.in.html $(TEMPLATE)
	@echo BU $@
	@umka conv.um $(TEMPLATE) $< > $@
