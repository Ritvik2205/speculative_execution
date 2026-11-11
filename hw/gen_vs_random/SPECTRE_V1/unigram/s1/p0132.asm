.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, 28
xor sil, 1
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
test ebx, 73
lea ax, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 53
lea rcx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], si
cmovnz rax, rsi
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
cmp bl, bl
dec rbx
imul rsi, rdx
and rbx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
