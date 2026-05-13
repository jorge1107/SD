onerror {quit -f}
vlib work
vlog -work work MarcaPasso.vo
vlog -work work MarcaPasso.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MarcaPasso_vlg_vec_tst
vcd file -direction MarcaPasso.msim.vcd
vcd add -internal MarcaPasso_vlg_vec_tst/*
vcd add -internal MarcaPasso_vlg_vec_tst/i1/*
add wave /*
run -all
