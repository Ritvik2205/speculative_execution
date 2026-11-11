.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -77
xor dl, 71
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
sbb cl, cl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dil
or dl, 41
lea cx, qword ptr [rbx + rdx + 50177]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx
lea dx, qword ptr [rdx + rax + 9274]
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rax
lea ax, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 354197880
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], dx
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
setns cl
sbb al, 118
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
lea rcx, qword ptr [rcx + rdx]
lea rdx, qword ptr [rcx + rcx]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
