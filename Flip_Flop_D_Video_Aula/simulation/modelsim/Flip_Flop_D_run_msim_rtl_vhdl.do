transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/clayt/Desktop/Novo/Flip_Flop_D/Flip_Flop_D.vhd}
vcom -93 -work work {C:/Users/clayt/Desktop/Novo/Flip_Flop_D/Flip_Flop_D_Em_Serie_VideoAula.vhd}

