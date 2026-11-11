.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and cx, -8
xor rax, -91
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
xor al, -19
or al, 24
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
test dil, -51
or al, 16
xor cl, sil
and dx, 3
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
