.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
and rdx, 25
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
and ax, 13090
or bl, 13
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or dl, dil
or rsi, 24
xor sil, dil
and dil, -62
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
test bl, -9
xor al, dl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and bl, dl
lea rdx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
