.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -927349615
xor al, dil
xor dil, bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
test bl, -9
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
or dl, dil
btc ax, 12
and cl, -19
xor dil, sil
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
