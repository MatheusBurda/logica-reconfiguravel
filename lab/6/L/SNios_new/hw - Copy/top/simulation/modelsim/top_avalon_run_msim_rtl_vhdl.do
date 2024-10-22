transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/SNios_new/hw/reg32/reg32.vhd}
vcom -93 -work work {E:/SNios_new/hw/cont8/cont8.vhd}
vcom -93 -work work {E:/SNios_new/hw/top_avalon/top_avalon.vhd}

