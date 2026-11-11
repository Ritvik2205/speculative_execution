.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
lea rsi, qword ptr [rdx + rcx + 46]
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 53
and rsi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rsi]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -5 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 69
and rax, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rax]
add sil, al
and rbx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
add cl, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edx
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rcx], bx
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
lea rsi, qword ptr [rdx + rdx + 2]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
