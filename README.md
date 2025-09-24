# Closed-Loop Motor Control with Embedded System

This repository presents my work on closed-loop DC motor control using a PIC16F46K22 microcontroller.  
The project combines hardware design and embedded C programming, implementing a PI controller to regulate motor speed via PWM.

The work was originally developed as coursework and is adapted into a GitHub research-style project to showcase embedded systems, motor control, and hardware/software co-design skills.

---

## Repository Structure

```
motor-control-closed-loop/
├── README.md
├── LICENSE
├── .gitignore
├── report/
│   └── ClosedLoopMotorControl.pdf   # Full report (anonymized version)
├── figures/                         # Block diagrams, waveforms, oscilloscope captures
├── code/                            # Embedded C code for PIC16F46K22
└── simulations/                     # Proteus / MATLAB Simulink models
```

---

## Project Overview

The goal of this project is to design and implement a closed-loop speed control system for a DC motor.  

- Microcontroller: PIC16F46K22  
- Control Method: Proportional-Integral (PI) controller  
- Actuation: PWM for motor driver  
- Feedback: Speed sensor (tachometer / encoder)  

---

## Key Features

1. Hardware Design
   - Motor driver interface
   - Feedback sensor integration
   - Proteus-based schematic

2. Embedded Software (C)
   - PWM generation using MCU timers
   - PI controller implementation
   - Serial monitoring (optional)

3. Closed-Loop Control
   - Open-loop vs closed-loop comparison
   - Real-time speed regulation
   - Performance under load variation

---

## Example Figures


- Block diagram of control system  
- Proteus schematic of motor driver + MCU  
- Motor speed response (open vs closed loop)  
- PWM waveform screenshots  

---

## Example Code Snippet

```c
// Simple PI control loop for motor speed
error = setpoint - measured_speed;
integral += error;
control_signal = Kp * error + Ki * integral;

// Update PWM duty cycle
PWM_Duty = control_signal;
```

---

## How to Use

1. Open the `report/ClosedLoopMotorControl.pdf` for the full documentation.  
2. Check the `code/` folder for PIC C code.  
3. Run the schematic in `simulations/` (Proteus/Simulink).  
4. Compare open-loop vs closed-loop results using oscilloscope captures in `figures/`.  

---

## Notes

- Original work prepared as coursework (academic references removed).  
- Sensitive information (student ID, academic integrity declaration) has been anonymized.  
- This repository is intended as a portfolio project to demonstrate embedded motor control skills.  

---

## Author

**Jinyan Yang** — MSc in Renewable Energy Systems
