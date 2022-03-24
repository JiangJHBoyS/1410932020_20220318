
VERILOG = iverilog
TARGET = 0318.vcd

$(TARGET) : 0318.vvp
	vvp 0318.vvp
0318.vvp: 0318_tb.v 0318.v
	$(VERILOG) -o 0318.vvp 0318_tb.v 0318.v

clean:
	rm $(TARGET)
