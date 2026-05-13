onerror {quit -f}
vlib work
vlog -work work MarcaPassoComportamental.vo
vlog -work work MarcaPassoComportamental.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MarcaPassoComportamental_vlg_vec_tst
vcd file -direction MarcaPassoComportamental.msim.vcd
vcd add -internal MarcaPassoComportamental_vlg_vec_tst/*
vcd add -internal MarcaPassoComportamental_vlg_vec_tst/i1/*
add wave /*
run -all
