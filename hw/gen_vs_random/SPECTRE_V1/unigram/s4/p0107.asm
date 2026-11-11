.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rax]
mov rdi, rbx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
add bl, 39 # instrumentation
cmovo ecx, edx
bt di, 157
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 76
cmovns rdx, rsi
sbb cl, 105
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], bx
adc cx, -30
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], al
add cl, -56 # instrumentation
sbb rdi, 5
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 28
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
