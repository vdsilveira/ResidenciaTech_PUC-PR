# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 4.0

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build

# Include any dependencies generated for this target.
include src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/compiler_depend.make

# Include the progress variables for this target.
include src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/progress.make

# Include the compile flags for this target's objects.
include src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/flags.make

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/codegen:
.PHONY : src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/codegen

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/kem_kyber_512_90s.c.o: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/flags.make
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/kem_kyber_512_90s.c.o: /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/kem_kyber_512_90s.c
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/kem_kyber_512_90s.c.o: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/kem_kyber_512_90s.c.o"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/kem_kyber_512_90s.c.o -MF CMakeFiles/kyber_512_90s_ref.dir/kem_kyber_512_90s.c.o.d -o CMakeFiles/kyber_512_90s_ref.dir/kem_kyber_512_90s.c.o -c /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/kem_kyber_512_90s.c

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/kem_kyber_512_90s.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/kyber_512_90s_ref.dir/kem_kyber_512_90s.c.i"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/kem_kyber_512_90s.c > CMakeFiles/kyber_512_90s_ref.dir/kem_kyber_512_90s.c.i

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/kem_kyber_512_90s.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/kyber_512_90s_ref.dir/kem_kyber_512_90s.c.s"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/kem_kyber_512_90s.c -o CMakeFiles/kyber_512_90s_ref.dir/kem_kyber_512_90s.c.s

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/cbd.c.o: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/flags.make
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/cbd.c.o: /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/cbd.c
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/cbd.c.o: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/cbd.c.o"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/cbd.c.o -MF CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/cbd.c.o.d -o CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/cbd.c.o -c /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/cbd.c

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/cbd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/cbd.c.i"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/cbd.c > CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/cbd.c.i

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/cbd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/cbd.c.s"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/cbd.c -o CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/cbd.c.s

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/indcpa.c.o: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/flags.make
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/indcpa.c.o: /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/indcpa.c
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/indcpa.c.o: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/indcpa.c.o"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/indcpa.c.o -MF CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/indcpa.c.o.d -o CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/indcpa.c.o -c /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/indcpa.c

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/indcpa.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/indcpa.c.i"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/indcpa.c > CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/indcpa.c.i

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/indcpa.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/indcpa.c.s"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/indcpa.c -o CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/indcpa.c.s

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/kem.c.o: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/flags.make
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/kem.c.o: /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/kem.c
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/kem.c.o: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/kem.c.o"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/kem.c.o -MF CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/kem.c.o.d -o CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/kem.c.o -c /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/kem.c

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/kem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/kem.c.i"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/kem.c > CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/kem.c.i

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/kem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/kem.c.s"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/kem.c -o CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/kem.c.s

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/ntt.c.o: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/flags.make
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/ntt.c.o: /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/ntt.c
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/ntt.c.o: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/ntt.c.o"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/ntt.c.o -MF CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/ntt.c.o.d -o CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/ntt.c.o -c /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/ntt.c

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/ntt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/ntt.c.i"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/ntt.c > CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/ntt.c.i

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/ntt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/ntt.c.s"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/ntt.c -o CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/ntt.c.s

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/poly.c.o: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/flags.make
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/poly.c.o: /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/poly.c
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/poly.c.o: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/poly.c.o"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/poly.c.o -MF CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/poly.c.o.d -o CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/poly.c.o -c /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/poly.c

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/poly.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/poly.c.i"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/poly.c > CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/poly.c.i

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/poly.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/poly.c.s"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/poly.c -o CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/poly.c.s

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/polyvec.c.o: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/flags.make
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/polyvec.c.o: /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/polyvec.c
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/polyvec.c.o: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/polyvec.c.o"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/polyvec.c.o -MF CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/polyvec.c.o.d -o CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/polyvec.c.o -c /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/polyvec.c

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/polyvec.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/polyvec.c.i"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/polyvec.c > CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/polyvec.c.i

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/polyvec.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/polyvec.c.s"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/polyvec.c -o CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/polyvec.c.s

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/reduce.c.o: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/flags.make
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/reduce.c.o: /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/reduce.c
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/reduce.c.o: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/reduce.c.o"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/reduce.c.o -MF CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/reduce.c.o.d -o CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/reduce.c.o -c /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/reduce.c

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/reduce.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/reduce.c.i"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/reduce.c > CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/reduce.c.i

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/reduce.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/reduce.c.s"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/reduce.c -o CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/reduce.c.s

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/symmetric-aes.c.o: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/flags.make
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/symmetric-aes.c.o: /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/symmetric-aes.c
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/symmetric-aes.c.o: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/symmetric-aes.c.o"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/symmetric-aes.c.o -MF CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/symmetric-aes.c.o.d -o CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/symmetric-aes.c.o -c /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/symmetric-aes.c

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/symmetric-aes.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/symmetric-aes.c.i"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/symmetric-aes.c > CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/symmetric-aes.c.i

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/symmetric-aes.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/symmetric-aes.c.s"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/symmetric-aes.c -o CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/symmetric-aes.c.s

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/verify.c.o: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/flags.make
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/verify.c.o: /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/verify.c
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/verify.c.o: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/verify.c.o"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/verify.c.o -MF CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/verify.c.o.d -o CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/verify.c.o -c /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/verify.c

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/verify.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/verify.c.i"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/verify.c > CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/verify.c.i

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/verify.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/verify.c.s"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/pqcrystals-kyber_kyber512-90s_ref/verify.c -o CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/verify.c.s

kyber_512_90s_ref: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/kem_kyber_512_90s.c.o
kyber_512_90s_ref: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/cbd.c.o
kyber_512_90s_ref: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/indcpa.c.o
kyber_512_90s_ref: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/kem.c.o
kyber_512_90s_ref: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/ntt.c.o
kyber_512_90s_ref: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/poly.c.o
kyber_512_90s_ref: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/polyvec.c.o
kyber_512_90s_ref: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/reduce.c.o
kyber_512_90s_ref: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/symmetric-aes.c.o
kyber_512_90s_ref: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/pqcrystals-kyber_kyber512-90s_ref/verify.c.o
kyber_512_90s_ref: src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/build.make
.PHONY : kyber_512_90s_ref

# Rule to build all files generated by this target.
src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/build: kyber_512_90s_ref
.PHONY : src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/build

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/clean:
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber && $(CMAKE_COMMAND) -P CMakeFiles/kyber_512_90s_ref.dir/cmake_clean.cmake
.PHONY : src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/clean

src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/depend:
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/kem/kyber/CMakeFiles/kyber_512_90s_ref.dir/depend

