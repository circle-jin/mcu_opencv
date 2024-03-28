# arm-none-eabi를 찾지 못할 경우 다음과 같은 ARM GCC 컴파일러 경로 지정 코드 추가

# ARM GCC 컴파일러 경로 지정
set(CMAKE_C_COMPILER arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER arm-none-eabi-g++)

set(CMAKE_C_COMPILER arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER arm-none-eabi-g++)
set(GCC_COMPILER_VERSION "" CACHE STRING "GCC Compiler version")
set(GNU_MACHINE "arm-none-eabi" CACHE STRING "GNU compiler triple")

# 자신의 아키텍처에 맞게 -march를 수정할 것!

set(CMAKE_CXX_FLAGS "-DCV_INT32_T_IS_LONG_INT -mthumb -mfloat-abi=hard -march=armv8.1-m.main+mve.fp+fp.dp" )
set(CMAKE_C_FLAGS "-DCV_INT32_T_IS_LONG_INT -mthumb -mfloat-abi=hard -march=armv8.1-m.main+mve.fp+fp.dp" )
set(CMAKE_EXE_LINKER_FLAGS "-u _printf_float -u scanf_float --specs=nosys.specs")
set(CMAKE_CXX_STANDARD 14)

# CMAKE_CURRENT_LIST_DIR는 cmake에서 지원하는 디폴트 환경 변수
# 프로젝트 경로로 꼬인다면 {CMAKE_CURRENT_LIST_DIR} 이후부터 경로를 추가하여 수정 바람!
# arm.toolchain.cmake는 이미 opencv repo에 존재함!
include("${CMAKE_CURRENT_LIST_DIR}/platforms/linux/arm.toolchain.cmake")