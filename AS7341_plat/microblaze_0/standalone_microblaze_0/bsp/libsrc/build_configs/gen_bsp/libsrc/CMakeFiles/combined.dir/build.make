# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = C:/Xilinx/Vitis/2023.2/tps/win64/cmake-3.24.2/bin/cmake.exe

# The command to remove a file.
RM = C:/Xilinx/Vitis/2023.2/tps/win64/cmake-3.24.2/bin/cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp

# Utility rule file for combined.

# Include any custom commands dependencies for this target.
include libsrc/CMakeFiles/combined.dir/compiler_depend.make

# Include the progress variables for this target.
include libsrc/CMakeFiles/combined.dir/progress.make

libsrc/CMakeFiles/combined: libsrc/gpio/src/libgpio.a
libsrc/CMakeFiles/combined: libsrc/iic/src/libiic.a
libsrc/CMakeFiles/combined: libsrc/spi/src/libspi.a
libsrc/CMakeFiles/combined: libsrc/uartlite/src/libuartlite.a
	mb-ar -qcs C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libxil.a C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_extra.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_g.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_intr.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_selftest.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_sinit.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/iic/src/CMakeFiles/iic.dir/xiic.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/iic/src/CMakeFiles/iic.dir/xiic_dyn_master.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/iic/src/CMakeFiles/iic.dir/xiic_g.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/iic/src/CMakeFiles/iic.dir/xiic_intr.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/iic/src/CMakeFiles/iic.dir/xiic_l.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/iic/src/CMakeFiles/iic.dir/xiic_master.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/iic/src/CMakeFiles/iic.dir/xiic_multi_master.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/iic/src/CMakeFiles/iic.dir/xiic_options.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/iic/src/CMakeFiles/iic.dir/xiic_selftest.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/iic/src/CMakeFiles/iic.dir/xiic_sinit.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/iic/src/CMakeFiles/iic.dir/xiic_slave.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/iic/src/CMakeFiles/iic.dir/xiic_stats.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/spi/src/CMakeFiles/spi.dir/xspi.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/spi/src/CMakeFiles/spi.dir/xspi_g.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/spi/src/CMakeFiles/spi.dir/xspi_options.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/spi/src/CMakeFiles/spi.dir/xspi_selftest.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/spi/src/CMakeFiles/spi.dir/xspi_sinit.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/spi/src/CMakeFiles/spi.dir/xspi_stats.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/uartlite/src/CMakeFiles/uartlite.dir/xuartlite.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/uartlite/src/CMakeFiles/uartlite.dir/xuartlite_g.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/uartlite/src/CMakeFiles/uartlite.dir/xuartlite_intr.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/uartlite/src/CMakeFiles/uartlite.dir/xuartlite_l.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/uartlite/src/CMakeFiles/uartlite.dir/xuartlite_selftest.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/uartlite/src/CMakeFiles/uartlite.dir/xuartlite_sinit.c.obj C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/uartlite/src/CMakeFiles/uartlite.dir/xuartlite_stats.c.obj
	C:/Xilinx/Vitis/2023.2/tps/win64/cmake-3.24.2/bin/cmake.exe -E copy C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libxil.a C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/lib

combined: libsrc/CMakeFiles/combined
combined: libsrc/CMakeFiles/combined.dir/build.make
.PHONY : combined

# Rule to build all files generated by this target.
libsrc/CMakeFiles/combined.dir/build: combined
.PHONY : libsrc/CMakeFiles/combined.dir/build

libsrc/CMakeFiles/combined.dir/clean:
	cd C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc && $(CMAKE_COMMAND) -P CMakeFiles/combined.dir/cmake_clean.cmake
.PHONY : libsrc/CMakeFiles/combined.dir/clean

libsrc/CMakeFiles/combined.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc C:/Users/cloud/OneDrive/_Arty_Spartan_7/Projects/AS7341-ARTYS7-50-I2C-MAIN/AS7341_plat/microblaze_0/standalone_microblaze_0/bsp/libsrc/build_configs/gen_bsp/libsrc/CMakeFiles/combined.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libsrc/CMakeFiles/combined.dir/depend

