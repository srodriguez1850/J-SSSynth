transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Sebastian/Documents/GitHub/JSInth/typeDeclarations.vhd}
vcom -93 -work work {C:/Users/Sebastian/Documents/GitHub/JSInth/FIFO.vhd}
vcom -93 -work work {C:/Users/Sebastian/Documents/GitHub/JSInth/FSM_synth.vhd}
vcom -93 -work work {C:/Users/Sebastian/Documents/GitHub/JSInth/constants.vhd}
vcom -93 -work work {C:/Users/Sebastian/Documents/GitHub/JSInth/SampleAdder16.vhd}
vcom -93 -work work {C:/Users/Sebastian/Documents/GitHub/JSInth/WM8731_Controller.vhd}
vcom -93 -work work {C:/Users/Sebastian/Documents/GitHub/JSInth/VGA_top_level.vhd}
vcom -93 -work work {C:/Users/Sebastian/Documents/GitHub/JSInth/vga_sync.vhd}
vcom -93 -work work {C:/Users/Sebastian/Documents/GitHub/JSInth/pixelGenerator.vhd}
vcom -93 -work work {C:/Users/Sebastian/Documents/GitHub/JSInth/colorROM.vhd}
vcom -93 -work work {C:/Users/Sebastian/Documents/GitHub/JSInth/FSM_volume.vhd}
vcom -93 -work work {C:/Users/Sebastian/Documents/GitHub/JSInth/FSM_octave.vhd}
vcom -93 -work work {C:/Users/Sebastian/Documents/GitHub/JSInth/audioROM.vhd}
vcom -93 -work work {C:/Users/Sebastian/Documents/GitHub/JSInth/JSInth.vhd}
vcom -93 -work work {C:/Users/Sebastian/Documents/GitHub/JSInth/SampleContainer.vhd}

