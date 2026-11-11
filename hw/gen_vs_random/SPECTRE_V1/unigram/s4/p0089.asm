.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
adc sil, bl
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 27
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
lea bx, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
lea rdx, qword ptr [rcx + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 15
test rcx, -1420345926
sbb al, -107
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], cx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 71
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
