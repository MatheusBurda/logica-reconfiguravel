quit -sim

vlib work

# Compile
vcom -reportprogress 300 -work work {./count4/count4.vhd}
vcom -reportprogress 300 -work work {./count_57.vhd}
vcom -reportprogress 300 -work work {./count_57_tb.vhd}

# Simulation
vsim -voptargs=+acc work.cont_57_tb
add wave -position insertpoint sim:/cont_57_tb/*

run 2200 ns