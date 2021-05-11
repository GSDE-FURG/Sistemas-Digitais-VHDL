transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/clayt/Desktop/Sistemas Digitais/Sistemas-Digitais-VHDL/Portas Logicas/Portas_Logicas.vhd}
vcom -93 -work work {C:/Users/clayt/Desktop/Sistemas Digitais/Sistemas-Digitais-VHDL/Portas Logicas/Porta_Nand.vhd}
vcom -93 -work work {C:/Users/clayt/Desktop/Sistemas Digitais/Sistemas-Digitais-VHDL/Portas Logicas/Porta_And.vhd}
vcom -93 -work work {C:/Users/clayt/Desktop/Sistemas Digitais/Sistemas-Digitais-VHDL/Portas Logicas/Porta_OR.vhd}

