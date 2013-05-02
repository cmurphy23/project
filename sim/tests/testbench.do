set MODULE testbench
start $MODULE
add wave $MODULE/*
add wave $MODULE/example/*
add wave $MODULE/Abuf/*
add wave $MODULE/Wgen/*
add wave $MODULE/Abuf/RAM/*
add wave $MODULE/Wgen/RAM2/*

run 50000us
