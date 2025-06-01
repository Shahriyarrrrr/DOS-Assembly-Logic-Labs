# DOS-Assembly-Logic-Labs
Solutions to 8086 assembly language lab exercises focusing on bit manipulation, logical operations, and basic DOS I/O. Includes tasks like clearing MSB, inverting bits, and setting specific bits of a byte.

# 8086 Assembly Language Lab Tasks

A collection of assembly language programs written for the 8086 microprocessor, designed to solve common lab tasks encountered in a Computer Organization and Architecture curriculum. These programs demonstrate fundamental concepts such as bit manipulation using logical instructions and basic input/output operations under a DOS environment.

## Lab Tasks Overview

This repository contains solutions for the following lab tasks:

### Task 1: Clear Most Significant Bit (MSB)
* **Description:** Takes a byte as input from the user and clears its Most Significant Bit (bit 7) using a logical `AND` instruction. The modified byte is then displayed.
* **Filename:** `lab1.asm` (Suggested name)
* **Example:**
    * Input Byte Value (e.g., user types 'C' then '3'): `C3h` (Binary: `11000011b`)
    * Output Byte Value (displayed as hex): `43h` (Binary: `01000011b`)

### Task 2: Invert All Bits
* **Description:** Takes a byte as input from the user and inverts all of its bits using the `NOT` instruction (one's complement). The inverted byte is then displayed.
* **Filename:** `lab2.asm` (Suggested name)
* **Example:**
    * Input Byte Value (e.g., user types '5' then '5'): `55h` (Binary: `01010101b`)
    * Output Byte Value (displayed as hex): `AAh` (Binary: `10101010b`)

### Task 3: Set a Specific Bit
* **Description:** Takes a byte as input from the user and sets its bit 2 to '1' using a logical `OR` instruction, without changing any other bits. The modified byte is then displayed as its ASCII character representation followed by its binary value in parentheses.
* **Filename:** `lab3.asm` (Suggested name)
* **Example (based on your provided image):**
    * Input Byte Value (e.g., user types '4' then '1' to represent 41h): `41h` (ASCII 'A', Decimal 65, Binary `01000001b`)
    * Output: `E (01000101b)` (The byte becomes 45h, which is ASCII 'E')

## Environment & Tools

* **Language:** 8086 Assembly Language
* **Environment:** MS-DOS or a DOS emulator like DOSBox.
* **Assembler:** [Specify your assembler, e.g., MASM, TASM, NASM. Note: The provided code syntax aligns well with MASM/TASM.]
* **Linker:** [Specify your linker, e.g., LINK (for MASM), TLINK (for TASM)]

## Building and Running the Programs

1.  **Assemble:**
    Use your assembler to create an object file (`.obj`) from the assembly source file (`.asm`).
    For example (using MASM):
    ```shell
    MASM labX.asm;
    ```
    (Replace `labX.asm` with the actual filename like `lab1.asm`)

2.  **Link:**
    Use your linker to create an executable file (`.exe`) from the object file.
    For example (using LINK for MASM):
    ```shell
    LINK labX.obj;
    ```

3.  **Run:**
    Execute the program in a DOS environment.
    ```shell
    labX.exe
    ```

## Notes
* The input for these programs (where a byte is received) is typically handled by the user entering two hexadecimal characters which are then converted by the program into a single byte value. For Task 3, if testing with the value of 'A' (41h), you would type '4' then '1'.
* The output for Task 1 and 2 is the hexadecimal representation of the byte.
* The output for Task 3 is specifically formatted as `Character (BinaryRepresentation)`.

---
These lab tasks are based on exercises from a Computer Organization and Architecture course, utilizing information from provided lecture slides and the textbook "Assembly Language Programming and Organization of the IBM PC" by Ytha Yu and Charles Marut.
