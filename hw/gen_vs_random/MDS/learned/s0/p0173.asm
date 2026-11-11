.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and dl, dil
and bl, 68
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or bl, 43
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
xor cl, -13
xor sil, -126
test al, dil
xor bl, -27
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
