.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
sub dil, bl
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test dil, -126
or al, sil
or al, -2
jmp .bb_0.2
.bb_0.2:
test al, -32
jmp .bb_0.3
.bb_0.3:
or bl, sil
or eax, 287965578
and dl, 73
xor ax, 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
