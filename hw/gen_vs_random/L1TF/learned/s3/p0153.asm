.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
lea rax, qword ptr [rcx + rdi + 50]
and rsi, 11
xor al, 38
and dl, dil
test sil, 29
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
add si, -5
add dil, -7
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rcx]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
