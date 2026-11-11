.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 10
cmp eax, 100
jmp .bb_0.1
.bb_0.1:
sbb dl, 127
sbb dil, bl
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
lea cx, qword ptr [rdi + rax + 40]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
xor dl, al
dec dil
add al, bl
sbb bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
