.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -78
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 97
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
or al, bl
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and bl, 68
and cx, -2
or bl, bl
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and dl, dl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
test dil, -51
test al, sil
and di, 91
and cl, 79
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
