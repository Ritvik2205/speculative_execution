.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl edx, edx
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
and al, dl
cmovnp rax, rdx
cmovnl rbx, rbx
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 12
and rcx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rsi]
and ax, bx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rsi
cmovs ax, di
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
test cl, bl
not dx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
xor dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
