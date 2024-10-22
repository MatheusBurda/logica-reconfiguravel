quit -sim

vlib work

# Compile
vcom -reportprogress 300 -work work {./CountOnesFor.vhd}
vcom -reportprogress 300 -work work {./CountOnesWhile.vhd}
vcom -reportprogress 300 -work work {./CountOnesCaseWhen.vhd}
vcom -reportprogress 300 -work work {./CountOnesSum.vhd}
vcom -reportprogress 300 -work work {./CountOnesIf.vhd}
vcom -reportprogress 300 -work work {./lab4.vhd}
vcom -reportprogress 300 -work work {./lab4_tb.vhd}

# Simulation
vsim -voptargs=+acc work.lab4_tb
add wave -position insertpoint sim:/lab4_tb/*

run 500 ns