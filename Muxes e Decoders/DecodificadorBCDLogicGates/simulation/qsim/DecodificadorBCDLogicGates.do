onerror {quit -f}
vlib work
vlog -work work DecodificadorBCDLogicGates.vo
vlog -work work DecodificadorBCDLogicGates.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DecodificadorBCDLogicGates_vlg_vec_tst
vcd file -direction DecodificadorBCDLogicGates.msim.vcd
vcd add -internal DecodificadorBCDLogicGates_vlg_vec_tst/*
vcd add -internal DecodificadorBCDLogicGates_vlg_vec_tst/i1/*
add wave /*
run -all
