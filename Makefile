
TEMPLATE=template.html
SRC=$(wildcard *.in.html)
OBJ=$(sort $(SRC:.in.html=.html))

.PHONY: all
all: $(OBJ)

%.html: %.in.html $(TEMPLATE) navbar.html
	@echo BU $@
	@umka conv.um $(TEMPLATE) $< > $@

.PHONY: clean
clean:
	@rm -rf $(OBJ)
