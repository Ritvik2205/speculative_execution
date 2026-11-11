.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, 571592471
test esi, 1857129931
and al, 35
xor dl, dil
xor sil, -14
and cl, -19
xor dl, 34
test sil, 41
and sil, -69
and rcx, 107
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
or dl, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
