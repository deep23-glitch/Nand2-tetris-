# Capstone: Make the Computer Draw a Box

Nand to Tetris – I (ETCCNT301), School of Engineering & Technology, K.R. Mangalam University

- **Name:** Deep Saha
- **Roll no.:** 2501010058
- **Section:** C
- **K:** 58

## My box (K = 58)

| Item | Value |
|---|---|
| Start row | 58 |
| Height | 20 rows (rows 58-77) |
| Width | 16 × ((58 mod 4) + 1) = 48 pixels (3 words) |
| First word address | 16384 + 32 × 58 = 18240 |

## Assembler extra feature (K mod 3 = 1)

For a wrong line, `assembler.py` prints a clear message with the line number
(e.g. `Line 4: invalid computation 'D+Q'`) instead of crashing. All errors are
collected and printed, and no `.hack` file is written if any error is found.
Try it with `python assembler.py tests/Bad.asm`.

## Contents

| Path | What it is |
|---|---|
| `hdl/` | Part A: `CPU.hdl`, `Memory.hdl`, `Computer.hdl` |
| `assembler.py` | Part B: two-pass Hack assembler in Python |
| `Box.asm`, `Box.hack` | Part C: the box program and its binary (made with `assembler.py`) |
| `tests/` | Add, Max, Rect, Pong (`.asm` and my `.hack`), plus `Bad.asm` for the error feature |
| `screenshots/assembler/` | Comparison with the official assembler (Add, Max, Rect, Pong) and the error-message run |
| `screenshots/hardware/` | Official test results for CPU, ComputerAdd, ComputerMax, ComputerRect |

## Usage

    python assembler.py Prog.asm      # writes Prog.hack next to Prog.asm

On Windows use `py` if `python` is not found.

## Testing

**Part B (assembler).** `Add`, `Max`, `Rect` and `Pong` were each assembled with
`assembler.py` and compared with the official output in the Nand to Tetris web
IDE assembler page (Compare Code panel): "Comparison successful" for all four.

**Part A (hardware).** My own `CPU.hdl`, `Computer.hdl` and `Memory.hdl` (Builtin
switch off) were run in the web IDE hardware simulator:

| Test | Result | Screenshot |
|---|---|---|
| CPU | Simulation successful | `screenshots/hardware/CPU_test_passed.png` |
| ComputerAdd | Simulation successful | `screenshots/hardware/ComputerAdd_test_passed.png` |
| ComputerMax | Simulation successful | `screenshots/hardware/ComputerMax_test_passed.png` |
| ComputerRect | Simulation successful | `screenshots/hardware/ComputerRect_test_passed.png` |
| Memory | screenshot to be added | `screenshots/hardware/Memory_test_passed.png` |

The CPU and Computer chips use the simulator's built-in parts (ALU, ARegister,
DRegister, PC, ROM32K, RAM16K, Screen, Keyboard and the basic gates) as their
building blocks.

## Still to add

- Memory test screenshot (`screenshots/hardware/Memory_test_passed.png`)
- Screenshot of `Box.hack` running in the CPU Emulator (`screenshots/box/`)
