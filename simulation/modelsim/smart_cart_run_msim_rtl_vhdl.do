transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/projeto/somador.vhd}
vcom -93 -work work {C:/projeto/subtrator.vhd}
vcom -93 -work work {C:/projeto/mux_4_1.vhd}
vcom -93 -work work {C:/projeto/total_itens_reg.vhd}
vcom -93 -work work {C:/projeto/total_reg.vhd}
vcom -93 -work work {C:/projeto/incrementador.vhd}
vcom -93 -work work {C:/projeto/decrementador.vhd}
vcom -93 -work work {C:/projeto/comparador_itens.vhd}
vcom -93 -work work {C:/projeto/comparador_saldo.vhd}
vcom -93 -work work {C:/projeto/DataPath.vhd}
vcom -93 -work work {C:/projeto/Controladora.vhd}
vcom -93 -work work {C:/projeto/smart_cart.vhd}

vcom -93 -work work {C:/projeto/tb_smart_cart.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_smart_cart

add wave *
view structure
view signals
run 600 ns
