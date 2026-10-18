# Plug-in Hybrid Electric Vehicle (Control System and Battery Charger)
The motor and position control system of a PHEV and its battery charger has been modeled in MatLab/simulink. The battery charger connects to 220V (AC), and gives a steady output of 48-50V (DC). PHEV has modes of operation: engine only, motor only, hybrid (engine and motor). Motor mode operates between 0-6500 RPM, hybrid between 6200-6500 RPM, and engine beyond 6500 RPM. The top speed of the motor through both modes reaches round 85 kmph.  

## System design
`Control System: Engine-motor subsystem switching controlled through Function blocks, PID loops and Stateflow diagram` 
`Battery Charger: CV and CI controlled through PI, PD loops. Buck Converter controlled through PID Controller to assist in dynamic charging. System tested at 50% SOC.`

## How to run
Requires MATLAB/simulink (tested on R2022b).
- **Battery Charger:** run `batterychargerfyp` (System simulates for one second).
- **PHEV:** run `control` for simulink, and `motorswitching` for mode switching visualization.

## Limitations and future work
- Battery charger can be fine-tuned to refine dynamic charging.
- Current control system handles mode switching at a very basic level, enhanced modelling and analysis could refine system performance for electric vehicle to operate at higher speeds.
