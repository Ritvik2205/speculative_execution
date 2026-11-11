.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
xor cl, sil
test cl, dl
bts rdi, 130
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor cl, dil
or rbx, -72
test bl, dil
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
test bl, -114
and rsi, 69
and al, sil
or dil, -78
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
