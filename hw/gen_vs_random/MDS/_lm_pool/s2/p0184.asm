.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdx]
test dl, -85
and al, dil
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
or ax, -7150
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor cl, 83
and cl, al
and cx, -2
or bl, -125
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
test sil, 17
and cl, bl
and eax, 943733866
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
