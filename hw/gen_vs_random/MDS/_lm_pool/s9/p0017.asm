.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 27170
not sil
xor dl, -19
test bl, cl
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
xor al, dil
btc edi, 230
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
or al, -24
and dl, -73
and dl, -73
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
xor dil, -70
test dx, 16353
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
