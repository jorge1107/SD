onerror {quit -f}
vlib work
vlog -work work MuxComportamental.vo
vlog -work work MuxComportamental.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MuxComportamental_vlg_vec_tst
vcd file -direction MuxComportamental.msim.vcd
vcd add -internal MuxComportamental_vlg_vec_tst/*
vcd add -internal MuxComportamental_vlg_vec_tst/i1/*
add wave /*
run -all
