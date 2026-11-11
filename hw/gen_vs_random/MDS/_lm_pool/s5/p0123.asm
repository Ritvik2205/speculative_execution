.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
or bl, al
or dil, -41
xor cl, 83
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rax, -2058103810
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
xor sil, -15
test bx, 4954
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor rdi, -9
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
and rdx, 98
or dil, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
