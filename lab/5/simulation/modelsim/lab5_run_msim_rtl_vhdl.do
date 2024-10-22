transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/UTFPR/8/logica_reconfiguravel/lab/5/lab5.vhd}
vcom -93 -work work {D:/UTFPR/8/logica_reconfiguravel/lab/5/bram.vhd}
vcom -93 -work work {D:/UTFPR/8/logica_reconfiguravel/lab/5/fifo.vhd}

