.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, -112
or rdi, 68
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
and si, 100
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rcx + rax + 95]
and bl, 124
test rdi, -1846965753
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 53
bts bx, si
cmovb di, ax
cmovp rbx, rax
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
mov sil, bl
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
sbb dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
