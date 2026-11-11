.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, sil
xor bl, 67
and al, 14
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
or sil, dl
xor sil, -15
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
or al, -75
xor bx, 44
xor al, -89
xor al, bl
xor sil, 94
or dil, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
or al, dil
cmovnp rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
