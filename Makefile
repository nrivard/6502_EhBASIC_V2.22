SRC_DIR:=patched
INCLUDE_DIR:=../../LmaOS.65c02/include

CL65?=$(shell which cl65)
ifeq ($(CL65),)
$(error Install the CC65 suite and include it in your PATH)
endif

all:
	$(CL65) -t none --cpu 65C02 --feature labels_without_colons --asm-include-dir $(INCLUDE_DIR) --mapfile main.map -o BASIC.PRG $(SRC_DIR)/n8-bit_mon.asm
