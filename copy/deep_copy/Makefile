all:
	rm -rf work
	clear
	vlib work;
	vlog -sv deep_copy.sv && vsim shallow -l deep_copy.log -c -do "run -all;quit;"

compile:
	vlib work;
	vlog -sv shallow_copy.sv

simulate:
	vsim sample -l deep_copy.log -c -do "run -all;quit;"

clear:
	rm -rf work
	clear

