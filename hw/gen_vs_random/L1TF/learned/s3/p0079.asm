.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
btr di, bx
xor cx, 113
xor cl, 89
test rdi, rdx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
xor dil, al
not ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
