quit -sim

vlib work

# Compile
vcom -reportprogress 300 -work work {./bram.vhd}
vcom -reportprogress 300 -work work {./fifo.vhd}
vcom -reportprogress 300 -work work {./lab5.vhd}
vcom -reportprogress 300 -work work {./lab5_tb.vhd}

# Simulation
vsim -voptargs=+acc work.lab5_tb
add wave -position insertpoint sim:/lab5_tb/*

run 100000 ns