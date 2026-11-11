.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, ax
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 92
xor rbx, 89
or rcx, -17
xor dil, 124
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
jmp .bb_0.1
.bb_0.1:
test dl, -95
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 91
or al, -61
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
