# This file allows users to call find_package(LLD) and pick up our targets.



find_package(LLVM REQUIRED CONFIG
             HINTS "/root/ndk/out/stage2/lib64/cmake/llvm")

set(LLD_EXPORTED_TARGETS "lldCommon;lldCore;lldDriver;lldMachO;lldYAML;lldReaderWriter;lld;lldCOFF;lldELF;lldMachO2;lldMinGW;lldWasm")
set(LLD_CMAKE_DIR "/root/ndk/out/stage2/lib64/cmake/lld")
set(LLD_INCLUDE_DIRS "/root/ndk/out/llvm-project/lld/include;/root/ndk/out/stage2/tools/lld/include")

# Provide all our library targets to users.
include("/root/ndk/out/stage2/lib64/cmake/lld/LLDTargets.cmake")
