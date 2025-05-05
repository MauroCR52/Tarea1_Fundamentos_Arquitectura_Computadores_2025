transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Tarea1 {D:/Tarea1/combinatorio.sv}
vlog -sv -work work +incdir+D:/Tarea1 {D:/Tarea1/sumador.sv}
vlog -sv -work work +incdir+D:/Tarea1 {D:/Tarea1/xor_gate.sv}
vlog -sv -work work +incdir+D:/Tarea1 {D:/Tarea1/and_gate.sv}
vlog -sv -work work +incdir+D:/Tarea1 {D:/Tarea1/nand_gate.sv}
vlog -sv -work work +incdir+D:/Tarea1 {D:/Tarea1/display_2bit.sv}
vlog -sv -work work +incdir+D:/Tarea1 {D:/Tarea1/not_gate.sv}
vlog -sv -work work +incdir+D:/Tarea1 {D:/Tarea1/or_gate.sv}
vlog -sv -work work +incdir+D:/Tarea1 {D:/Tarea1/d_flip_flop.sv}
vlog -sv -work work +incdir+D:/Tarea1 {D:/Tarea1/flip_flop2b.sv}
vlog -sv -work work +incdir+D:/Tarea1 {D:/Tarea1/circuito_top.sv}
vlog -sv -work work +incdir+D:/Tarea1 {D:/Tarea1/circuito_top_tb.sv}

vlog -sv -work work +incdir+D:/Tarea1 {D:/Tarea1/circuito_top_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  circuito_top_tb

add wave *
view structure
view signals
run -all
