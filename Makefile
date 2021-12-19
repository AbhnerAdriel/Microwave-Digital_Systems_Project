all:
	iverilog hdl/encoder/*.v hdl/timer/*.v hdl/control/*.v hdl/decoder/*.v hdl/*.v test_benches/microwave_tb.v  -o bin/microwave
	vvp bin/microwave

encoder:
	iverilog hdl/encoder/*.v test_benches/encoder_tb.v -o bin/encoder
	vvp bin/encoder

timer:
	iverilog hdl/timer/*.v test_benches/timer_tb.v -o bin/timer
	vvp bin/timer

control:
	iverilog hdl/control/*.v test_benches/control_tb.v -o bin/control
	vvp bin/control

decoder:
	iverilog hdl/decoder/*.v test_benches/decoder_tb.v -o bin/decoder
	vvp bin/decoder
