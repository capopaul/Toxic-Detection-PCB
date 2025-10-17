# Toxic-Detection-PCB - Product Brief

## Revision

| Revision | Date | Author | Comment |
|----------|------|--------|---------|
| 0.1.     | Oct 16 | Paul Capgras | First draft |

## 1. Motivations

This project aims to design a new PCB board to interface with 2 sets of 4 chemical sensors used to detect toxic gases in the air.

The previous electronic interface used to transmit the data measured by the sensors up to a cloud database was the TELLUS Network Sensor Solutions revision 3.2.
This solution is now limited because it only provides one interface for the AFE of the sensor - supporting therefore only 4 sensors instead of 8.
The current workaround was to use to 2 TELLUS card instead of 1 and to connect them in a controler/target architecture.

In parallel, first AI models were developped and pushed on an STM32 to do realt time detection of toxic gases. These algorithms were tested on an STM32 development board but can not be embedded in the current TELLUS card because the only MCU available - an esp32 - is not powerfull enough to run this new software.

A new revision of the Tellus card is therefore required with the two main goals:

- to support 2 sets of 4 chemical sensors by providing two interfaces.
- to support a computing chip powerfull enough to support this new software requirements

## 2. Functional Description

The device will be used to interface with 2 set of 4 chemical sensors and a temperature sensor.
Every 10s, a measure of the 8 sensors is performed.
Every minute, a wifi communication is performed to push its data to the cloud - mode of operation 1 - or to a computer connected to the local wifi - mode of operation 2.

Data treatment can also be enabled and performed on the chip before transmitting the data to the external world using wifi.

The device will be powered through an USB-C connector. The external power supply can be a transformer or a battery. This external power is out of the scope of this project.

The device will contain a computing chip, powerfull enough to run small AI models. The AI algorithms will be designed to operate on a STM32H755.

The device can be reprogrammed as many times as user want.

The device will provide power for a ventilator.

The device might provide a Lora connexion.

## 3. Electrical specifications

- Input power : 5V through an USB-C connector.
- Maximum power consumption : Not defined.

## 4. Mechanical and form factor

- Board dimensions: Must fit in the box.
- Mouting holes : Yes, 4, predefined sizes : no.
- Connector placement contraints : None.
- Other mechanical constraints : No.

## 5. Interface & Connectivity

- 2 interfaces for AFE 4-sensors
- 1 interface for powering a vent
- 1 Lora interface
- 1 USB-C connector for power
- interfaces to flash

## 6. System block diagram

Later

## 7. Design constraints

- PCB layers : up to 4.
- IEMI/EMC requirements : no
- Safety certifications : no
- Standard certifications : no
- ESD protection : yes when required.

## 8. Power Architecture

Nothing special to define at this stage for this project.

## 9. Firmware / software considerations

- Existing projects were developped using ESP32_WROOM and STM32H755.
- The wifi stack is using MQTT.

## 10. Testing & validation

- All signals should be accessible for probing.
- All power lines should be easily accessible.
- Debug bus should be easily observable.

## 11. Deliverables

- Component choice
- Specification
- Schematic
- PCB layout
- BOM
- Gerber files
- Firmware

## 12. Manufacturing and Assembling

- Manufacturing : external
- Assembling : [TBD] do we assemble in the lab or not?

## 13. Questions

- The TELLUS Network Sensor Solutions board has a lot more features than what is required in [Motivation](#1-motivations). Please tell me if I should keep some features. Default answer is no.
  - Microphone - do not keep
  - Temperature and humidity sensor - do not keep
  - Connector for a PM sensor (MOLEX-53261-0871) - do not keep
  - User button - do not keep
  - Termal probe - do not keep
  - E sim interface - do not keep
  - GNSS antenna - do not keep
  - Main antenna - do not keep
  - BG77 module - do not keep
  - GPS module - do not keep
  - GPS antenna - do not keep

- Do we keep a microSDCard connector?
- Are we planning to assemble the PCB in the lab or not?
- What is the confidentiality level of the project? Can it be open-source when finished?

## Appendix

**Why a measure every 10s?**
Because realtime operation is required for many applications and air evolution is slow enough to have a frequency of 0.1Hz.

**Why can't we process the data on the cloud?**
Because the project aims to target a wide range of application, some of them might not be linked to a cloud and might require immediate and local notification if a chemical is detected (alarm, lights, ...)
