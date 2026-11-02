################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Example/User/Startup/subdir.mk
-include Example/User/CM7/subdir.mk
-include Drivers/STM32H7xx_HAL_Driver/subdir.mk
-include Drivers/CMSIS/subdir.mk
-include Drivers/BSP/STM32H745I_Nucleo/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := GPIO_EXTI_CM7
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
GPIO_EXTI_CM7.elf \

MAP_FILES += \
GPIO_EXTI_CM7.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
GPIO_EXTI_CM7.list \

OBJCOPY_HEX += \
GPIO_EXTI_CM7.hex \

OBJCOPY_BIN += \
GPIO_EXTI_CM7.bin \


# All Target
all: main-build

# Main-build Target
main-build: GPIO_EXTI_CM7.elf secondary-outputs

# Tool invocations
GPIO_EXTI_CM7.elf GPIO_EXTI_CM7.map: $(OBJS) $(USER_OBJS) /Users/Paul/Library/CloudStorage/GoogleDrive-u6056664@gcloud.utah.edu/.shortcut-targets-by-id/11We-TVQlZQDTp3SyTbSV2E-wmtb-eyGT/PCAPGRAS/Mes-Projets/2026/Toxic_Detection_PCB/doc/components/STM32H755/dev_board_nucleo/STM32Cube_FW_H7_V1.13.0/Projects/NUCLEO-H745ZI-Q/Examples/GPIO/GPIO_EXTI/STM32CubeIDE/CM7/STM32H745ZITX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "GPIO_EXTI_CM7.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m7 -T"/Users/Paul/Library/CloudStorage/GoogleDrive-u6056664@gcloud.utah.edu/.shortcut-targets-by-id/11We-TVQlZQDTp3SyTbSV2E-wmtb-eyGT/PCAPGRAS/Mes-Projets/2026/Toxic_Detection_PCB/doc/components/STM32H755/dev_board_nucleo/STM32Cube_FW_H7_V1.13.0/Projects/NUCLEO-H745ZI-Q/Examples/GPIO/GPIO_EXTI/STM32CubeIDE/CM7/STM32H745ZITX_FLASH.ld" --specs=nosys.specs -Wl,-Map="GPIO_EXTI_CM7.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

GPIO_EXTI_CM7.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "GPIO_EXTI_CM7.list"
	@echo 'Finished building: $@'
	@echo ' '

GPIO_EXTI_CM7.hex: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "GPIO_EXTI_CM7.hex"
	@echo 'Finished building: $@'
	@echo ' '

GPIO_EXTI_CM7.bin: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "GPIO_EXTI_CM7.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) GPIO_EXTI_CM7.bin GPIO_EXTI_CM7.elf GPIO_EXTI_CM7.hex GPIO_EXTI_CM7.list GPIO_EXTI_CM7.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_HEX) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
