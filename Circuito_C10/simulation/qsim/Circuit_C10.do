onerror {exit -code 1}
vlib work
vcom -work work Circuit_C10.vho
vcom -work work Waveform1.vwf.vht
vsim -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Circuit_C10_vhd_vec_tst
vcd file -direction Circuit_C10.msim.vcd
vcd add -internal Circuit_C10_vhd_vec_tst/*
vcd add -internal Circuit_C10_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f


