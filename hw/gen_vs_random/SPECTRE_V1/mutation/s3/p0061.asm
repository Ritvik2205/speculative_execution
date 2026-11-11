.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
test rdi, 1238697264
sets cl
not rbx
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
xor al, -64
adc bl, bl
neg ax
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -106
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 19
sbb rax, 1380680934
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 11407425
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
