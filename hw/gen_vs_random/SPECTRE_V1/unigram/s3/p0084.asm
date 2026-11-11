.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
add dl, -26 # instrumentation
adc ecx, edx
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 83
lea rdx, qword ptr [rbx + rdx + 48]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
dec rdx
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
add bl, 40 # instrumentation
lea bx, qword ptr [rdx + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], ebx
add dil, -47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
setnz bl
cmovno rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
