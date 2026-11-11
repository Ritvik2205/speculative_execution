.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 48
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
lea rsi, qword ptr [rdi + rdx + 47]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
sub bl, dil
cmp ecx, 96
xor ecx, 67
bt edx, edi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
sbb al, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
