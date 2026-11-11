.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 83
test al, 66
test esi, 425331143
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
test rcx, -613256812
and bl, bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rax], si
and sil, -9
test ecx, -1843375753
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
test eax, -675944960
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and dl, -73
test eax, 158941032
test al, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
