.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, dx
and ax, -10351
xor rdx, -59
or dil, 16
or ax, -7150
jmp .bb_0.1
.bb_0.1:
or esi, eax
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
test dil, -51
btr rax, 56
bts di, dx
and dl, -73
test bl, dil
test edi, -1252846009
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
