.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx
or dl, 41
xor dl, 71
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -24
lea dx, qword ptr [rdx + rax + 9274]
sbb cl, cl
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
lea cx, qword ptr [rbx + rdx + 50177]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 720259356
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rax
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], dx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
