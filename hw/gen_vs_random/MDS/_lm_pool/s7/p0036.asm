.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
or dil, 16
or cl, dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
test dil, dil
or cl, 39
test cl, 62
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and al, 82
or dl, 51
test dil, dl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
xor sil, 27
jmp .bb_0.2
.bb_0.2:
bts rsi, 205
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
