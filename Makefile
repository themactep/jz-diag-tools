CROSS_COMPILE = mipsel-openipc-linux-musl-
CFLAGS = -std=c99 -static

# Source file
SRC = jz_gpio.c

# Output binary name
OUT = jz_gpio

all: $(OUT)

$(OUT): $(SRC)
	$(CROSS_COMPILE)gcc $(CFLAGS) $(SRC) -o $(OUT)

clean:
	rm -f $(OUT)
