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
include src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/compiler_depend.make

# Include the progress variables for this target.
include src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/progress.make

# Include the compile flags for this target's objects.
include src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/flags.make

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/codegen:
.PHONY : src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/codegen

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo640aes_avx2.c.o: src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/flags.make
src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo640aes_avx2.c.o: /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo640aes_avx2.c
src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo640aes_avx2.c.o: src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo640aes_avx2.c.o"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo640aes_avx2.c.o -MF CMakeFiles/frodokem_avx2.dir/external/frodo640aes_avx2.c.o.d -o CMakeFiles/frodokem_avx2.dir/external/frodo640aes_avx2.c.o -c /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo640aes_avx2.c

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo640aes_avx2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/frodokem_avx2.dir/external/frodo640aes_avx2.c.i"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo640aes_avx2.c > CMakeFiles/frodokem_avx2.dir/external/frodo640aes_avx2.c.i

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo640aes_avx2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/frodokem_avx2.dir/external/frodo640aes_avx2.c.s"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo640aes_avx2.c -o CMakeFiles/frodokem_avx2.dir/external/frodo640aes_avx2.c.s

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo976aes_avx2.c.o: src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/flags.make
src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo976aes_avx2.c.o: /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo976aes_avx2.c
src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo976aes_avx2.c.o: src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo976aes_avx2.c.o"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo976aes_avx2.c.o -MF CMakeFiles/frodokem_avx2.dir/external/frodo976aes_avx2.c.o.d -o CMakeFiles/frodokem_avx2.dir/external/frodo976aes_avx2.c.o -c /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo976aes_avx2.c

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo976aes_avx2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/frodokem_avx2.dir/external/frodo976aes_avx2.c.i"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo976aes_avx2.c > CMakeFiles/frodokem_avx2.dir/external/frodo976aes_avx2.c.i

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo976aes_avx2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/frodokem_avx2.dir/external/frodo976aes_avx2.c.s"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo976aes_avx2.c -o CMakeFiles/frodokem_avx2.dir/external/frodo976aes_avx2.c.s

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo1344aes_avx2.c.o: src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/flags.make
src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo1344aes_avx2.c.o: /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo1344aes_avx2.c
src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo1344aes_avx2.c.o: src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo1344aes_avx2.c.o"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo1344aes_avx2.c.o -MF CMakeFiles/frodokem_avx2.dir/external/frodo1344aes_avx2.c.o.d -o CMakeFiles/frodokem_avx2.dir/external/frodo1344aes_avx2.c.o -c /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo1344aes_avx2.c

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo1344aes_avx2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/frodokem_avx2.dir/external/frodo1344aes_avx2.c.i"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo1344aes_avx2.c > CMakeFiles/frodokem_avx2.dir/external/frodo1344aes_avx2.c.i

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo1344aes_avx2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/frodokem_avx2.dir/external/frodo1344aes_avx2.c.s"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo1344aes_avx2.c -o CMakeFiles/frodokem_avx2.dir/external/frodo1344aes_avx2.c.s

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo640shake_avx2.c.o: src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/flags.make
src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo640shake_avx2.c.o: /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo640shake_avx2.c
src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo640shake_avx2.c.o: src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo640shake_avx2.c.o"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo640shake_avx2.c.o -MF CMakeFiles/frodokem_avx2.dir/external/frodo640shake_avx2.c.o.d -o CMakeFiles/frodokem_avx2.dir/external/frodo640shake_avx2.c.o -c /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo640shake_avx2.c

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo640shake_avx2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/frodokem_avx2.dir/external/frodo640shake_avx2.c.i"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo640shake_avx2.c > CMakeFiles/frodokem_avx2.dir/external/frodo640shake_avx2.c.i

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo640shake_avx2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/frodokem_avx2.dir/external/frodo640shake_avx2.c.s"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo640shake_avx2.c -o CMakeFiles/frodokem_avx2.dir/external/frodo640shake_avx2.c.s

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo976shake_avx2.c.o: src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/flags.make
src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo976shake_avx2.c.o: /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo976shake_avx2.c
src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo976shake_avx2.c.o: src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo976shake_avx2.c.o"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo976shake_avx2.c.o -MF CMakeFiles/frodokem_avx2.dir/external/frodo976shake_avx2.c.o.d -o CMakeFiles/frodokem_avx2.dir/external/frodo976shake_avx2.c.o -c /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo976shake_avx2.c

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo976shake_avx2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/frodokem_avx2.dir/external/frodo976shake_avx2.c.i"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo976shake_avx2.c > CMakeFiles/frodokem_avx2.dir/external/frodo976shake_avx2.c.i

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo976shake_avx2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/frodokem_avx2.dir/external/frodo976shake_avx2.c.s"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo976shake_avx2.c -o CMakeFiles/frodokem_avx2.dir/external/frodo976shake_avx2.c.s

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo1344shake_avx2.c.o: src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/flags.make
src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo1344shake_avx2.c.o: /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo1344shake_avx2.c
src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo1344shake_avx2.c.o: src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo1344shake_avx2.c.o"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo1344shake_avx2.c.o -MF CMakeFiles/frodokem_avx2.dir/external/frodo1344shake_avx2.c.o.d -o CMakeFiles/frodokem_avx2.dir/external/frodo1344shake_avx2.c.o -c /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo1344shake_avx2.c

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo1344shake_avx2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/frodokem_avx2.dir/external/frodo1344shake_avx2.c.i"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo1344shake_avx2.c > CMakeFiles/frodokem_avx2.dir/external/frodo1344shake_avx2.c.i

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo1344shake_avx2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/frodokem_avx2.dir/external/frodo1344shake_avx2.c.s"
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/external/frodo1344shake_avx2.c -o CMakeFiles/frodokem_avx2.dir/external/frodo1344shake_avx2.c.s

frodokem_avx2: src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo640aes_avx2.c.o
frodokem_avx2: src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo976aes_avx2.c.o
frodokem_avx2: src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo1344aes_avx2.c.o
frodokem_avx2: src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo640shake_avx2.c.o
frodokem_avx2: src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo976shake_avx2.c.o
frodokem_avx2: src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/external/frodo1344shake_avx2.c.o
frodokem_avx2: src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/build.make
.PHONY : frodokem_avx2

# Rule to build all files generated by this target.
src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/build: frodokem_avx2
.PHONY : src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/build

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/clean:
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem && $(CMAKE_COMMAND) -P CMakeFiles/frodokem_avx2.dir/cmake_clean.cmake
.PHONY : src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/clean

src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/depend:
	cd /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem /l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/kem/frodokem/CMakeFiles/frodokem_avx2.dir/depend

