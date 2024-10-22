transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/joaor/Documents/UTPR-2024.1/Lógica Reconfigurável/cronometro/logica reconfiguravel/logica reconfiguravel/cont60.vhd}
vcom -93 -work work {C:/Users/joaor/Documents/UTPR-2024.1/Lógica Reconfigurável/cronometro/logica reconfiguravel/logica reconfiguravel/cont100.vhd}
vcom -93 -work work {C:/Users/joaor/Documents/UTPR-2024.1/Lógica Reconfigurável/cronometro/logica reconfiguravel/logica reconfiguravel/cronometro.vhd}
vcom -93 -work work {C:/Users/joaor/Documents/UTPR-2024.1/Lógica Reconfigurável/cronometro/logica reconfiguravel/logica reconfiguravel/decoder7seg.vhd}
vcom -93 -work work {C:/Users/joaor/Documents/UTPR-2024.1/Lógica Reconfigurável/cronometro/logica reconfiguravel/logica reconfiguravel/divisor.vhd}
vcom -93 -work work {C:/Users/joaor/Documents/UTPR-2024.1/Lógica Reconfigurável/cronometro/logica reconfiguravel/logica reconfiguravel/cont16.vhd}

