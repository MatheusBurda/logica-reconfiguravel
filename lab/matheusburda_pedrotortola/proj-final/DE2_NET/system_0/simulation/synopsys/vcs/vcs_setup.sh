
# (C) 2001-2021 Altera Corporation. All rights reserved.
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

# ACDS 13.0sp1 232 win32 2021.05.21.21:52:40

# ----------------------------------------
# vcs - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="system_0"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="D:/altera/13.0sp1/quartus/"
SKIP_FILE_COPY=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"
# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/system_0_epcs_controller_boot_rom.hex ./
fi

vcs -lca -timescale=1ps/1ps -sverilog +verilog2001ext+.v -ntb_opts dtm $USER_DEFINED_ELAB_OPTIONS \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v \
  $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneii_atoms.v \
  $QSYS_SIMDIR/submodules/system_0_SD_CLK.v \
  $QSYS_SIMDIR/submodules/system_0_SD_DAT.v \
  $QSYS_SIMDIR/submodules/system_0_switch_pio.v \
  $QSYS_SIMDIR/submodules/system_0_button_pio.v \
  $QSYS_SIMDIR/submodules/system_0_led_green.v \
  $QSYS_SIMDIR/submodules/system_0_led_red.v \
  $QSYS_SIMDIR/submodules/system_0_lcd_16207_0.v \
  $QSYS_SIMDIR/submodules/system_0_timer_0.v \
  $QSYS_SIMDIR/submodules/system_0_uart_0.v \
  $QSYS_SIMDIR/submodules/system_0_jtag_uart_0.v \
  $QSYS_SIMDIR/submodules/system_0_epcs_controller.v \
  $QSYS_SIMDIR/submodules/system_0_sdram_0.v \
  $QSYS_SIMDIR/submodules/system_0_sdram_0_test_component.v \
  $QSYS_SIMDIR/system_0.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $USER_DEFINED_SIM_OPTIONS
fi
