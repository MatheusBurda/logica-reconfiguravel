transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/UTFPR/8/logica_reconfiguravel/lab/4/CountOnesSum.vhd}
vcom -93 -work work {D:/UTFPR/8/logica_reconfiguravel/lab/4/lab4.vhd}
vcom -93 -work work {D:/UTFPR/8/logica_reconfiguravel/lab/4/CountOnesFor.vhd}
vcom -93 -work work {D:/UTFPR/8/logica_reconfiguravel/lab/4/CountOnesWhile.vhd}
vcom -93 -work work {D:/UTFPR/8/logica_reconfiguravel/lab/4/CountOnesCaseWhen.vhd}
vcom -93 -work work {D:/UTFPR/8/logica_reconfiguravel/lab/4/CountOnesIf.vhd}

