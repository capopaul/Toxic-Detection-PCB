################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/Paul/Library/CloudStorage/GoogleDrive-u6056664@gcloud.utah.edu/.shortcut-targets-by-id/11We-TVQlZQDTp3SyTbSV2E-wmtb-eyGT/PCAPGRAS/Mes-Projets/2026/Toxic_Detection_PCB/doc/components/STM32H755/dev_board_nucleo/STM32Cube_FW_H7_V1.13.0/Projects/NUCLEO-H745ZI-Q/Examples/GPIO/GPIO_EXTI/CM4/Src/main.c \
/Users/Paul/Library/CloudStorage/GoogleDrive-u6056664@gcloud.utah.edu/.shortcut-targets-by-id/11We-TVQlZQDTp3SyTbSV2E-wmtb-eyGT/PCAPGRAS/Mes-Projets/2026/Toxic_Detection_PCB/doc/components/STM32H755/dev_board_nucleo/STM32Cube_FW_H7_V1.13.0/Projects/NUCLEO-H745ZI-Q/Examples/GPIO/GPIO_EXTI/CM4/Src/stm32h7xx_it.c \
../Example/User/CM4/syscalls.c \
../Example/User/CM4/sysmem.c 

OBJS += \
./Example/User/CM4/main.o \
./Example/User/CM4/stm32h7xx_it.o \
./Example/User/CM4/syscalls.o \
./Example/User/CM4/sysmem.o 

C_DEPS += \
./Example/User/CM4/main.d \
./Example/User/CM4/stm32h7xx_it.d \
./Example/User/CM4/syscalls.d \
./Example/User/CM4/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Example/User/CM4/main.o: /Users/Paul/Library/CloudStorage/GoogleDrive-u6056664@gcloud.utah.edu/.shortcut-targets-by-id/11We-TVQlZQDTp3SyTbSV2E-wmtb-eyGT/PCAPGRAS/Mes-Projets/2026/Toxic_Detection_PCB/doc/components/STM32H755/dev_board_nucleo/STM32Cube_FW_H7_V1.13.0/Projects/NUCLEO-H745ZI-Q/Examples/GPIO/GPIO_EXTI/CM4/Src/main.c Example/User/CM4/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32H745xx -DCORE_CM4 -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DUSE_STM32H7XX_NUCLEO_144_MB1363 -c -I../../../Common/Inc -I../../../CM4/Inc -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/STM32H7xx_Nucleo -I../../../../../../../../Utilities/Fonts -I../../../../../../../../Utilities/CPU -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Example/User/CM4/main.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/CM4/stm32h7xx_it.o: /Users/Paul/Library/CloudStorage/GoogleDrive-u6056664@gcloud.utah.edu/.shortcut-targets-by-id/11We-TVQlZQDTp3SyTbSV2E-wmtb-eyGT/PCAPGRAS/Mes-Projets/2026/Toxic_Detection_PCB/doc/components/STM32H755/dev_board_nucleo/STM32Cube_FW_H7_V1.13.0/Projects/NUCLEO-H745ZI-Q/Examples/GPIO/GPIO_EXTI/CM4/Src/stm32h7xx_it.c Example/User/CM4/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32H745xx -DCORE_CM4 -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DUSE_STM32H7XX_NUCLEO_144_MB1363 -c -I../../../Common/Inc -I../../../CM4/Inc -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/STM32H7xx_Nucleo -I../../../../../../../../Utilities/Fonts -I../../../../../../../../Utilities/CPU -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Example/User/CM4/stm32h7xx_it.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/CM4/%.o Example/User/CM4/%.su Example/User/CM4/%.cyclo: ../Example/User/CM4/%.c Example/User/CM4/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32H745xx -DCORE_CM4 -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DUSE_STM32H7XX_NUCLEO_144_MB1363 -c -I../../../Common/Inc -I../../../CM4/Inc -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/STM32H7xx_Nucleo -I../../../../../../../../Utilities/Fonts -I../../../../../../../../Utilities/CPU -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Example-2f-User-2f-CM4

clean-Example-2f-User-2f-CM4:
	-$(RM) ./Example/User/CM4/main.cyclo ./Example/User/CM4/main.d ./Example/User/CM4/main.o ./Example/User/CM4/main.su ./Example/User/CM4/stm32h7xx_it.cyclo ./Example/User/CM4/stm32h7xx_it.d ./Example/User/CM4/stm32h7xx_it.o ./Example/User/CM4/stm32h7xx_it.su ./Example/User/CM4/syscalls.cyclo ./Example/User/CM4/syscalls.d ./Example/User/CM4/syscalls.o ./Example/User/CM4/syscalls.su ./Example/User/CM4/sysmem.cyclo ./Example/User/CM4/sysmem.d ./Example/User/CM4/sysmem.o ./Example/User/CM4/sysmem.su

.PHONY: clean-Example-2f-User-2f-CM4

