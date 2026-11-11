.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rax, 452940266
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
xor cx, -18
and cl, bl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
xor al, 34
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
xor bl, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
