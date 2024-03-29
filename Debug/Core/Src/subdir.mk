################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/dma.c \
../Core/Src/fit0450.c \
../Core/Src/gpio.c \
../Core/Src/hcsr04.c \
../Core/Src/hmi.c \
../Core/Src/i2c.c \
../Core/Src/i2cdisplay.c \
../Core/Src/iv.c \
../Core/Src/main.c \
../Core/Src/sg90.c \
../Core/Src/spi.c \
../Core/Src/spiio.c \
../Core/Src/stm32f7xx_hal_msp.c \
../Core/Src/stm32f7xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f7xx.c \
../Core/Src/tim.c \
../Core/Src/usart.c 

OBJS += \
./Core/Src/dma.o \
./Core/Src/fit0450.o \
./Core/Src/gpio.o \
./Core/Src/hcsr04.o \
./Core/Src/hmi.o \
./Core/Src/i2c.o \
./Core/Src/i2cdisplay.o \
./Core/Src/iv.o \
./Core/Src/main.o \
./Core/Src/sg90.o \
./Core/Src/spi.o \
./Core/Src/spiio.o \
./Core/Src/stm32f7xx_hal_msp.o \
./Core/Src/stm32f7xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f7xx.o \
./Core/Src/tim.o \
./Core/Src/usart.o 

C_DEPS += \
./Core/Src/dma.d \
./Core/Src/fit0450.d \
./Core/Src/gpio.d \
./Core/Src/hcsr04.d \
./Core/Src/hmi.d \
./Core/Src/i2c.d \
./Core/Src/i2cdisplay.d \
./Core/Src/iv.d \
./Core/Src/main.d \
./Core/Src/sg90.d \
./Core/Src/spi.d \
./Core/Src/spiio.d \
./Core/Src/stm32f7xx_hal_msp.d \
./Core/Src/stm32f7xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f7xx.d \
./Core/Src/tim.d \
./Core/Src/usart.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/dma.d ./Core/Src/dma.o ./Core/Src/fit0450.d ./Core/Src/fit0450.o ./Core/Src/gpio.d ./Core/Src/gpio.o ./Core/Src/hcsr04.d ./Core/Src/hcsr04.o ./Core/Src/hmi.d ./Core/Src/hmi.o ./Core/Src/i2c.d ./Core/Src/i2c.o ./Core/Src/i2cdisplay.d ./Core/Src/i2cdisplay.o ./Core/Src/iv.d ./Core/Src/iv.o ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/sg90.d ./Core/Src/sg90.o ./Core/Src/spi.d ./Core/Src/spi.o ./Core/Src/spiio.d ./Core/Src/spiio.o ./Core/Src/stm32f7xx_hal_msp.d ./Core/Src/stm32f7xx_hal_msp.o ./Core/Src/stm32f7xx_it.d ./Core/Src/stm32f7xx_it.o ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/system_stm32f7xx.d ./Core/Src/system_stm32f7xx.o ./Core/Src/tim.d ./Core/Src/tim.o ./Core/Src/usart.d ./Core/Src/usart.o

.PHONY: clean-Core-2f-Src

