CC := $(CROSS_COMPILE)gcc
CFLAGS := -fPIC -std=gnu99 -ldl -lm -pthread -Os -ffunction-sections -fdata-sections -fomit-frame-pointer
LDFLAGS := -Wl,--gc-sections

# Source file
SRC = jz_gpio.c

# Output binary name
OUT = ingenic-gpio

all: $(OUT)

$(OUT): $(SRC)
	$(CROSS_COMPILE)gcc $(CFLAGS) $(SRC) -o $(OUT)

clean:
	rm -f $(OUT)
