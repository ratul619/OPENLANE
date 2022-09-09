# Design
set ::env(DESIGN_NAME) "RRAM_CONTROLLER"

set ::env(PDK) {sky130B}
set ::env(VERILOG_FILES) [glob  ./designs/RRAM_CONTROLLER/src/top_0709.v]

set ::env(CLOCK_PERIOD) "10.000"
set ::env(CLOCK_PORT) "clk"
set ::env(CELL_PAD) 4


set ::env(EXTRA_LIBS) "./designs/RRAM_CONTROLLER/RRAM_ANALOG.lib ./designs/RRAM_CONTROLLER/sync_fifo_16x16.lib ./designs/RRAM_CONTROLLER/sync_fifo_32x64.lib"

set ::env(EXTRA_LEFS) { ./designs/RRAM_CONTROLLER/RRAM_ANALOG.lef ./designs/RRAM_CONTROLLER/sync_fifo_16x16.lef ./designs/RRAM_CONTROLLER/sync_fifo_32x64.lef}

set ::env(DIE_AREA) {0.0 0.0 2500 2500  }

set ::env(PL_TARGET_DENSITY) {0.20}
set ::env(FP_SIZING) "absolute"

#set ::env(TAP_DECAP_INSERTION) {0}

#set ::env(FILL_INSERTION) {0}
#set ::env(QUIT_ON_TR_DRC) {0}

#set ::env(FP_PDN_ENABLE_MACROS_GRID) {0}


#set ::env(ROUTING_OPT_ITERS) {10}
set ::env(EXTRA_GDS_FILES)  {./designs/RRAM_CONTROLLER/RRAM_ANALOG.GDS ./designs/RRAM_CONTROLLER/sync_fifo_16x16.magic.gds ./designs/RRAM_CONTROLLER/sync_fifo_32x64.magic.gds} 


#set ::env(FP_PIN_ORDER_CFG) $::env(OPENLANE_ROOT)/designs/rram_wrapper_16x16/pin_order.cfg

set ::env(MACRO_PLACEMENT_CFG) [glob $::env(DESIGN_DIR)/macro.cfg]

set ::env(SYNTH_BUFFERING) {0}

set ::env(SYNTH_NO_FLAT) {1}

set ::env(PL_BASIC_PLACEMENT) {1}
#set ::env(TAP_DECAP_INSERTION) {0}
#set ::env(FP_PDN_CHECK_NODES) 0

set ::env(FP_PDN_ENABLE_MACROS_GRID) {1}

set ::env(FP_PDN_MACRO_HOOKS) "sync_fifo_16x16 VPWR VGND VPWR VGND,sync_fifo_32x64 VPWR VGND VPWR VGND"
set ::env(VDD_PIN) {VPWR vdd}
set ::env(GND_PIN) {VGND gnd}

set filename ./designs/$::env(DESIGN_NAME)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}

set ::env(DESIGN_IS_CORE) 0


