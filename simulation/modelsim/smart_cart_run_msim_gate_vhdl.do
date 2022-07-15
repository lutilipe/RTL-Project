transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {smart_cart.vho}

vcom -93 -work work {C:/projeto/tb_Controladora.vhd}

vsim -t 1ps -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  tb_Controladora

add wave *
view structure
view signals
run 200 ns
