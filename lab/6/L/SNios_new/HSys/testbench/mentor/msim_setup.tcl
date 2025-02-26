
# (C) 2001-2024 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 13.0sp1 232 win32 2024.05.28.20:42:17

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize the variable
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
} 

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "HSys_tb"
} 

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
} 

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "C:/altera/13.0sp1/quartus/"
} 


# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/HSys_tb/simulation/submodules/HSys_cpu_rf_ram_a.dat ./
  file copy -force $QSYS_SIMDIR/HSys_tb/simulation/submodules/HSys_cpu_rf_ram_a.hex ./
  file copy -force $QSYS_SIMDIR/HSys_tb/simulation/submodules/HSys_cpu_rf_ram_a.mif ./
  file copy -force $QSYS_SIMDIR/HSys_tb/simulation/submodules/HSys_cpu_rf_ram_b.dat ./
  file copy -force $QSYS_SIMDIR/HSys_tb/simulation/submodules/HSys_cpu_rf_ram_b.hex ./
  file copy -force $QSYS_SIMDIR/HSys_tb/simulation/submodules/HSys_cpu_rf_ram_b.mif ./
  file copy -force $QSYS_SIMDIR/HSys_tb/simulation/submodules/HSys_memory.hex ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if { ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] } {
  ensure_lib                  ./libraries/altera_ver/      
  vmap       altera_ver       ./libraries/altera_ver/      
  ensure_lib                  ./libraries/lpm_ver/         
  vmap       lpm_ver          ./libraries/lpm_ver/         
  ensure_lib                  ./libraries/sgate_ver/       
  vmap       sgate_ver        ./libraries/sgate_ver/       
  ensure_lib                  ./libraries/altera_mf_ver/   
  vmap       altera_mf_ver    ./libraries/altera_mf_ver/   
  ensure_lib                  ./libraries/altera_lnsim_ver/
  vmap       altera_lnsim_ver ./libraries/altera_lnsim_ver/
  ensure_lib                  ./libraries/cycloneii_ver/   
  vmap       cycloneii_ver    ./libraries/cycloneii_ver/   
  ensure_lib                  ./libraries/altera/          
  vmap       altera           ./libraries/altera/          
  ensure_lib                  ./libraries/lpm/             
  vmap       lpm              ./libraries/lpm/             
  ensure_lib                  ./libraries/sgate/           
  vmap       sgate            ./libraries/sgate/           
  ensure_lib                  ./libraries/altera_mf/       
  vmap       altera_mf        ./libraries/altera_mf/       
  ensure_lib                  ./libraries/altera_lnsim/    
  vmap       altera_lnsim     ./libraries/altera_lnsim/    
  ensure_lib                  ./libraries/cycloneii/       
  vmap       cycloneii        ./libraries/cycloneii/       
}
ensure_lib                                                                              ./libraries/irq_mapper/                                                                  
vmap       irq_mapper                                                                   ./libraries/irq_mapper/                                                                  
ensure_lib                                                                              ./libraries/width_adapter/                                                               
vmap       width_adapter                                                                ./libraries/width_adapter/                                                               
ensure_lib                                                                              ./libraries/rsp_xbar_mux/                                                                
vmap       rsp_xbar_mux                                                                 ./libraries/rsp_xbar_mux/                                                                
ensure_lib                                                                              ./libraries/cmd_xbar_mux/                                                                
vmap       cmd_xbar_mux                                                                 ./libraries/cmd_xbar_mux/                                                                
ensure_lib                                                                              ./libraries/cmd_xbar_demux/                                                              
vmap       cmd_xbar_demux                                                               ./libraries/cmd_xbar_demux/                                                              
ensure_lib                                                                              ./libraries/rst_controller/                                                              
vmap       rst_controller                                                               ./libraries/rst_controller/                                                              
ensure_lib                                                                              ./libraries/id_router_001/                                                               
vmap       id_router_001                                                                ./libraries/id_router_001/                                                               
ensure_lib                                                                              ./libraries/id_router/                                                                   
vmap       id_router                                                                    ./libraries/id_router/                                                                   
ensure_lib                                                                              ./libraries/addr_router/                                                                 
vmap       addr_router                                                                  ./libraries/addr_router/                                                                 
ensure_lib                                                                              ./libraries/top_bram_0_avalon_slave_0_translator_avalon_universal_slave_0_agent_rsp_fifo/
vmap       top_bram_0_avalon_slave_0_translator_avalon_universal_slave_0_agent_rsp_fifo ./libraries/top_bram_0_avalon_slave_0_translator_avalon_universal_slave_0_agent_rsp_fifo/
ensure_lib                                                                              ./libraries/memory_s1_translator_avalon_universal_slave_0_agent_rsp_fifo/                
vmap       memory_s1_translator_avalon_universal_slave_0_agent_rsp_fifo                 ./libraries/memory_s1_translator_avalon_universal_slave_0_agent_rsp_fifo/                
ensure_lib                                                                              ./libraries/memory_s1_translator_avalon_universal_slave_0_agent/                         
vmap       memory_s1_translator_avalon_universal_slave_0_agent                          ./libraries/memory_s1_translator_avalon_universal_slave_0_agent/                         
ensure_lib                                                                              ./libraries/cpu_instruction_master_translator_avalon_universal_master_0_agent/           
vmap       cpu_instruction_master_translator_avalon_universal_master_0_agent            ./libraries/cpu_instruction_master_translator_avalon_universal_master_0_agent/           
ensure_lib                                                                              ./libraries/memory_s1_translator/                                                        
vmap       memory_s1_translator                                                         ./libraries/memory_s1_translator/                                                        
ensure_lib                                                                              ./libraries/cpu_instruction_master_translator/                                           
vmap       cpu_instruction_master_translator                                            ./libraries/cpu_instruction_master_translator/                                           
ensure_lib                                                                              ./libraries/top_bram_0/                                                                  
vmap       top_bram_0                                                                   ./libraries/top_bram_0/                                                                  
ensure_lib                                                                              ./libraries/cpu/                                                                         
vmap       cpu                                                                          ./libraries/cpu/                                                                         
ensure_lib                                                                              ./libraries/memory/                                                                      
vmap       memory                                                                       ./libraries/memory/                                                                      
ensure_lib                                                                              ./libraries/HSys_inst_reset_bfm/                                                         
vmap       HSys_inst_reset_bfm                                                          ./libraries/HSys_inst_reset_bfm/                                                         
ensure_lib                                                                              ./libraries/HSys_inst_clk_bfm/                                                           
vmap       HSys_inst_clk_bfm                                                            ./libraries/HSys_inst_clk_bfm/                                                           
ensure_lib                                                                              ./libraries/HSys_inst/                                                                   
vmap       HSys_inst                                                                    ./libraries/HSys_inst/                                                                   

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if { ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] } {
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"              -work altera_ver      
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                       -work lpm_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                          -work sgate_ver       
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                      -work altera_mf_ver   
    vlog -sv "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv"  -work altera_lnsim_ver
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneii_atoms.v"                -work cycloneii_ver   
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"        -work altera          
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"    -work altera          
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"       -work altera          
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"    -work altera          
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd" -work altera          
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"            -work altera          
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                      -work lpm             
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                     -work lpm             
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                   -work sgate           
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                        -work sgate           
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"         -work altera_mf       
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                    -work altera_mf       
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"      -work altera_lnsim    
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneii_atoms.vhd"              -work cycloneii       
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneii_components.vhd"         -work cycloneii       
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/HSys_irq_mapper.vho"                                                                   -work irq_mapper                                                                  
  vlog -sv "$QSYS_SIMDIR/HSys_tb/simulation/submodules/mentor/altera_merlin_width_adapter.sv"                                                 -work width_adapter                                                               
  vlog -sv "$QSYS_SIMDIR/HSys_tb/simulation/submodules/mentor/altera_merlin_address_alignment.sv"                                             -work width_adapter                                                               
  vlog -sv "$QSYS_SIMDIR/HSys_tb/simulation/submodules/mentor/altera_merlin_burst_uncompressor.sv"                                            -work width_adapter                                                               
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/HSys_rsp_xbar_mux.vho"                                                                 -work rsp_xbar_mux                                                                
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/HSys_cmd_xbar_mux.vho"                                                                 -work cmd_xbar_mux                                                                
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/HSys_cmd_xbar_demux.vho"                                                               -work cmd_xbar_demux                                                              
  vlog     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/mentor/altera_reset_controller.v"                                                      -work rst_controller                                                              
  vlog     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/mentor/altera_reset_synchronizer.v"                                                    -work rst_controller                                                              
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/HSys_id_router_001.vho"                                                                -work id_router_001                                                               
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/HSys_id_router.vho"                                                                    -work id_router                                                                   
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/HSys_addr_router.vho"                                                                  -work addr_router                                                                 
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/HSys_top_bram_0_avalon_slave_0_translator_avalon_universal_slave_0_agent_rsp_fifo.vho" -work top_bram_0_avalon_slave_0_translator_avalon_universal_slave_0_agent_rsp_fifo
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/HSys_memory_s1_translator_avalon_universal_slave_0_agent_rsp_fifo.vho"                 -work memory_s1_translator_avalon_universal_slave_0_agent_rsp_fifo                
  vlog -sv "$QSYS_SIMDIR/HSys_tb/simulation/submodules/mentor/altera_merlin_slave_agent.sv"                                                   -work memory_s1_translator_avalon_universal_slave_0_agent                         
  vlog -sv "$QSYS_SIMDIR/HSys_tb/simulation/submodules/mentor/altera_merlin_burst_uncompressor.sv"                                            -work memory_s1_translator_avalon_universal_slave_0_agent                         
  vlog -sv "$QSYS_SIMDIR/HSys_tb/simulation/submodules/mentor/altera_merlin_master_agent.sv"                                                  -work cpu_instruction_master_translator_avalon_universal_master_0_agent           
  vlog -sv "$QSYS_SIMDIR/HSys_tb/simulation/submodules/mentor/altera_merlin_slave_translator.sv"                                              -work memory_s1_translator                                                        
  vlog -sv "$QSYS_SIMDIR/HSys_tb/simulation/submodules/mentor/altera_merlin_master_translator.sv"                                             -work cpu_instruction_master_translator                                           
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/top_BRAM.vhd"                                                                          -work top_bram_0                                                                  
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/reg32.vhd"                                                                             -work top_bram_0                                                                  
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/bram.vhd"                                                                              -work top_bram_0                                                                  
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/HSys_cpu.vhd"                                                                          -work cpu                                                                         
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/HSys_cpu_test_bench.vhd"                                                               -work cpu                                                                         
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/HSys_memory.vhd"                                                                       -work memory                                                                      
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/altera_avalon_reset_source.vhd"                                                        -work HSys_inst_reset_bfm                                                         
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/altera_avalon_clock_source.vhd"                                                        -work HSys_inst_clk_bfm                                                           
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/HSys.vhd"                                                                              -work HSys_inst                                                                   
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/hsys_memory_s1_translator.vhd"                                                         -work HSys_inst                                                                   
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/hsys_top_bram_0_avalon_slave_0_translator.vhd"                                         -work HSys_inst                                                                   
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/hsys_memory_s1_translator_avalon_universal_slave_0_agent.vhd"                          -work HSys_inst                                                                   
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/hsys_top_bram_0_avalon_slave_0_translator_avalon_universal_slave_0_agent.vhd"          -work HSys_inst                                                                   
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/hsys_width_adapter.vhd"                                                                -work HSys_inst                                                                   
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/hsys_width_adapter_001.vhd"                                                            -work HSys_inst                                                                   
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/hsys_cpu_instruction_master_translator.vhd"                                            -work HSys_inst                                                                   
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/submodules/hsys_cpu_data_master_translator.vhd"                                                   -work HSys_inst                                                                   
  vcom     "$QSYS_SIMDIR/HSys_tb/simulation/HSys_tb.vhd"                                                                                                                                                                        
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  vsim -t ps -L work -L work_lib -L irq_mapper -L width_adapter -L rsp_xbar_mux -L cmd_xbar_mux -L cmd_xbar_demux -L rst_controller -L id_router_001 -L id_router -L addr_router -L top_bram_0_avalon_slave_0_translator_avalon_universal_slave_0_agent_rsp_fifo -L memory_s1_translator_avalon_universal_slave_0_agent_rsp_fifo -L memory_s1_translator_avalon_universal_slave_0_agent -L cpu_instruction_master_translator_avalon_universal_master_0_agent -L memory_s1_translator -L cpu_instruction_master_translator -L top_bram_0 -L cpu -L memory -L HSys_inst_reset_bfm -L HSys_inst_clk_bfm -L HSys_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  vsim -novopt -t ps -L work -L work_lib -L irq_mapper -L width_adapter -L rsp_xbar_mux -L cmd_xbar_mux -L cmd_xbar_demux -L rst_controller -L id_router_001 -L id_router -L addr_router -L top_bram_0_avalon_slave_0_translator_avalon_universal_slave_0_agent_rsp_fifo -L memory_s1_translator_avalon_universal_slave_0_agent_rsp_fifo -L memory_s1_translator_avalon_universal_slave_0_agent -L cpu_instruction_master_translator_avalon_universal_master_0_agent -L memory_s1_translator -L cpu_instruction_master_translator -L top_bram_0 -L cpu -L memory -L HSys_inst_reset_bfm -L HSys_inst_clk_bfm -L HSys_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
}
file_copy
h
