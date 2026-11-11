.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
xor al, bl
test cl, sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 61
xor al, -26
or al, -75
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], esi
and al, -54
and esi, 100
xor dil, 8
or al, 54
test rax, 1214712583
and al, -54
lea rcx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
