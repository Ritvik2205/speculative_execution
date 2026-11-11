.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
add al, 56
xor dl, cl
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and dil, -22
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
