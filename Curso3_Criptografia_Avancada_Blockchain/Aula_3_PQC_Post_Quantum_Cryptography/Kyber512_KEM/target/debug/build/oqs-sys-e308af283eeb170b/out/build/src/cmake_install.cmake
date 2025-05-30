# Install script for directory: /l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/liboqs" TYPE FILE FILES
    "/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/liboqsConfig.cmake"
    "/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/liboqsConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/lib/liboqs.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/liboqs/liboqsTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/liboqs/liboqsTargets.cmake"
         "/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/CMakeFiles/Export/c7e97583fbc7c9ca02085e7795e05761/liboqsTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/liboqs/liboqsTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/liboqs/liboqsTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/liboqs" TYPE FILE FILES "/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/CMakeFiles/Export/c7e97583fbc7c9ca02085e7795e05761/liboqsTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/liboqs" TYPE FILE FILES "/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/CMakeFiles/Export/c7e97583fbc7c9ca02085e7795e05761/liboqsTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/oqs" TYPE FILE FILES
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/oqs.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/common/common.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/common/rand/rand.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/common/aes/aes.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/common/sha2/sha2.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/common/sha3/sha3.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/common/sha3/sha3x4.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kem.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/sig/sig.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/bike/kem_bike.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/frodokem/kem_frodokem.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/sig/picnic/sig_picnic.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/classic_mceliece/kem_classic_mceliece.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/hqc/kem_hqc.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/kyber/kem_kyber.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/ntru/kem_ntru.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/ntruprime/kem_ntruprime.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/kem/saber/kem_saber.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/sig/dilithium/sig_dilithium.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/sig/falcon/sig_falcon.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/sig/rainbow/sig_rainbow.h"
    "/l/disk0/viniciusd/.cargo/registry/src/index.crates.io-6f17d22bba15001f/oqs-sys-0.7.2/liboqs/src/sig/sphincs/sig_sphincs.h"
    "/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/include/oqs/oqsconfig.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/common/cmake_install.cmake")
  include("/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/bike/cmake_install.cmake")
  include("/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/frodokem/cmake_install.cmake")
  include("/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/sig/picnic/cmake_install.cmake")
  include("/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/classic_mceliece/cmake_install.cmake")
  include("/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/hqc/cmake_install.cmake")
  include("/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/kyber/cmake_install.cmake")
  include("/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/ntru/cmake_install.cmake")
  include("/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/ntruprime/cmake_install.cmake")
  include("/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/kem/saber/cmake_install.cmake")
  include("/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/sig/dilithium/cmake_install.cmake")
  include("/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/sig/falcon/cmake_install.cmake")
  include("/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/sig/rainbow/cmake_install.cmake")
  include("/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/sig/sphincs/cmake_install.cmake")

endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/l/disk0/viniciusd/Projetos/Residencia_tecnologica/ResidenciaTech_PUC-PR/Curso3_Criptografia_Avancada_Blockchain/Aula_3_PQC_Post_Quantum_Cryptography/target/debug/build/oqs-sys-e308af283eeb170b/out/build/src/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
